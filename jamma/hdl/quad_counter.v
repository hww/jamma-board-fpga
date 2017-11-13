//----------------------------------------------------------------------
// TRACKBALL LOGIC
//----------------------------------------------------------------------

module QUAD_COUNTER ( clk, enable, inA, inB, clrn, q);

	input 			clk, enable, inA, inB, clrn;
	output	[6:0]	q;

	wire 		 	riseA, riseB;
	wire	 		plus, plusin;
	wire			ena;

//----------------------------------------------------------------------
// TRACKBALL RISE LOGIC
//----------------------------------------------------------------------

myFRONTEXTRACTOR ifrontsExtractorA (clk, clrn, enable, inA, riseA);
myFRONTEXTRACTOR ifrontsExtractorB (clk, clrn, enable, inB, riseB);

assign plusin   = ( riseA & (inA !=  inB) ) | ( riseB & (inA == inB) );

myLCEL lcelem(plusin, plus);

assign ena 		= (riseA | riseB) & enable;

//----------------------------------------------------------------------
// TRACKBALL LOGIC
//----------------------------------------------------------------------

myREVCOUNTER irevCounter( clk, clrn, ena, plus, q );

endmodule

