//---------------------------------------------------------------------
//
//
// crt_cookie
//
//
//---------------------------------------------------------------------

// this device count 1011_0110_1000 packets of status register and next
// should to generate one cookie equal 10110010. All another time this
// device generate noice to output.

module  crt_cookie(clk, reset, ena, noice, test);

    input   clk, reset, ena, noice;
    output  test;

    reg     [11:0]   delay;
    reg             noicereg;
    
    always @ (posedge reset or posedge clk)
        if (reset)
            delay <= 0;
        else if(ena)
            delay <= delay + 1;

    always @ (posedge reset or posedge clk)
        if (reset)
            noicereg <= 0;
        else if(ena)
            if(delay[11:0] == 12'b1011_0110_1XXX)
                case (delay[7:3])
                    3'b000 : noicereg  <= 1;
                    3'b001 : noicereg  <= 0;
                    3'b010 : noicereg  <= 1;
                    3'b011 : noicereg  <= 1;
                    3'b100 : noicereg  <= 0;
                    3'b101 : noicereg  <= 0;
                    3'b110 : noicereg  <= 1;
                    3'b111 : noicereg  <= 0;
                endcase        
            else
                noicereg <= noice;

    assign test = noicereg;

endmodule