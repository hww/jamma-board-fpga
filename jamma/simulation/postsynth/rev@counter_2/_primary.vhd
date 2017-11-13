library verilog;
use verilog.vl_types.all;
entity revcounter_2 is
    port(
        ballcnt2q       : out    vl_logic_vector(6 downto 0);
        cnt_6_0         : in     vl_logic;
        cnt_6_1         : in     vl_logic;
        cnt_6_4         : in     vl_logic;
        \ballCnt2q_i[0]\: out    vl_logic;
        y_19            : in     vl_logic;
        s4i             : in     vl_logic;
        s5i             : in     vl_logic;
        nreset_c_2      : in     vl_logic;
        clk_c           : in     vl_logic;
        y_21            : in     vl_logic
    );
end revcounter_2;
