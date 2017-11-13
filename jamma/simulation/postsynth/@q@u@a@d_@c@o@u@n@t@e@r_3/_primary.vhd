library verilog;
use verilog.vl_types.all;
entity quad_counter_3 is
    port(
        p_c             : in     vl_logic_vector(14 downto 13);
        \ballCnt3q_i[0]\: out    vl_logic;
        ballcnt3q_1     : out    vl_logic;
        ballcnt3q_6     : out    vl_logic;
        ballcnt3q_2     : out    vl_logic;
        ballcnt3q_3     : out    vl_logic;
        ballcnt3q_4     : out    vl_logic;
        ballcnt3q_5     : out    vl_logic;
        nreset_c_3      : in     vl_logic;
        ndior_c_i       : in     vl_logic;
        clk_c           : in     vl_logic;
        nreset_c_2      : in     vl_logic;
        ndior_c         : in     vl_logic
    );
end quad_counter_3;
