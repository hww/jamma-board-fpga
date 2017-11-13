library verilog;
use verilog.vl_types.all;
entity quad_counter_1 is
    port(
        \P_c[3]\        : in     vl_logic;
        \ballCnt1q_i[0]\: out    vl_logic;
        ballcnt1q_6     : out    vl_logic;
        ballcnt1q_5     : out    vl_logic;
        ballcnt1q_4     : out    vl_logic;
        ballcnt1q_3     : out    vl_logic;
        ballcnt1q_2     : out    vl_logic;
        ballcnt1q_1     : out    vl_logic;
        ndior_c_i       : in     vl_logic;
        ndior_c_i_0_0   : in     vl_logic;
        n_163           : in     vl_logic;
        nreset_c        : in     vl_logic;
        clk_c           : in     vl_logic;
        ndior_c_i_0     : in     vl_logic
    );
end quad_counter_1;
