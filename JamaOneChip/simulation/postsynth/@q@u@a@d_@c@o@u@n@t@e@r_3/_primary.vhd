library verilog;
use verilog.vl_types.all;
entity quad_counter_3 is
    port(
        p_c             : in     vl_logic_vector(14 downto 13);
        ballcnt3q       : out    vl_logic_vector(6 downto 0);
        ndior_c_i       : in     vl_logic;
        nreset_c        : in     vl_logic;
        clk_c           : in     vl_logic;
        ndior_c_i_0     : in     vl_logic
    );
end quad_counter_3;
