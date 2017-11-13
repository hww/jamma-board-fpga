//---------------------------------------------------------------------
//
//  crt_clock
//
//  This part made indernal pixel clock frequence. It should be 
//  divided by two if select low resolution. Basicly it use 
//  14.7456 mhz, but in a low res frequence should be 7.3728
//
//---------------------------------------------------------------------


module crt_clock (clk, reset, pxclk, med_res, onemks);

    input           clk;                    // clock input
    input           reset;                  // reset input
	input           med_res;
	output			pxclk, onemks;

    reg             div2;                   // dividor by 2
    reg     [3:0]   div16;                  // divisor by 16

    // DIVISOR BY 2

 	always @ (posedge reset or posedge clk)
    	if (reset)
            div2 <= 1'b0;
        else
            if (med_res)
                div2 <= 1'b1;
            else
                div2 <= ~div2;

    assign pxclk    = div2;

    // DIVISOR BY 16

 	always @ (posedge reset or posedge clk)
    	if (reset)
            div16 <= 4'b0000;
        else
            div16 <= div16 + 1;

    assign onemks = (div16 == 4'b1111);

endmodule
