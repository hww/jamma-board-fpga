//------------------------------------------------------------------------------
// interface
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// LCEL
//------------------------------------------------------------------------------

module lcel (in, out);
	input in;
	output out;
	buf ibuf(out, in);
endmodule

//------------------------------------------------------------------------------
// MUX 61x6
//------------------------------------------------------------------------------

module mux_16_6 ( select, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, out );

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

module mux_16_1(select, in, out);
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



