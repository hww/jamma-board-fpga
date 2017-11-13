library verilog;
use verilog.vl_types.all;
entity myrevcounter_1 is
    port(
        ballcnt1q       : out    vl_logic_vector(6 downto 0);
        cnt_6_0         : in     vl_logic;
        cnt_6_1         : in     vl_logic;
        cnt_6_4         : in     vl_logic;
        \ballCnt1q_i[0]\: out    vl_logic;
        y_16            : in     vl_logic;
        s4i             : in     vl_logic;
        s5i             : in     vl_logic;
        nreset_c_1      : in     vl_logic;
        clk_c           : in     vl_logic;
        y_18            : in     vl_logic
    );
end myrevcounter_1;
