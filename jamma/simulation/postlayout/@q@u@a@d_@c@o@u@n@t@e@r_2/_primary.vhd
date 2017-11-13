library verilog;
use verilog.vl_types.all;
entity quad_counter_2 is
    port(
        p_c             : in     vl_logic_vector(12 downto 11);
        \ballCnt2q_i[0]\: out    vl_logic;
        ballcnt2q_1     : out    vl_logic;
        ballcnt2q_6     : out    vl_logic;
        ballcnt2q_2     : out    vl_logic;
        ballcnt2q_3     : out    vl_logic;
        ballcnt2q_4     : out    vl_logic;
        ballcnt2q_5     : out    vl_logic;
        nreset_c_2      : in     vl_logic;
        ndior_c_i_0     : in     vl_logic;
        clk_c           : in     vl_logic;
        nreset_c_1      : in     vl_logic;
        ndior_c_i       : in     vl_logic;
        ndior_c         : in     vl_logic
    );
end quad_counter_2;
