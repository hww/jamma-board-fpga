library verilog;
use verilog.vl_types.all;
entity tb_clock_minmax is
    generic(
        initialize       : integer := 0
    );
    port(
        tb_status       : in     vl_logic_vector(1 downto 0);
        clk             : out    vl_logic;
        offset_bits     : in     vl_logic_vector(63 downto 0);
        period_bits     : in     vl_logic_vector(63 downto 0);
        duty_bits       : in     vl_logic_vector(63 downto 0);
        minlh_bits      : in     vl_logic_vector(63 downto 0);
        maxlh_bits      : in     vl_logic_vector(63 downto 0);
        minhl_bits      : in     vl_logic_vector(63 downto 0);
        maxhl_bits      : in     vl_logic_vector(63 downto 0);
        jrise_bits      : in     vl_logic_vector(63 downto 0);
        jfall_bits      : in     vl_logic_vector(63 downto 0)
    );
end tb_clock_minmax;
