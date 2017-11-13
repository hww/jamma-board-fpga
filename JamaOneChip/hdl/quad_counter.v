//----------------------------------------------------------------------
// TRACKBALL LOGIC
//----------------------------------------------------------------------

module QUAD_COUNTER ( clk, enable, inA, inB, clrn, q);

	input 			clk, enable, inA, inB, clrn;
	output	[6:0]	q;

	reg 	[6:0] 	cnt;
	reg		[3:0]	ballRise;
	wire 	[1:0] 	rise;
	wire	 		plus, plusin;
	wire			ena;

//----------------------------------------------------------------------
// TRACKBALL RISE LOGIC
//----------------------------------------------------------------------

always @ (posedge clk or negedge clrn) 
begin
	if(~clrn)
		ballRise <= 0;
	else if (enable)
		ballRise <= {ballRise[1:0], inB, inA};
end

assign rise[1]	= ballRise[3] ^ ballRise[1];
assign rise[0]	= ballRise[2] ^ ballRise[0];
assign plusin   = ( rise[0] & (inA !=  inB) ) | ( rise[1] & (inA == inB) );

lcel lcelem(plusin, plus);

assign ena 		= (rise[0] | rise[1]) & enable;

//----------------------------------------------------------------------
// TRACKBALL LOGIC
//----------------------------------------------------------------------

always @ (posedge clk or negedge clrn) 
begin
	if(~clrn)
		cnt <= 0;
	else if (ena)
		if(plus)
			cnt	<= cnt + 1;
		else
			cnt	<= cnt - 1; 
end

assign 	q	= cnt;

endmodule

