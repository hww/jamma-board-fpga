//------------------------------------------------------------------------------
// scanconv
//------------------------------------------------------------------------------

`include "vga.v"
`include "memory.v"
`include "cgaega.v"
`include "syncinv.v"

module scanconv ( clk, nReset, hsync, vsync, ega, iVideo, oVideo, csync, relay, aMem, dMem, nCs, nOe, nWe );

    // Pins
    input   hsync, vsync;           // horizontal and vertical sync
    input   clk,  nReset, iVideo;   // 25 mhz, reset and video input
    output  csync, relay, oVideo;   // composite sync, relay trminal and videout
    input   ega;                    // EGA mode enabled

    output  [15:0] aMem;            // Memory address
    inout   [7:0]  dMem;            // Memory data
    output  nCs, nOe, nWe;          // Memory control bus

    // Variables
    wire    save;
    wire    reset;

    // Inverters
    assign  reset = ~nReset;

    wire    [7:0] dVga, dCga;
    wire    [15:0] aVga, aCga;
    wire    wrVga, wrVgaReq;
    wire    dirout;
    wire    [7:0] dMemOut;
    wire    halfclk;
    wire    access;

vga         ivga (  clk, 				// 25 mhz clock	
                    reset,              // reset
                    iVideo, 			// input video
                    vsync,				// vertical sync
 				    hsync,				// horisontal sync
                    dVga,				// vga data output
                    aVga, 				// vga address output
                    wrVga, 				// vga write strobe
                    wrVgaReq, 			// end of vga writing
					notVga, 			// bad vga input
					lines350			// this is 350 lines mode
                 );

memory      imemory(clk, 				// 25 mhz
                    reset, 				// reset 
                    wrVga, 				// write wga data
                    dVga, 				// vga data
                    aVga, 				// vga address
                    dCga, 				// cga data
                    aCga, 				// cga address
                    dMem,				// memory data input
                    dMemOut, 		 	// memory data output
                    aMem, 				// memory address
                    dirout,				// direction of data
                    nCs, 				// memory crystal select
                    nOe, 				// memory out enable
                    nWe, 				// memory write
                    access, 			// memory access end tick
                    halfclk,			// half of clk output
                    wrVgaReq			// end of writing of vga data
                   );

cgaega      icgaega(clk,				// 25 mhz 
                    reset, 				// reset
                    access, 			// last tick of writing of data
                    halfclk, 			// half of clk
                    ega, 				// ega mode
                    dCga, 				// cga data 
                    aCga, 				// cga address
                    csync, 			    // cga composite sync
                    oVideo				// output video
					);

assign dMem[7:0] = dirout ? 8'bzzzzzzzz : dMemOut;

assign relay = notVga;

endmodule


