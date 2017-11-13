library verilog;
use verilog.vl_types.all;
entity cgaega is
    generic(
        cga_end_of_line  : integer := 384;
        cga_end_of_frame : integer := 312;
        cga_hsync_begin  : integer := 340;
        cga_hsync_end    : integer := 342;
        cga_vsync_begin  : integer := 250;
        cga_vsync_end    : integer := 254;
        cga_vframe_end   : integer := 240;
        cga_hframe_end   : integer := 320;
        ega_end_of_line  : integer := 384;
        ega_end_of_frame : integer := 312;
        ega_hsync_begin  : integer := 340;
        ega_hsync_end    : integer := 342;
        ega_vsync_begin  : integer := 250;
        ega_vsync_end    : integer := 254;
        ega_vframe_end   : integer := 240;
        ega_hframe_end   : integer := 320
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \access\        : in     vl_logic;
        halfclk         : in     vl_logic;
        egamode         : in     vl_logic;
        dcga            : in     vl_logic_vector(7 downto 0);
        acga            : out    vl_logic_vector(15 downto 0);
        csync           : out    vl_logic;
        video           : out    vl_logic
    );
end cgaega;
