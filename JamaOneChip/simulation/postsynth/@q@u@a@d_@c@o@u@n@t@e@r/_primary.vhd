library verilog;
use verilog.vl_types.all;
entity quad_counter is
    port(
        ballcnt0q       : out    vl_logic_vector(6 downto 0);
        \P_c[1]\        : in     vl_logic;
        n_276           : in     vl_logic;
        nreset_c        : in     vl_logic;
        clk_c           : in     vl_logic;
        ndior_c_i_0     : in     vl_logic
    );
end quad_counter;
