library verilog;
use verilog.vl_types.all;
entity riscv_top is
    port(
        rst_n           : in     vl_logic;
        m_clock         : in     vl_logic;
        SW              : in     vl_logic_vector(2 downto 0);
        led             : out    vl_logic_vector(7 downto 0)
    );
end riscv_top;
