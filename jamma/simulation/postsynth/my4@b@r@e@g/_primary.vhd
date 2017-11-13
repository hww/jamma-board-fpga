library verilog;
use verilog.vl_types.all;
entity my4breg is
    port(
        coinlockout_c   : out    vl_logic_vector(2 downto 1);
        coincounter_c   : out    vl_logic_vector(2 downto 1);
        dd_in           : in     vl_logic_vector(3 downto 0);
        nreset_c_3      : in     vl_logic;
        ndiow_c         : in     vl_logic;
        cmd5n           : in     vl_logic
    );
end my4breg;
