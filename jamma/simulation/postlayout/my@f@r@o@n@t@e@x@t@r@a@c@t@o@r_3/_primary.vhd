library verilog;
use verilog.vl_types.all;
entity myfrontextractor_3 is
    port(
        rise            : out    vl_logic_vector(1 downto 0);
        \P_c[4]\        : in     vl_logic;
        nreset_c_1      : in     vl_logic;
        clk_c           : in     vl_logic;
        ndior_c_i_0     : in     vl_logic
    );
end myfrontextractor_3;
