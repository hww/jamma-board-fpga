//---------------------------------------------------------------------
//
//
// crt_sys
//
//
//---------------------------------------------------------------------

module crt_sys (clk, _reset, db, ds, as, _wr, ma, md,  _mcs, _mrd, _mwr, med_res, pixel, csync, a, b, hsync_in, vsync_in, extsyncon, int);

    // INTERFACE

    input           clk, _reset;        // Clock signals
    inout   [7:0]   db;                 // CPU data bus
    input           ds, as, _wr;        // CPU control bus
    input           med_res;            // Medium resolution on
    output  [3:0]   pixel;              // Pixel data output
    output  [19:0]  ma;                 // Memory address bus
    inout   [7:0]   md;                 // Memory data bus
    output          _mcs, _mrd, _mwr;   // Memory control bus
    output          csync;              // Video syncro signal
    input   [3:0]   a,b;                // Quads timers inputs
    input           hsync_in, vsync_in; // Measurements signals
    input           extsyncon;          // external sync  
    output          int;                // interrupt

    // VARIABLES

    wire            reset;              // Reset 
    wire            pxclk;              // Pixel clock  
    wire            video_data_latch;   // Load video data
    wire    [7:0]   video_data_in;      // Memory to video data
    wire            href;               // Screen time
	wire	[9:0]	hcnt;               // Horisontal counter
	wire	[8:0]	vcnt;               // Vertical counter
	wire 	[7:0] 	cpu_to_mem,         // Data path
                    mem_to_cpu;
   	wire 	[19:0] 	cpu_address;        // Address path
	wire 	[6:0] 	page;               // Page number path
    wire            mem_cs, mem_rd,     // Memory control bus 
                    mem_wr;     
    wire            bus_dir_out;        // Direction of memory data bus
    wire            db_dir_out;         // Cpu bus direction out
	wire			wr;
	wire			hsync, vsync;
    wire            onemks;             // 1 mhz
    wire            mem_hold;           // Hold video memory
    wire            excsync;            // external composite sync
    wire            intcsync;           // internal csync
	wire 			extnoice;			// external noice

    // BUS CONVERTER

    assign reset    = ~_reset;
    assign wr       = ~_wr;
    assign intcsync = (hsync ^ vsync);
    assign csync    = extsyncon ? excsync : intcsync;
    assign int      =  vsync;

    // BE CAREFUL THIS IS SECURITY PART

    assign extnoice = vcnt[0] ^ vcnt[5] ^ hcnt[0] ^ hcnt[5] ^ md[3] ^ md[5] ^ hsync_in ^ vsync_in;

    // CLOCK SUBSYSTEM

    crt_clock ob_clock    ( clk, reset, pxclk,  med_res, onemks );

    // PIXEL SHIFT SUBSYSTEM
        
    crt_pix   ob_crt_pix  ( clk, reset, pxclk,  video_data_in, 
                                                video_data_latch, 
                                                ~href, 
                                                pixel );

    // CRT SUBSYSTEM

    crt_scan  ob_crt_scan ( clk, reset, pxclk,  med_res, 
                                                video_data_latch, 
                                                hcnt, 
                                                vcnt, 
                                                href, 
                                                hsync, 
                                                vsync);

    // CPU BUS SUBSYSTEM

    crt_cpu   ob_crt_cpu  ( clk, reset,         db, 
                                                as, 
                                                ds, 
                                                wr, 
                                                mem_to_cpu, 
                                                cpu_to_mem, 
                                                cpu_address, 
                                                mem_hold, 
                                                page,
                                                onemks,
                                                a,
                                                b,
												hsync_in, 
												vsync_in,
												extnoice);

    // MEMORY BUS SUBSYSTEM

    crt_mem   ob_crt_mem  ( clk, reset,         video_data_latch, 
                                                href, 
                                                { page, vcnt[5:0], hcnt[7:1] }, 
                                                video_data_in, 
                                                cpu_address, 
                                                cpu_to_mem, 
                                                mem_to_cpu,
                                                mem_hold, 
                                                wr, 
                                                ds,
                                                md, 
                                                ma, 
                                                _mcs, 
                                                _mwr, 
                                                _mrd);

    // HSYNC & VSYNC CONVERTER

    crt_syncsinv ob_crt_syncsinv(clk, reset, onemks, hsync_in, vsync_in, excsync);

endmodule