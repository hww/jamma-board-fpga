library verilog;
use verilog.vl_types.all;
entity mydffe2 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enaa            : in     vl_logic;
        dataa           : in     vl_logic;
        enab            : in     vl_logic;
        datab           : in     vl_logic;
        q               : out    vl_logic
    );
end mydffe2;
