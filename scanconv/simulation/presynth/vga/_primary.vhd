library verilog;
use verilog.vl_types.all;
entity vga is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        video           : in     vl_logic;
        ivsync          : in     vl_logic;
        ihsync          : in     vl_logic;
        dvga            : out    vl_logic_vector(7 downto 0);
        avga            : out    vl_logic_vector(15 downto 0);
        wrvga           : out    vl_logic;
        wrvgareq        : in     vl_logic;
        notvga          : out    vl_logic;
        lines350        : out    vl_logic
    );
end vga;
