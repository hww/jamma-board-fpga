//---------------------------------------------------------------------
//
//
// fextractor
//
//
//---------------------------------------------------------------------


module fextractor ( clk, reset, ena, in, out);

    input   clk, reset, ena, in;
    output  out;

    reg     a,b;


    always @ (posedge reset or posedge clk)
        if (reset)
                {a, b} <= 2'b00;
        else if(ena)
                {b,a} <= {a, in};
    
    assign out = a ^ b;

endmodule

module onefextractor ( clk, reset, ena, in, out);

    input   clk, reset, ena, in;
    output  out;

    reg     a,b;


    always @ (posedge reset or posedge clk)
        if (reset)
                {a, b} <= 2'b00;
        else if(ena)
                {b,a} <= {a, in};
    
    assign out = a & ~b;

endmodule