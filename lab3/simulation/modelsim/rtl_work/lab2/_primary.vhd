library verilog;
use verilog.vl_types.all;
entity lab2 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end lab2;