library verilog;
use verilog.vl_types.all;
entity quad_counter_1 is
    port(
        p_c             : in     vl_logic_vector(4 downto 3);
        ballcnt1q       : out    vl_logic_vector(6 downto 0);
        ndior_c_i_0     : in     vl_logic;
        clk_c           : in     vl_logic;
        nreset_c_1      : in     vl_logic;
        nreset_c_0      : in     vl_logic;
        ndior_c         : in     vl_logic
    );
end quad_counter_1;
