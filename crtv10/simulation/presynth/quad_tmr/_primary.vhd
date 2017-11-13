library verilog;
use verilog.vl_types.all;
entity quad_tmr is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ena             : in     vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end quad_tmr;
