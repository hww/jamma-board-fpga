library verilog;
use verilog.vl_types.all;
entity quad_counter is
    port(
        p_c             : in     vl_logic_vector(2 downto 1);
        ballcnt0q       : out    vl_logic_vector(6 downto 0);
        ndior_c_i_0     : in     vl_logic;
        clk_c           : in     vl_logic;
        nreset_c_0      : in     vl_logic;
        ndior_c         : in     vl_logic
    );
end quad_counter;
