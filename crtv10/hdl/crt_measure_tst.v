//---------------------------------------------------------------------
//
// crt_measure_tst
//
//---------------------------------------------------------------------


module crt_measure_test;

    reg             clk, _reset;
    wire            med_res;
    reg     [7:0]   dbi, mdi;
    reg             ds, as, _wr;
    wire    [3:0]   pixel;
	wire  	[7:0]	md;
	wire	[19:0]  ma;
	wire    [7:0]	db;
    reg     [3:0]   a, b;
    reg             hsync, vsync;
    wire            extsyncon;
    
    assign extsyncon = 1;
    assign med_res 	 = 1;  
	assign db = dbi;
    assign md = mdi;
    crt_sys ob_crt_sys( clk, _reset, db, ds, as, _wr, ma, md,  _mcs, _mrd, _mwr, med_res, pixel, sync, a, b, hsync, vsync, extsyncon, int);

    initial begin
        mdi <= 8'bzzzz_zzzz;
    end

    initial begin
        clk = 1'b0;
        forever clk = #33.9 ~clk;
    end

    initial begin
        _reset = 0;
        #20 _reset = 1;
    end

    initial begin
        dbi = 8'bzzzz_zzzz;
        #200  dbi = 8'b0000_0000;    // byte 1
        #400  dbi = 8'b0000_0000;    // byte 2
        #400  dbi = 8'b0110_0000;    // byte 3
        #400  dbi = 8'bzzzz_zzzz;

    end

    initial begin
        as = 0;
        #200  as = 1;    // byte 1
        #200  as = 0;
        #200  as = 1;    // byte 2
        #200  as = 0;
        #200  as = 1;    // byte 3
        #200  as = 0;
        forever as = #200 ~as;
    end

    initial begin
        _wr = 1;
        #200  _wr = 0;    // byte 1
        #200  _wr = 1;
        #200  _wr = 0;    // byte 2
        #200  _wr = 1;
        #200  _wr = 0;    // byte 3
        #200  _wr = 1;
    end

    initial begin
        ds = 0;
    end

    initial begin
        hsync = 0;
        forever 
        begin 
            #30000 hsync = 1; 
            #1000  hsync = 0;
        end
    end


    initial begin
        vsync = 1;
        forever
        begin 
            #10000000 vsync = 0; 
            #150000   vsync = 1;
        end
    end
endmodule