library verilog;
use verilog.vl_types.all;
entity quad_counter is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        ina             : in     vl_logic;
        inb             : in     vl_logic;
        clrn            : in     vl_logic;
        q               : out    vl_logic_vector(6 downto 0)
    );
end quad_counter;
