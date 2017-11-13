//--------------------------------------------------------------
//
// Memory controller module
//
//--------------------------------------------------------------

module memory(  clk, reset, wrVga, dVga, aVga, dCga, aCga, 
                dMemIn, dMemOut, aMem, dirout, nCsMem, nOeMem, nWeMem, t3, halfclk, wrVgaReq );

    input   clk;                    // 25mhz clock
    input   reset;                  // reset

    input   wrVga;                  // VGA write request 
    input   [7:0]  dVga;            // VGA write data 
    input   [15:0] aVga;            // VGA address bus 

    output  [7:0]  dCga;            // CGA data bus
    input   [15:0] aCga;            // CGA address bus 

    input   [7:0]  dMemIn;          // Memory data bus
    output  [7:0]  dMemOut;         // Memory data bus
    output  [15:0] aMem;            // Memory address bus
    output  dirout;                 // direction bus to output
    output  nCsMem, nOeMem, nWeMem; // sygnal static memory control

    output  t3;                     // last tick
	output	halfclk;				// clock divided by 2
    output  wrVgaReq;               // request write 

    reg wrRequest;
    reg wrCycle;
    
	//----------------------------------------------------------
    // State machine
    //----------------------------------------------------------

    reg     [1:0] state;            // machine of state
    wire    t0, t1, t2;

    always @ ( posedge clk )
    begin
            state <= state + 1;
    end

    assign  t0 = (state == 2'b00);
    assign  t1 = (state == 2'b01);
    assign  t2 = (state == 2'b10);
    assign  t3 = (state == 2'b11);
    assign halfclk = state[0];
    assign  wrVgaReq = t3 & wrCycle;

    //----------------------------------------------------------
    // Register Write data
    //----------------------------------------------------------

    reg [7:0] wrBuf;                // buffer for writing data

    always @ ( posedge clk )
    begin
        if (wrVga)                  // in time write request save data from datai
            wrBuf <= dVga;
    end

    assign dMemOut = wrBuf; 

    //----------------------------------------------------------
    // Register Write request
    //----------------------------------------------------------

    always @ ( posedge clk or posedge reset )
    begin
        if (reset)
            wrRequest <= 0;
        else        
            if (wrVga & ~wrCycle)
                wrRequest <= 1;
            else if (~wrVga & wrCycle)
                wrRequest <= 0;
    end

    //----------------------------------------------------------
    // Register Write cycle
    //----------------------------------------------------------

    always @ ( posedge clk or posedge reset )
    begin
        if (reset)
            wrCycle <= 0;
        else if (t3)
            wrCycle <= wrRequest;
    end
	
	assign dirout = wrCycle;

    //----------------------------------------------------------
    // Address bus
    //----------------------------------------------------------

    assign aMem = wrCycle ? aVga : aCga;

    //----------------------------------------------------------
    // Data bus
    //----------------------------------------------------------

    reg [7:0] rdBuf;                        // buffer for reading data

    always @ ( posedge clk or posedge reset )
    begin
        if (reset)
            rdBuf <= 0;
        else if (t3 & ~wrCycle)
            rdBuf <= dMemIn;
    end
    
    assign dCga = rdBuf;

    //----------------------------------------------------------
    // Memory control lines
    //----------------------------------------------------------

    reg csMem, oeMem, weMem;

    always @ ( posedge clk or posedge reset )
    begin
        if (reset)
            csMem <= 1;
        else if (t0)
            csMem <= 0;
        else if (t3)
            csMem <= 1;
    end

    always @ ( posedge clk or posedge reset )
    begin
        if (reset)
            oeMem <= 1;
        else if (t0 & ~wrCycle)
            oeMem <= 0;
        else if (t3)
            oeMem <= 1;
    end

    always @ ( posedge clk or posedge reset )
    begin
        if (reset)
            weMem <= 1;
        else if (t0 & wrCycle)
            weMem <= 0;
        else if (t3)
            weMem <= 1;
    end

    assign nOeMem = oeMem;
    assign nWeMem = weMem;
    assign nCsMem = csMem;

endmodule