library verilog;
use verilog.vl_types.all;
entity mydff is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        dataa           : in     vl_logic;
        q               : out    vl_logic
    );
end mydff;
