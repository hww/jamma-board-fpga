library verilog;
use verilog.vl_types.all;
entity quad_tmr is
    port(
        qa              : out    vl_logic_vector(3 downto 0);
        \b_c[0]\        : in     vl_logic;
        \a_c[0]\        : in     vl_logic;
        onemks_1        : in     vl_logic;
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        onemks_0        : in     vl_logic
    );
end quad_tmr;
