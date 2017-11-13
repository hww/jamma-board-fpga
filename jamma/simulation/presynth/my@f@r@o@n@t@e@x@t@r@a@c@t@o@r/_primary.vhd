library verilog;
use verilog.vl_types.all;
entity myfrontextractor is
    port(
        clk             : in     vl_logic;
        clrn            : in     vl_logic;
        ena             : in     vl_logic;
        \in\            : in     vl_logic;
        \out\           : out    vl_logic
    );
end myfrontextractor;
