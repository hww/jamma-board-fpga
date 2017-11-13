library verilog;
use verilog.vl_types.all;
entity vga is
    port(
        clk             : in     vl_logic;
        video           : in     vl_logic;
        hsync           : in     vl_logic;
        vsync           : in     vl_logic;
        dvga            : out    vl_logic_vector(7 downto 0);
        avga            : out    vl_logic_vector(15 downto 0);
        wrvga           : out    vl_logic;
        wrvgareq        : in     vl_logic
    );
end vga;
