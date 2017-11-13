//------------------------------------------------------------------------------
// interface
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// LCEL
//------------------------------------------------------------------------------

module myLCEL (in, out);
	input in;
	output out;
	buf ibuf(out, in);
endmodule

//------------------------------------------------------------------------------
// MUX 61x6
//------------------------------------------------------------------------------

module myMUX_16_6 ( select, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, out );

	input  [3:0]   select;
	input  [6:0]   in0,	 in1,  in2,  in3;
	input  [6:0]   in4,  in5,  in6,  in7;
	input  [6:0]   in8,  in9,  in10, in11;
	input  [6:0]   in12, in13, in14, in15;
	output [6:0]   out;

	reg	[6:0] rout;
	assign out = rout;

always @ (select or in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7 or in8 or in9 or in10 or in11 or in12 or in13 or in14 or in15)
begin
	case (select)
	4'b0000 : 		rout <=  in0;
	4'b0001 : 		rout <=  in1;
	4'b0010 : 		rout <=  in2;
	4'b0011 : 		rout <=  in3;
	4'b0100 : 		rout <=  in4;
	4'b0101 : 		rout <=  in5;
	4'b0110 : 		rout <=  in6;
	4'b0111 : 		rout <=  in7;					
	4'b1000 :		rout <=  in8;
	4'b1001 : 		rout <=  in9;
	4'b1010 : 		rout <=  in10;
	4'b1011 : 		rout <=  in11;
	4'b1100 : 		rout <=  in12;
	4'b1101 : 		rout <=  in13;
	4'b1110 : 		rout <=  in14;
	4'b1111 : 		rout <=  in15;
	default:		rout <=  1'bX;
	endcase
end
endmodule

//------------------------------------------------------------------------------
// MUX 61x1
//------------------------------------------------------------------------------

module myMUX_16_1(select, in, out);
	input [3:0]  select;
	input [15:0] in;
	output 		 out;

	reg	rout;
	assign out = rout;

always @ (select or in)
begin
	case (select)
	4'b0000 : 		rout <=  in[15];
	4'b0001 : 		rout <=  in[14];
	4'b0010 : 		rout <=  in[13];
	4'b0011 : 		rout <=  in[12];
	4'b0100 : 		rout <=  in[11];
	4'b0101 : 		rout <=  in[10];
	4'b0110 : 		rout <=  in[ 9];
	4'b0111 : 		rout <=  in[ 8];					
	4'b1000 :		rout <=  in[ 7];
	4'b1001 : 		rout <=  in[ 6];
	4'b1010 : 		rout <=  in[ 5];
	4'b1011 : 		rout <=  in[ 4];
	4'b1100 : 		rout <=  in[ 3];
	4'b1101 : 		rout <=  in[ 2];
	4'b1110 : 		rout <=  in[ 1];
	4'b1111 : 		rout <=  in[ 0];
	default:		rout <=  1'bX;
	endcase
end
endmodule

//------------------------------------------------------------------------------
// Reversive counter
//------------------------------------------------------------------------------

module myREVCOUNTER( clk, clrn, ena, plus, q );

	parameter WIDTH = 7;

	input	clk;				// clock signal
	input	clrn;				// reset to zero
	input	ena;				// enable counter
	input	plus;				// increase counter

	output	[WIDTH-1:0] q;		// result of counter

	reg	[WIDTH-1:0] cnt;

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

assign	q = cnt;
endmodule

//------------------------------------------------------------------------------
// Fronts extractor
//------------------------------------------------------------------------------

module myFRONTEXTRACTOR (clk, clrn, ena, in, out);

	input	clk;				// clock signal
	input	clrn;				// reset to zero
	input	ena;				// enable counter
	input	in;					// data input
	output	out;				// front output

	reg		[1:0] rise;

always @ (posedge clk or negedge clrn) 
begin
	if(~clrn)
		rise <= 0;
	else if (ena)
		rise <= {rise[0], in};
end

assign out	= rise[1] ^ rise[0];

endmodule

//------------------------------------------------------------------------------
// My non standart trigger
//------------------------------------------------------------------------------

module myDFFE2 (clk, reset, enaA, dataA, enaB, dataB, q);

	input	clk;			// clock
	input	reset;			// reset
	input	enaA;			// enable one
	input	dataA;			// data one
	input	enaB;			// enable two
	input	dataB;			// data two
	output	q;				// result

	reg		mt;				// trigger

always @ (posedge clk or posedge reset) 
begin
	if (reset)
		mt <= 0;
	else if(enaA)
		mt <= dataA;
	else if(enaB)
		mt <= dataB;
end
assign	q = mt;

endmodule

//------------------------------------------------------------------------------
// My non standart trigger
//------------------------------------------------------------------------------

module myDFFE (clk, reset, enaA, dataA, q);

	input	clk;			// clock
	input	reset;			// reset
	input	enaA;			// enable one
	input	dataA;			// data one
	output	q;				// result

	reg		mt;				// trigger

always @ (posedge clk or posedge reset) 
begin
	if (reset)
		mt <= 0;
	else if(enaA)
		mt <= dataA;
end
assign	q = mt;

endmodule

//------------------------------------------------------------------------------
// My non standart trigger
//------------------------------------------------------------------------------

module myDFF (clk, reset, dataA, q);

	input	clk;			// clock
	input	reset;			// reset
	input	dataA;			// data one
	output	q;				// result

	reg		mt;				// trigger

always @ (posedge clk or posedge reset) 
begin
	if (reset)
		mt <= 0;
	else 
		mt <= dataA;
end
assign	q = mt;

endmodule

//------------------------------------------------------------------------------
// My non standart register
//------------------------------------------------------------------------------

module my4BREG (clk, reset, enaA, dataA, q);

	parameter WIDTH=4;

	input	clk;				// clock
	input	reset;				// reset
	input	enaA;				// enable one
	input	[WIDTH-1:0] dataA;	// data one
	output	[WIDTH-1:0] q;		// result

	reg		[WIDTH-1:0] mt;		// trigger

always @ (posedge clk or posedge reset) 
begin
	if (reset)
		mt <= 0;
	else if(enaA)
		mt <= dataA;
end
assign	q = mt;

endmodule

//------------------------------------------------------------------------------
// My non standart noice generator
//------------------------------------------------------------------------------

module myNOISE (clk, reset, enaA, q);

	parameter WIDTH=16;

	input	clk;				// clock
	input	reset;				// reset
	input	enaA;				// enable one
	output	[WIDTH-1:0] q;		// result

	reg		[WIDTH-1:0] mt;		// trigger

always @ (posedge clk or posedge reset) 
begin
	if (reset)
		mt <= 0;
	else if(enaA)
		mt <= {mt[14:0], ((mt[1] ~^ mt[2]) ~^ (mt[15] ~^ mt[4]))};
end
assign	q = mt;

endmodule

//------------------------------------------------------------------------------
// My non standart counter
//------------------------------------------------------------------------------

module my4COUNTER (clk, reset, ena, set, data, q);

	parameter WIDTH=4;

	input	clk;				// clock
	input	reset;				// reset
	input	ena;				// increnment
	input	set;				// enable one
	input	[WIDTH-1:0] data;	// result
	output	[WIDTH-1:0] q;		// result

	reg		[WIDTH-1:0] counter;// trigger

always @ (posedge clk or posedge reset) 
begin
	if(reset)
		counter <= 0;
	else if(set)
		counter <= data;
	else if(ena)
		counter <= counter + 1;
end

assign q = counter;

endmodule

//------------------------------------------------------------------------------
// My non standart counter
//------------------------------------------------------------------------------

module my16COUNTER (clk, reset, ena, set, data, q);

	parameter WIDTH=16;

	input	clk;				// clock
	input	reset;				// reset
	input	ena;				// increnment
	input	set;				// enable one
	input	[WIDTH-1:0] data;	// result
	output	[WIDTH-1:0] q;		// result

	reg		[WIDTH-1:0] counter;// trigger

always @ (posedge clk or posedge reset) 
begin
	if(reset)
		counter <= 16'hFFFF;
	else if(set)
		counter <= data;
	else if(ena)
		counter <= counter + 1;
end

assign q = counter;

endmodule
