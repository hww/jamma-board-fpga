//---------------------------------------------------------------------
//
//
//  crt_mem
//
//
//---------------------------------------------------------------------

module crt_mem (    clk, reset, video_data_latch, href, 
                    video_address, video_data, 
                    da, dbi, dbo, 
                    mem_hold, wr, ds,
                    md, ma, 
                    _mcs, _mwr, _mrd );

    // CLOCK SIGNALS

    input           clk;
    input           reset;
    input           video_data_latch;
    
    // VIDEO INTERFACE

    input   [19:0]  video_address;
    output  [7:0]   video_data;
    input           href;

    // CPU INTERFACE

    input   [19:0]  da;
    input   [7:0]   dbi;
    output  [7:0]   dbo;
    input           mem_hold;
    input           wr;
    input           ds;

    // MEMORY INTERFACE

    inout   [7:0]   md;
    output  [19:0]  ma;
    output          _mcs;
    output          _mwr;
    output          _mrd;

    wire            bus_dir_out;
    reg             bus_mux;

 	always @ (posedge reset or posedge clk)
    	if (reset)
            bus_mux <= 0;
        else
            if (video_data_latch)
                bus_mux <= mem_hold;
 
    // BUS MUX

    assign  bus_dir_out =   bus_mux & ds & wr;
    assign _mwr         = ~bus_dir_out;

    assign  ma          =   bus_mux ? da : video_address;
    assign _mcs         = ~(bus_mux ? ds : href);
    assign _mrd         = ~(bus_mux ? ~wr & ds : href);
    assign  md          = bus_dir_out ? dbi : 8'bzzzz_zzzz;
    assign  dbo         = md;
    assign  video_data  = bus_mux ? 8'b0000_0000 : md;

endmodule