library verilog;
use verilog.vl_types.all;
entity mux_16_1 is
    port(
        \select\        : in     vl_logic_vector(3 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic
    );
end mux_16_1;
