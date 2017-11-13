library verilog;
use verilog.vl_types.all;
entity vga is
    port(
        dvga            : out    vl_logic_vector(7 downto 0);
        avga            : out    vl_logic_vector(7 downto 0);
        pixel           : out    vl_logic_vector(3 downto 0);
        y_9             : in     vl_logic;
        y_16            : in     vl_logic;
        y_15            : in     vl_logic;
        y_8             : in     vl_logic;
        y_5             : in     vl_logic;
        y_14            : in     vl_logic;
        ivideo_c        : in     vl_logic;
        vsync_c         : in     vl_logic;
        wrvgareq        : in     vl_logic;
        hsync_c         : in     vl_logic;
        clk_c           : in     vl_logic;
        y_7             : in     vl_logic;
        pixel_n2        : out    vl_logic
    );
end vga;
