//---------------------------------------------------------------------
//
//  crt_pix
//
//  This part generating video signal. Format is four-bits grayscale.
//
//---------------------------------------------------------------------


module crt_pix ( clk, reset, pxclk, video_data_in, video_data_latch, black, pixel_data_out );

    input           clk, reset;             // clock and reset
	input			pxclk;                  // pixel clock frequence		
    input   [7:0]   video_data_in;          // video data input
    input           video_data_latch;       // video data latch
    input           black;                  // black video
    
    output  [3:0]   pixel_data_out;        

    reg     [7:0]   pixel_reg;

    assign pixel_data_out =  pixel_reg[3:0];

    always @ (posedge reset or posedge clk)
        if (reset)
            pixel_reg <= 8'b0000_0000;
        else if (pxclk)
            if (video_data_latch)
                if (black)
                    pixel_reg <= 8'b0000_0000;
                else
                    pixel_reg <= video_data_in;
            else 
                if (black)
                    pixel_reg <= 8'b0000_0000;
                else
                    pixel_reg[3:0] <= pixel_reg[7:4];
endmodule
