//--------------------------------------------------------------
// JammaOne
//--------------------------------------------------------------


module jammaone(clk, nReset, 
                da, nDiow, nDior, nCS0, nCS1, iordy, dd,
				CoinCounter,CoinLockout,P,
				hsync,vsync,csync, ega, iVideo, oVideo, relay, 
                aMem, dMem, nCs, nOe, nWe 
                );

//----------------------------------------------------------------------
// SHARED interface side
//----------------------------------------------------------------------

	input 	clk, nReset;    								// 2

//----------------------------------------------------------------------
// IDE interface side
//----------------------------------------------------------------------

	input	[2:0] da;										// 6
	input 	nDiow, nDior, nCS0, nCS1;				        // 7
	inout	iordy;											// 1
	inout	[7:0] dd;										// 8

//----------------------------------------------------------------------
// JAMMA interface side
//----------------------------------------------------------------------

	output 	[2:1] CoinCounter;								// 2
	output 	[2:1] CoinLockout;								// 2
	input  	[28:0] P;										// 27
															// 49 total
//----------------------------------------------------------------------
// VIDE interface side
//----------------------------------------------------------------------
    
    input   hsync, vsync;
    output  csync;
    input   ega;
    output  relay;
    input   iVideo;
    output  oVideo;

//----------------------------------------------------------------------
// MEMORY interface side
//----------------------------------------------------------------------

    output  [15:0] aMem;
    inout   [7:0]  dMem;
    output  nCs, nOe, nWe;

//----------------------------------------------------------------------
//
// JAMMA SYSTEM INSTANCE MODULE
//
//----------------------------------------------------------------------

jamma   ijamma( .clk(clk), 
                .nReset(nReset), 
                .da(da), 
                .nDiow(nDiow), 
                .nDior(nDior), 
                .nCS0(nCS0), 
                .nCS1(nCS1), 
                .iordy(iordy), 
                .dd(dd),
				.CoinCounter(CoinCounter),
                .CoinLockout(CoinLockout),
                .P(P)
			);

//----------------------------------------------------------------------
//
// VIDEO CONVERTOR SYSTEM INSTANCE MODULE
//
//----------------------------------------------------------------------

scanconv  iscanconv (
                .clk(clk), 
                .nReset(nReset), 
                .nHsync(hsync), 
                .nVsync(vsync), 
                .ega(ega), 
                .iVideo(iVideo), 
                .oVideo(oVideo), 
                .csync(csync), 
                .relay(relay), 
                .aMem(aMem), 
                .dMem(dMem), 
                .nCs(nCs), 
                .nOe(nOe), 
                .nWe(nWe) 
                );


endmodule