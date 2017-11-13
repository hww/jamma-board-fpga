//------------------------------------------------------------------------------
// scanconv
//------------------------------------------------------------------------------


module scanconv ( clk, nReset, nHsync, nVsync, ega, iVideo, oVideo, csync, relay, aMem, dMem, nCs, nOe, nWe );

    // Pins
    input   nHsync, nVsync;         // horizontal and vertical sync
    input   clk,  nReset, iVideo;   // 25 mhz, reset and video input
    output  csync, relay, oVideo;   // composite sync, relay trminal and videout
    input   ega;                    // EGA mode enabled

    output  [15:0] aMem;            // Memory address
    inout   [7:0]  dMem;            // Memory data
    output  nCs, nOe, nWe;          // Memory control bus

    // Variables
    wire    hsync, vsync;
    wire    save;
    wire    reset;

    // Inverters
    assign  hsync = ~nHsync;
    assign  vsync = ~nVsync;
    assign  reset = ~nReset;

    wire    [7:0] dVga, dCga;
    wire    [15:0] aVga, aCga;
    wire    wrVga, wrVgaReq;
    wire    dirout;
    wire    [7:0] dMemOut;
    wire    halfclk;
    wire    access;

vga         ivga (  .clk(clk), 
                    .video(iVideo), 
                    .hsync(hsync), 
                    .vsync(vsync), 
                    .dVga(dVga),
                    .aVga(aVga), 
                    .wrVga(wrVga), 
                    .wrVgaReq(wrVgaReq) 
                 );

memory      imemory(.clk(clk), 
                    .reset(~nReset), 
                    .wrVga(wrVga), 
                    .dVga(dVga), 
                    .aVga(aVga), 
                    .dCga(dCga), 
                    .aCga(aCga), 
                    .dMemIn(dMem),
                    .dMemOut(dMemOut), 
                    .aMem(aMem), 
                    .dirout(dirout),
                    .nCsMem(nCs), 
                    .nOeMem(nOe), 
                    .nWeMem(nWe), 
                    .t3(access), 
                    .halfclk(halfclk),
                    .wrVgaReq(wrVgaReq)
                   );

cgaega      icgaega(.clk(clk), 
                    .reset(~nReset), 
                    .access(access), 
                    .halfclk(halfclk), 
                    .ega(ega), 
                    .dCga(dCga), 
                    .aCga(aCga), 
                    .csync(csync), 
                    .video(oVideo));

assign dMem[7:0] = dirout ? 8'bzzzzzzzz : dMemOut;

assign relay = 1;

endmodule


