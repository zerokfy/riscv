library verilog;
use verilog.vl_types.all;
entity gen_gr is
    port(
        rst_n           : in     vl_logic;
        m_clock         : in     vl_logic;
        rs1_n           : in     vl_logic_vector(4 downto 0);
        rs2_n           : in     vl_logic_vector(4 downto 0);
        rd_n            : in     vl_logic_vector(4 downto 0);
        wd              : in     vl_logic_vector(31 downto 0);
        s1_rd           : out    vl_logic_vector(31 downto 0);
        s2_rd           : out    vl_logic_vector(31 downto 0);
        rs1             : in     vl_logic;
        rs2             : in     vl_logic;
        rd              : in     vl_logic
    );
end gen_gr;
