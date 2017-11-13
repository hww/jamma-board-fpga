//---------------------------------------------------------------------
//
//
// quad_tmr
//
//
//---------------------------------------------------------------------

module lcel (in, out);
	input in;
	output out;
	buf ibuf(out, in);
endmodule

module quad_tmr ( clk, reset, ena, a, b, q);

    input           clk, reset, ena;            // Clock signals
    input           a, b;                       // Quad's timer inputs
    output  [3:0]   q;                          // Output signals

    reg     [3:0]   count;                      // counter
    wire            risea, riseb;
    wire            plus, plusin;
    wire            enacnt;

    fextractor fa_obj( clk, reset, ena, a, risea);
    fextractor fb_obj( clk, reset, ena, b, riseb);

    lcel lcel_obj(plusin, plus);
    assign plusin   = (risea & (a !=  b)) | (b & (a == b));
    assign enacnt   = (risea | riseb) & ena;

    always @ (posedge reset or posedge clk)
        if (reset)
                count <= 0;
        else if(enacnt)
            if (plus)
                count <= count + 1;
            else
                count <= count -1;

    assign q = count;

endmodule

