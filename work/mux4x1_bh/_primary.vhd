library verilog;
use verilog.vl_types.all;
entity mux4x1_bh is
    port(
        i0              : in     vl_logic;
        i1              : in     vl_logic;
        i2              : in     vl_logic;
        i3              : in     vl_logic;
        i4              : in     vl_logic;
        \select\        : in     vl_logic_vector(0 to 2);
        y               : out    vl_logic
    );
end mux4x1_bh;
