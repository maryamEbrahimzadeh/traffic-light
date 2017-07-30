library verilog;
use verilog.vl_types.all;
entity D_FF is
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        CLK             : in     vl_logic
    );
end D_FF;
