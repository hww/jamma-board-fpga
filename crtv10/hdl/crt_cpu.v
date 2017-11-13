//---------------------------------------------------------------------
//
//
//  crt_cpu
//
//
//---------------------------------------------------------------------

// This part used for CPU interface. It has db eght-bits data bus, 
// and 'as' - address strobe, 'ds' - data strobe, 'wr' - wr control 
// signals.
//
// Basicly two data type can be used in CRT. Address of data, and the 
// data values. The address part can be changed when we set 'as' & 'wr' 
// to '1'. Data can be changed by 'ds' & 'wr' signals. But data reading
// only with 'ds' signal.
//
// The addres has three parts, lo-byte, med-byte & hi-byte. The hi-byte
// use only first four bits. But last bit is 'MemHold' used for holding 
// memory by CPU. The CPU should write and read memory only when 
// 'MemHold' is one.
//
// When 'MemHold' is zero, CPU can write information to CRT, but it be 
// placed to 'Page' register. This register change video frame position 
// in the video memory. 

module crt_cpu (clk, reset, db, as, ds, wr, dbi, dbo, da, mem_hold, page, onemks, a, b, testh, testv, extnoice);

    // clock signals

    input   clk, reset;              

    // cpu signals

    inout   [7:0]   db;                     // MCU data bus input
    input           as, ds, wr;             // MCU bus controls

    // memory signals

    output  [7:0]   dbo;                    // Internal synstem's data bus
    input   [7:0]   dbi;
    output  [19:0]  da;                     // Internal synstem's addres bus
    output          mem_hold;               // Memory used by cpu
	output	[6:0]	page;                   // Video page number
    input           onemks;                 // 1mHz 
  	input	[3:0]	a, b;			        // Quad timer inputs
    input           testh, testv;           // Measured signals
    input           extnoice;               // external noice
    
    // special staff 

    reg     [21:0]  addr_reg;               // register whitch hold spi data
    reg     [1:0]   reg_select;             // this register select whitch part of addres changed
    reg     [1:0]   ase, dse;               // sync signals generator
    wire            as_ena, ds_ena, as_enaw, as_end;
    wire            inc, addr_ena;
    reg     [6:0]   page_reg;               // video page number
    wire            measure_mode;           // measure mode hsync/vsync
    wire            measure;                // Measurement time signal

    //  ADRESS & DATA STROBE
    //
    //  Create signals for changing address and data register

    always @ (posedge reset or posedge clk)
        if (reset)
            begin
                ase <= 2'b00;
                dse <= 2'b00;
            end
        else 
            begin
                ase <= {ase[0], as};
                dse <= {dse[0], ds};
            end                
    
    assign  as_ena = ase[0] & ~ase[1];      // made short strobe when setup addres 
    assign  as_enaw= as_ena & wr;           // made short strobe when setup addres 
    assign  ds_ena = dse[0] & ~dse[1];      // made short strobe when setup data
    assign  inc    = dse[1] & ~dse[0];      // made short shtobe when finish data access
    assign  as_end = ase[1] & ~ase[0];      // made short shtobe when finish address access
    assign  addr_ena = inc | as_ena;        // change address register

    //  ADDRES REGISTER SWITCHER
    //
    //  Increment every address register access. But reset to zero
    //  when data register aceess.
    
    always @ (posedge reset or posedge clk)
        if (reset)
            reg_select <= 2'b00;
        else
        begin
        if (as_end)
            reg_select <= reg_select + 1;
        else if (ds_ena)
            reg_select <= 2'b00;
        end

    // ADDRESS REGISTER
    //
    //  Contain address of memory. Change when we write to 
    //  address register. After every access to data, it
    //  should be incremented by 1 (but only low 8 bits).

    always @ (posedge reset or posedge clk)
        if (reset)
            addr_reg <= 22'b00_0000_0000_0000_0000_0000;
        else if (addr_ena)          // access with writing to address-reg. or any data-access 
            if (inc)                // data access
                addr_reg[7:0] <= addr_reg[7:0] + 1;    
            else 
            begin
                case (reg_select)   // access with writing to address-reg. 
                    2'b00:  addr_reg[7:0]   <= db;
                    2'b01:  addr_reg[15:8]  <= db;
                    2'b10:  addr_reg[21:16] <= {db[7:6], db[3:0]};
                endcase
            end
    
    assign  da= addr_reg[19:0];
    assign  mem_hold     = addr_reg[21];
    assign  measure_mode = addr_reg[20];

    //  PAGE REGISTER
    //
    //  Access to this register only when memory is not hold.
    //  This register can change page number. And change mode
    //  of measurement.

    always @ (posedge reset or posedge clk)
        if (reset)
            page_reg <= 7'b000_0000;
        else if (addr_ena)
            case (reg_select)   // access with writing to address-reg. 
                2'b11:  page_reg  <= db[6:0];
            endcase         
    
	assign page         = page_reg;

    // TRACKBAL LOGIC

    wire    [3:0]   qA,qB,qC,qD;

    quad_tmr qtmrA( clk, reset, onemks, a[0], b[0], qA);
    quad_tmr qtmrB( clk, reset, onemks, a[1], b[1], qB);
    quad_tmr qtmrC( clk, reset, onemks, a[2], b[2], qC);
    quad_tmr qtmrD( clk, reset, onemks, a[3], b[3], qD);

    // DATA PATH

    reg     [7:0]   dboreg;
    wire            db_dir_out;
    wire    [9:0]   test_freq;
    wire            test;
    wire            next_cookie;
    assign          next_cookie = ~wr & as_ena & (reg_select == 2'b10);

    crt_cookie      obj_crt_cookie(clk, reset, next_cookie, extnoice, test);

    assign  db_dir_out = (as | ds) & ~wr;
    assign  db  = db_dir_out ? dboreg : 8'bzzzz_zzzz;
    assign  dbo = db;

    always @ (ds or reg_select or qA or qB or qC or qD or dbi or test_freq or measure or mem_hold or measure_mode or test)
		if(ds)
			dboreg <= dbi;
		else 
			case (reg_select)
				4'b00 :	dboreg <=  {qB, qA};        
				4'b01 :	dboreg <=  {qD, qC};
				4'b10 :	dboreg <=  { mem_hold, measure_mode, measure,  test, 3'b00, test_freq[9:8]};
				4'b11 :	dboreg <=  test_freq[7:0];
			endcase

    // MEASUREMENT
    wire    start_measure;
    assign start_measure = as_enaw & (reg_select == 2'b10) & db[5];
    crt_measure crt_measure_obj ( clk, reset, start_measure, measure_mode, testh, testv, measure, test_freq);

endmodule