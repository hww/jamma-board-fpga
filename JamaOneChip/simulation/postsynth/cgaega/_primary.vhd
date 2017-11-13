library verilog;
use verilog.vl_types.all;
entity cgaega is
    port(
        acga            : out    vl_logic_vector(6 downto 0);
        nreset_c        : in     vl_logic;
        clk_c           : in     vl_logic;
        y_12            : in     vl_logic;
        y_6             : in     vl_logic
    );
end cgaega;
