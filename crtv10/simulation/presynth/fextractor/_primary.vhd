library verilog;
use verilog.vl_types.all;
entity fextractor is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ena             : in     vl_logic;
        \in\            : in     vl_logic;
        \out\           : out    vl_logic
    );
end fextractor;
