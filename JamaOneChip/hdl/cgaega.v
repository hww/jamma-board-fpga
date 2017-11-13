//--------------------------------------------------------------
//
// cgaega
//
//--------------------------------------------------------------

module cgaega(clk, reset, access, halfclk, ega, dCga, aCga, csync, video);

    input   clk;                        // 25 mhz clock signal
    input   access;                     // access signal. Every memory cycle
    input   reset;                      // reset signal

    input   ega; 	                    // EGA/CGA modes
    input   halfclk;                    // clk/2
    output  [15:0] aCga;                // memory adres
	output  csync;                      // composite sync output signal
    output  video;                      // output video signal
    input   [7:0] dCga;                 // video data bus

    reg     [6:0] hcnt;                 // Horizontal counter
    reg     [8:0] vcnt;                 // Veritcal counter

    reg     hsync;
    reg     vsync;
    reg     hframe;
    reg     vframe;
    wire    black;    

    reg     [6:0] end_of_line;
    reg     [8:0] end_of_frame;
    reg     [6:0] hsync_begin;
    reg     [6:0] hsync_end;
    reg     [8:0] vsync_begin;
    reg     [8:0] vsync_end;
    reg     [6:0] hframe_end;
    reg     [8:0] vframe_end;
    
    parameter
        CGA_END_OF_LINE     = 384,
        CGA_END_OF_FRAME    = 312,
        CGA_HSYNC_BEGIN     = 340,
        CGA_HSYNC_END       = 342,
        CGA_VSYNC_BEGIN     = 250,
        CGA_VSYNC_END       = 254,
        CGA_VFRAME_END      = 240,
        CGA_HFRAME_END      = 320;

    parameter
        EGA_END_OF_LINE     = 384,
        EGA_END_OF_FRAME    = 312,
        EGA_HSYNC_BEGIN     = 340,
        EGA_HSYNC_END       = 342,
        EGA_VSYNC_BEGIN     = 250,
        EGA_VSYNC_END       = 254,
        EGA_VFRAME_END      = 240,
        EGA_HFRAME_END      = 320;

//------------------------------------------------------------------------------
//
//  Change mode EGA - CGA
//
//------------------------------------------------------------------------------

always  @   (ega)
begin
        end_of_line  = ega ? EGA_END_OF_LINE : CGA_END_OF_LINE;
        end_of_frame = ega ? EGA_END_OF_LINE : CGA_END_OF_LINE;
        hsync_begin  = ega ? EGA_HSYNC_BEGIN : CGA_HSYNC_BEGIN;
        hsync_end    = ega ? EGA_HSYNC_END   : CGA_HSYNC_END;
        vsync_begin  = ega ? EGA_VSYNC_BEGIN : CGA_VSYNC_BEGIN;
        vsync_end    = ega ? EGA_VSYNC_END   : CGA_VSYNC_END;
        vframe_end   = ega ? EGA_VFRAME_END  : CGA_VFRAME_END;
        hframe_end   = ega ? EGA_HFRAME_END  : CGA_HFRAME_END;
end

//------------------------------------------------------------------------------
//
//  Byte rate counter
//
//  Sent sygnall Rate every byte latch time.
//
//------------------------------------------------------------------------------

reg [1:0] bRate;
wire byteRate;
wire bitRate;

always  @   (posedge clk)
begin
    if (access)
        bRate <= bRate + 1;
end

assign  byteRate = ega ? (bRate[0] & access) : (bRate[0] & bRate[1] & access);
assign  bitRate  = ega ? 1 : halfclk;

//------------------------------------------------------------------------------
//
//  Ega or Cga  counter
//
//------------------------------------------------------------------------------

wire	w_end_of_line;
wire	w_end_of_frame;
wire	w_hframe_end;
wire	w_vframe_end;

assign w_end_of_line  = (hcnt == end_of_line);
assign w_end_of_frame = (vcnt == end_of_frame);
assign w_hframe_end   = (hcnt == hframe_end);
assign w_vframe_end   = (vcnt == vframe_end);

always  @   (posedge clk or posedge reset)
begin
    if (reset)
        hframe <= 0;
	else if (access)
        if (w_end_of_line)
			hframe <= 1;
		else if (w_hframe_end)
			hframe <= 0;
end

always  @   (posedge clk or posedge reset)
begin
    if (reset)
        hcnt <= 0;
    else if (access)
        if (w_end_of_line)
            hcnt <= 0;
        else
            hcnt <= hcnt + 1;
end

always  @   (posedge clk or posedge reset)
begin
    if (reset)
        vcnt <= 0;
    else if (access)
        if (w_end_of_line)
            if (w_end_of_frame)
                vcnt <= 0;
            else 
                vcnt <= vcnt + 1;
end

always  @   (posedge clk or posedge reset)
begin
    if (reset)
        vframe <= 0;
    else if (access)
        if (w_end_of_line)
            if (w_end_of_frame)
                vframe  <= 1;
            else 
                if (w_vframe_end)
                    vframe <= 0;
end

assign aCga = {vcnt, hcnt};

//------------------------------------------------------------------------------
//
//  Sync generator
//
//------------------------------------------------------------------------------

always  @   (posedge clk or posedge reset)
begin
    if (reset)
        hsync <= 1'b0;
    else if (hcnt == hsync_begin)
        hsync <= 1'b1;
    else if (hcnt == hsync_end)
        hsync <= 1'b0;
end

always  @   (posedge clk or posedge reset)
begin
    if (reset)
        vsync <= 1'b0;   
    else if (vcnt == vsync_begin)
            vsync <= 1'b1;
    else if (vcnt == vsync_end)
            vsync <= 1'b0;
end

assign csync = vsync ^ hsync;

//------------------------------------------------------------------------------
//
//  Video shifter
//
//------------------------------------------------------------------------------

reg [7:0] shifter;

always  @   (posedge clk or posedge reset)
begin
    if (reset)
        shifter <= 0;
    else if (halfclk)
        if (byteRate)
            shifter <= dCga;
        else 
            shifter <= {shifter[6:0], 1'b0};       
end

assign video = black ? 0 : shifter[7];

//------------------------------------------------------------------------------
//
//  Blak register
//
//------------------------------------------------------------------------------

reg [1:0] frame;

always  @   (posedge clk or posedge reset)
begin
    if (reset)
        frame <= 0;
    else if (byteRate)
        frame <= {frame[0], hframe};       
end

assign black = ~(frame[1] & vframe);

endmodule