//---------------------------------------------------------------------
//
//
// crt_syncsinv
//
//
//---------------------------------------------------------------------


module crt_syncsinv(clk, reset, onemks, hsync, vsync, csync);

    input           clk, reset, onemks;         // Clock signals
    input           hsync, vsync;               // Input signals
    output          csync;                      // composite signal

    reg     [3:0]   hcnt, vcnt;

    always @ (posedge reset or posedge clk)
        if (reset)
            hcnt <= 4'b1000;
        else if(onemks)
        begin
            if (hsync)
            begin
                if(hcnt != 4'b1111)
                    hcnt <= hcnt + 1;
            end
            else
            begin
                if(hcnt != 4'b0000)
                    hcnt <= hcnt - 1;
            end
        end

    wire    hris;

    onefextractor hsig_obj( clk, reset, 1'b1, hsync, hris);

    always @ (posedge reset or posedge clk)
        if (reset)
            vcnt <= 4'b1000;
        else if(hris)
        begin
            if (vsync)
            begin
                if(vcnt != 4'b1111)
                    vcnt <= vcnt + 1;
            end
            else
            begin
                if(vcnt != 4'b0000)
                    vcnt <= vcnt - 1;
            end
        end

    assign   csync = (hsync ^ hcnt[3]) ^ (vsync ^ vcnt[3]);
endmodule