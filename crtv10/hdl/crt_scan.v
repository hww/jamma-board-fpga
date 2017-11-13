//---------------------------------------------------------------------
//
//  crt_scan
//
//  This part making of sync seqence. It should be divided by 
//  two if select low resolution. Basicly it use 14.7456 mhz, 
//  but in a low res frequence should be 7.3728
//
//---------------------------------------------------------------------


module crt_scan (clk, reset, pxclk, med_res, video_data_latch, hcnt, vcnt, href, hsync, vsync);

    input           clk, reset;         // clock and reset
    input           pxclk;              // pixel clock
    input           med_res;            // medium resolution
    output          video_data_latch;   // latch video data
    
    output  [9:0]   hcnt;               // horisontal counter
    output  [8:0]   vcnt;               // vertical counter
	output			href;				// visible screen
    output          hsync;              // horisontal sync
    output          vsync;              // vertical sync

    reg     [9:0]   hreg;               // horisontal counter
    reg     [8:0]   vreg;               // vertical counter
	reg				hsreg;
	reg				vsreg;

    wire            eof_frame, eof_line;
    wire            hsync_beg,   hsync_end;
    wire            vsync_beg,   vsync_end;

    // PIXEL PROCESSOR SIGNALS

    assign  video_data_latch =  hcnt[0];

    // PIXEL ADDERESS SINGNAL

    assign  hcnt = hreg;
    assign  vcnt = vreg;

    // VISIBLE FRAME AREA SIGNAL

    assign  href = ~(hreg[8] | hreg[9]) & ~(vreg[6] | vreg[7] | vreg[8]);

    // CHANGE MODE

    assign eof_line  = med_res ? (10'd587 == hcnt) : (10'd466 == hcnt);
    assign hsync_beg = med_res ? (10'd378 == hcnt) : (10'd327 == hcnt);
    assign hsync_end = med_res ? (10'd421 == hcnt) : (10'd361 == hcnt);

    assign eof_frame = med_res ? (9'd411 == vcnt) : (9'd261 == vcnt);
    assign vsync_beg = med_res ? (9'd233 == vcnt) : (9'd158 == vcnt);
    assign vsync_end = med_res ? (9'd242 == vcnt) : (9'd167 == vcnt);


    // HORIZONTAL COUNTER

    always @ (posedge reset or posedge clk)
        if (reset)
            hreg <= 10'b00_0000_0000;
        else if (pxclk)
           	if (eof_line)
	            	hreg <= 10'b00_0000_0000;
   			else
                    hreg <= hreg + 1;


    // VERTICAL COUNTER

    always @ (posedge reset or posedge clk)
        if (reset)
            vreg <= 8'b0000_0000;
        else if (pxclk)
            if (eof_line)
            	if (eof_frame)
		            	vreg <= 9'b0_0000_0000;
    			else
                        vreg <= vreg + 1;


    // HSYNC GENERATOR

	assign hsync = hsreg;

    always @ (posedge reset or posedge clk)
        if (reset)
            hsreg <= 1'b0;
        else if (pxclk)
            if (hsync_beg)
            	hsreg <= 1'b1;
  			else if (hsync_end)
                hsreg <= 1'b0;
        
    // VSYNC GENERATOR

	assign vsync = vsreg;

    always @ (posedge reset or posedge clk)
        if (reset)
            vsreg <= 1'b0;
        else if (pxclk)
            if (eof_line)
                if (vsync_beg)
                	vsreg <= 1'b1;
  			    else if (vsync_end)
                    vsreg <= 1'b0;

endmodule
