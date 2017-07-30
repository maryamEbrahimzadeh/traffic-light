library verilog;
use verilog.vl_types.all;
entity Counter125 is
    port(
        Clear           : in     vl_logic;
        Count           : in     vl_logic;
        Q               : out    vl_logic_vector(0 to 6);
        Clk             : in     vl_logic
    );
end Counter125;
