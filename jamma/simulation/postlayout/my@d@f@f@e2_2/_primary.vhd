library verilog;
use verilog.vl_types.all;
entity mydffe2_2 is
    port(
        da_c            : in     vl_logic_vector(1 downto 0);
        dd_in           : in     vl_logic_vector(7 downto 0);
        key2            : out    vl_logic;
        nreset_c_4      : in     vl_logic;
        ndiow_c         : in     vl_logic;
        bdevice         : in     vl_logic;
        y_10            : in     vl_logic;
        cmd6n_0         : in     vl_logic
    );
end mydffe2_2;
