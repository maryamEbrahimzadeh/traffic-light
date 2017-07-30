library verilog;
use verilog.vl_types.all;
entity Mux4_2 is
    port(
        i0              : in     vl_logic;
        i1              : in     vl_logic;
        i2              : in     vl_logic;
        i3              : in     vl_logic;
        i4              : in     vl_logic;
        i5              : in     vl_logic;
        i6              : in     vl_logic;
        i7              : in     vl_logic;
        \select\        : in     vl_logic;
        y0              : out    vl_logic;
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        y3              : out    vl_logic
    );
end Mux4_2;
