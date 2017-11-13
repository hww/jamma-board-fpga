library verilog;
use verilog.vl_types.all;
entity mydffe is
    port(
        \dd_in[4]\      : in     vl_logic;
        bdevice         : out    vl_logic;
        nreset_c_3      : in     vl_logic;
        ndiow_c         : in     vl_logic;
        csdevreg        : in     vl_logic
    );
end mydffe;
