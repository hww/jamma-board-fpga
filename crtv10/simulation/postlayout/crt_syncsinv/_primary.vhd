library verilog;
use verilog.vl_types.all;
entity crt_syncsinv is
    port(
        a               : out    vl_logic;
        \_reset_c\      : in     vl_logic;
        \_reset_c_i\    : in     vl_logic;
        clk_c           : in     vl_logic;
        excsync         : out    vl_logic;
        y_28            : in     vl_logic;
        hris_n          : in     vl_logic;
        vsync_in_c      : in     vl_logic;
        onemks_0        : in     vl_logic;
        hsync_in_c      : in     vl_logic;
        onemks_1        : in     vl_logic
    );
end crt_syncsinv;
