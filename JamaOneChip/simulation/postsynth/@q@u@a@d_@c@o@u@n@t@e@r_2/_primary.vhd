library verilog;
use verilog.vl_types.all;
entity quad_counter_2 is
    port(
        p_c             : in     vl_logic_vector(12 downto 11);
        ballcnt2q       : out    vl_logic_vector(6 downto 1);
        ndior_c_i       : in     vl_logic;
        nreset_c        : in     vl_logic;
        clk_c           : in     vl_logic;
        ndior_c_i_0     : in     vl_logic;
        n_217           : out    vl_logic
    );
end quad_counter_2;
