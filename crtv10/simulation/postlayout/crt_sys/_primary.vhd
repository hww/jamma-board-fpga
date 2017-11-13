library verilog;
use verilog.vl_types.all;
entity crt_sys is
    port(
        db              : inout  vl_logic_vector(7 downto 0);
        ma              : out    vl_logic_vector(19 downto 0);
        md              : inout  vl_logic_vector(7 downto 0);
        pixel           : out    vl_logic_vector(3 downto 0);
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        \_reset\        : in     vl_logic;
        ds              : in     vl_logic;
        as              : in     vl_logic;
        \_wr\           : in     vl_logic;
        \_mcs\          : out    vl_logic;
        \_mrd\          : out    vl_logic;
        \_mwr\          : out    vl_logic;
        med_res         : in     vl_logic;
        csync           : out    vl_logic;
        hsync_in        : in     vl_logic;
        vsync_in        : in     vl_logic;
        extsyncon       : in     vl_logic;
        int             : out    vl_logic
    );
end crt_sys;
