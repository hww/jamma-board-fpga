library verilog;
use verilog.vl_types.all;
entity crt_syncsinv is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        onemks          : in     vl_logic;
        hsync           : in     vl_logic;
        vsync           : in     vl_logic;
        csync           : out    vl_logic
    );
end crt_syncsinv;
