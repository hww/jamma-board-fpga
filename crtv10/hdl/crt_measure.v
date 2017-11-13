//---------------------------------------------------------------------
//
//
// crt_measure
//
//
//---------------------------------------------------------------------

//  This part made measurement of one from twos signals. It should be
//  hsync, tested by clock (when mode = 0). Or it should be vsync 
//  measured by hsync (when mode = 1).
//
//  Variable start is initialize of measurement. Variable finish show
//  when measurement was finished.

module crt_measure ( clk, reset, start, mode, hsync,  vsync, measure, q);

    input           clk, reset, start, mode, vsync, hsync;
    output  [9:0]   q;
    output          measure;

    wire    test_sig;
    wire    sync_sig;
    wire    hris;
    wire    vris;

    onefextractor hsig_obj( clk, reset, 1'b1, hsync, hris);
    onefextractor vsig_obj( clk, reset, 1'b1, vsync, vris);

    assign  test_sig = mode ? vris : hris;
    assign  sync_sig = mode ? hris : 1;

    reg     [9:0]   count;
    reg             check, prepare;

    // COUNTER

    always @ (posedge reset or posedge clk)
        if (reset)
                count <= 0;
        else if(sync_sig)
            if(check)
                count <= count + 1;
            else if(prepare)
                count <= 0;

    // MEASURE

    always @ (posedge reset or posedge clk )
        if (reset)
            prepare <= 0;
        else 
        begin
            if(start)
                prepare <= 1;
            else if(check & test_sig)
                prepare <= 0;
        end


    always @ (posedge reset or posedge clk)
        if (reset)
            check <= 0;
        else if (test_sig)
            if (prepare)
                check <= ~check;


    assign measure = prepare;
    assign q = count;

endmodule