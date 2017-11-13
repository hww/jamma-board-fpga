library verilog;
use verilog.vl_types.all;
entity crt_scan is
    port(
        \hcnt_i_0[0]\   : out    vl_logic;
        \hcnt_i[0]\     : out    vl_logic;
        vcnt_4          : out    vl_logic;
        vcnt_3          : out    vl_logic;
        vcnt_0          : out    vl_logic;
        vcnt_5          : out    vl_logic;
        vcnt_2          : out    vl_logic;
        vcnt_1          : out    vl_logic;
        hcnt_0          : out    vl_logic;
        hcnt_1          : out    vl_logic;
        hcnt_4          : out    vl_logic;
        hcnt_5          : out    vl_logic;
        hcnt_7          : out    vl_logic;
        hcnt_3          : out    vl_logic;
        hcnt_6          : out    vl_logic;
        hcnt_2          : out    vl_logic;
        pxclk_i         : in     vl_logic;
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        pxclk_i_0       : in     vl_logic;
        int_c           : out    vl_logic;
        med_res_c       : in     vl_logic;
        hsync           : out    vl_logic;
        href            : out    vl_logic;
        pxclk           : in     vl_logic
    );
end crt_scan;
