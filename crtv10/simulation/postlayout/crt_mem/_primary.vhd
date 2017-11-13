library verilog;
use verilog.vl_types.all;
entity crt_mem is
    port(
        \hcnt_i[0]\     : in     vl_logic;
        \hcnt_i_0[0]\   : in     vl_logic;
        y_109           : out    vl_logic;
        href            : in     vl_logic;
        bus_mux_0       : out    vl_logic;
        bus_mux_1       : out    vl_logic;
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        mem_hold        : in     vl_logic;
        bus_dir_out     : out    vl_logic;
        bus_dir_out_i   : out    vl_logic;
        \_wr_c\         : in     vl_logic;
        bus_mux         : out    vl_logic;
        ds_c            : in     vl_logic
    );
end crt_mem;
