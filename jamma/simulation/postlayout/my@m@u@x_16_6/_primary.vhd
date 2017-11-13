library verilog;
use verilog.vl_types.all;
entity mymux_16_6 is
    port(
        datainput       : out    vl_logic_vector(6 downto 0);
        ballcnt3q       : in     vl_logic_vector(6 downto 1);
        bcounter        : in     vl_logic_vector(3 downto 0);
        ballcnt1q       : in     vl_logic_vector(6 downto 0);
        ballcnt2q       : in     vl_logic_vector(6 downto 1);
        ballcnt0q       : in     vl_logic_vector(6 downto 0);
        bcounter_0      : in     vl_logic_vector(3 downto 1);
        p_c             : in     vl_logic_vector(28 downto 0);
        \ballCnt3q_i[0]\: in     vl_logic;
        \ballCnt2q_i[0]\: in     vl_logic;
        \bCounter_i[0]\ : in     vl_logic
    );
end mymux_16_6;
