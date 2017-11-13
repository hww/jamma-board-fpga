//------------------------------------------------------------------------------
//
// VGA Input system
//
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Failing front extractor
//------------------------------------------------------------------------------

module myFAILINGEX (clk, reset, ena, in, out);

	input	clk;				// clock signal
	input	reset;				// reset to zero
	input	ena;				// enable counter
	input	in;					// data input
	output	out;				// front output

	reg		[1:0] rise;

	always @ (posedge clk or posedge reset) 
	begin
		if(reset)
			rise <= 0;
		else if (ena)
			rise <= {rise[0], in};
	end
	
	assign out	= rise[1] & ~rise[0];

endmodule

//------------------------------------------------------------------------------
//
//  This component is VGA pixel counter. One take vsync and 
//  hsync sygnals and count try all lines, another thing is 
//  going try all memory address by clk signal.
//
//------------------------------------------------------------------------------

module vga ( clk, reset, video, ivsync, ihsync, dVga, aVga, wrVga, wrVgaReq, notVga, lines350 );
    
    // Pins
    input   clk;                    // 25 mhz pixel clock
    input   reset;                  // reset
    input   ivsync;           		// input horisontal and vertical sync
    input	ihsync;					// input shrt h sync signal
	output  wrVga;                  // signal for saving pixels to memory 
    input   wrVgaReq;               // finish write data to memory
    input   video;                  // video input
    output  [7:0] dVga;             // output video data
    output  [15:0] aVga;            // output of address
	output	notVga;
	output	lines350;

    // Variables
    reg     [6:0] h;                // horizontal address 0-127 because only 100 column max
    reg     [8:0] v;                // vertical address 0-511 because maximum is 525 lines
    reg     [3:0] pixel;            // pixel counter
    reg     [7:0] shifter;          // video shifter
	reg		notVgaSig;				// this signal is no VGA compatible
	reg		lines350Sig;			// this signal is 350 lines compatible

//------------------------------------------------------------------------------
//  Two front extractors
//------------------------------------------------------------------------------

wire hsync;
wire vsync;

myFAILINGEX vFrontExt(clk, reset, 1'b1, ivsync, vsync);	// get failing edge  
myFAILINGEX hFrontExt(clk, reset, 1'b1, ihsync, hsync);	// get failing edge

//------------------------------------------------------------------------------
//  Pixel counter
//------------------------------------------------------------------------------

always @ ( posedge clk or posedge hsync)        
begin
    if (hsync)                                  // only after firs front of hsync
        pixel <= 0;                             // pixel counter is 0
    else 
        pixel <= pixel + 1;                     // goto next pixel
end

reg pixel8;

always @ ( posedge clk or posedge hsync)        // generatin signal every 8th pixel
begin
    if (hsync)                                  
    	pixel8 <= 0;                            
    else 
		pixel8 <= (pixel == 6);
end

//------------------------------------------------------------------------------
// Delay after hsync and before visible line 
//------------------------------------------------------------------------------

//  40 pixels back porch
//  40/8 => 5 characters

reg [2:0] hdelay;
reg line;

always @ ( posedge clk or posedge reset)
begin
    if (reset)
        hdelay <= 3'd5;							// filter now delay time
    else if (hsync)
            hdelay <= 3'd5;                 	// then reset filer by hsyncEx 
    else if (pixel8)
        if (hdelay != 3'd0)                   	// if delay is finish
            hdelay <= hdelay - 1;             	// decrement filter
end

//------------------------------------------------------------------------------
// Delay after vsync and before visible frame 
//------------------------------------------------------------------------------

//  25 lines back porch (28, 54)

reg [4:0] vdelay;
reg frame;

always @ ( posedge clk or posedge reset)
begin
    if (reset)
        vdelay  <= 5'd25;
    else if (vsync)
        vdelay  <= 5'd25;                       // then reset filer by hsyncEx 
    else if (hsync)
        if (vdelay != 5'd00)                    // if delay is not finish
            vdelay <= vdelay - 1;              // increment filter
end

//------------------------------------------------------------------------------
// Skip lines module
//------------------------------------------------------------------------------

reg [2:0] nline;
wire	  skipline;

always @ ( posedge clk or posedge reset)
begin
    if (reset)
        nline   <= 3'b001;
	else if (vsync)		
        nline   <= 3'b001;
    else if (hsync)
		if (lines350)
			nline <= { nline[1], nline[0], nline[2] };
		else 
			nline <= ~nline;
end

assign skipline = nline[0];

//------------------------------------------------------------------------------
//  Line and frame generator
//------------------------------------------------------------------------------

always @ ( posedge clk or posedge reset)
begin
    if (reset)
        line    <= 1'b0;
    else if (hsync)
        line    <= 1'b0;
    else if (pixel8)
        if (hdelay == 3'd0)                   	// if hor delay is finish
            line    <= skipline;
end

always @ ( posedge clk or posedge reset)
begin
    if (reset)
        frame   <= 1'b0;
    else if (vsync)
        frame   <= 1'b0;
    else if (hsync)
        if (vdelay == 5'b00000)                 // if ver delay is not finish
            frame <= 1'b1;
end

assign wrVga = pixel8 & line & frame; 			// if last (8th) pixel and line does not skip

//------------------------------------------------------------------------------
//  Horizontal counter
//------------------------------------------------------------------------------
     
always @ (posedge clk or posedge reset)
begin
    if (reset)
        h <= 0;
    else if (hsync)
        h <= 0;                         // horizontal counter is 0
    else if (wrVgaReq)					// count only write answer
        if( h != 7'b1111111 )
        	h <= h + 1; 	            // count horizontal counter
end

assign aVga[6:0] = h;

always @ (posedge clk) 
begin
	if (hsync)
	    if (h > 80)
	        notVgaSig <= 0;             // this is good VGA signal
		else
        	notVgaSig <= 1;             // this is bad VGA signal
end

assign notVga = notVgaSig;

//------------------------------------------------------------------------------
//  Vertical counter
//------------------------------------------------------------------------------

always @ (posedge clk or posedge reset)
begin
    if (reset)
        v <= 0;
    else if (vsync)
        v <= 0;                         // vertical counter is 0
    else if (hsync)
        if (frame & ~skipline)
    		if (v != 9'b111111111)
            	v <= v + 1;             // count vertical counter
end

assign aVga[15:7] = v;

always @ (posedge clk)
begin
	if (hsync)
	    if (v < 500)
	        lines350Sig <= 1;           // is 350 lines mode
		else
	        lines350Sig <= 0;           // is more that 350 lines mode
end

assign lines350 = lines350Sig;

//------------------------------------------------------------------------------
//  Video shifter
//------------------------------------------------------------------------------

always @ ( posedge clk )
begin
    shifter <= { shifter[6:0], video }; // shift video data
end

assign dVga = shifter;

endmodule

/*
|  "640 x 350 (EGA on VGA)"    "640 x 400 VGA text"        "VGA industry standard"
|  Clock frequency 25.175 MHz  Clock frequency 25.175 MHz  Clock frequency 25.175 MHz
|  Line  frequency 31469 Hz    Line  frequency 31469 Hz    Line  frequency 31469 Hz
|  Field frequency 70.086 Hz   Field frequency 70.086 Hz   Field frequency 59.94 Hz
|  
|  One line:                   One line:                   One line:
|    8 pixels front porch        8 pixels front porch        8 pixels front porch
|   96 pixels horizontal sync   96 pixels horizontal sync   96 pixels horizontal sync
|   40 pixels back porch        40 pixels back porch        40 pixels back porch
|    8 pixels left border        8 pixels left border        8 pixels left border
|  640 pixels video            640 pixels video            640 pixels video
|    8 pixels right border       8 pixels right border       8 pixels right border
|  ---                         ---                         ---
|  800 pixels total per line   800 pixels total per line   800 pixels total per line                             
|  
|  One field:                  One field:                  One field:
|   31 lines front porch         5 lines front porch         2 lines front porch
|    2 lines vertical sync       2 lines vertical sync       2 lines vertical sync
|   54 lines back porch         28 lines back porch         25 lines back porch
|    6 lines top border          7 lines top border          8 lines top border
|  350 lines video             400 lines video             480 lines video
|    6 lines bottom border       7 lines bottom border       8 lines bottom border
|  ---                         ---                         ---
|  449 lines total per field   449 lines total per field   525 lines total
|  per field                                                           
|  
|  Sync polarity: H positive,  Sync polarity: H negative,  Sync polarity: H negative,
|                 V negative                  V positive                  V negative
|  Scan type: non interlaced.  Scan type: non interlaced.  Scan type: non interlaced
*/
