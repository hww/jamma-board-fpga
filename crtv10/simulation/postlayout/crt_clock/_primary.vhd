library verilog;
use verilog.vl_types.all;
entity crt_clock is
    port(
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        pxclk_i         : out    vl_logic;
        pxclk_i_0       : out    vl_logic;
        onemks_1        : out    vl_logic;
        onemks_0        : out    vl_logic;
        onemks          : out    vl_logic;
        med_res_c       : in     vl_logic;
        pxclk           : out    vl_logic
    );
end crt_clock;
