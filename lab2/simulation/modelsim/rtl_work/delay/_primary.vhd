library verilog;
use verilog.vl_types.all;
entity delay is
    generic(
        MAX_COUNT       : integer := 8000000
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        tick            : out    vl_logic
    );
end delay;
