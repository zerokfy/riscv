
/*Produced by NSL Core(version=20180321), IP ARCH, Inc. Sat Apr  7 18:58:55 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module riscv_top ( sysrst_n , clk_50M , led );
  input sysrst_n, clk_50M;
  wire sysrst_n, clk_50M;
  output [7:0] led;
  wire [7:0] led;
  reg [1:0] rst_d;
  reg [7:0] led_buf;
  wire rst_wire;
  wire _core_clk_20M;
  wire _core_rst_n;
  wire [31:0] _core_idata;
  wire [31:0] _core_rdata;
  wire [31:0] _core_iaddr;
  wire [31:0] _core_daddr;
  wire [31:0] _core_wdata;
  wire _core_ecall_led;
  wire _core_ebreak_led;
  wire _core_dmem_r;
  wire _core_dmem_w;
  wire _rom_clock;
  wire [9:0] _rom_address;
  wire [31:0] _rom_q;
  wire _ram_clk_20M;
  wire [31:0] _ram_addr;
  wire [31:0] _ram_wdata;
  wire [3:0] _ram_wren;
  wire [31:0] _ram_rdata;
  wire _pll_areset;
  wire _pll_inclk0;
  wire _pll_c0;
  wire _pll_locked;
  wire _net_0;
PLL pll (.c0(_pll_c0), .locked(_pll_locked), .areset(_pll_areset), .inclk0(_pll_inclk0));
ram_cascade ram (.rdata(_ram_rdata), .clk_20M(_ram_clk_20M), .addr(_ram_addr), .wdata(_ram_wdata), .wren(_ram_wren));
code_rom rom (.q(_rom_q), .clock(_rom_clock), .address(_rom_address));
rv32i_core core (.dmem_w(_core_dmem_w), .dmem_r(_core_dmem_r), .iaddr(_core_iaddr), .daddr(_core_daddr), .wdata(_core_wdata), .ecall_led(_core_ecall_led), .ebreak_led(_core_ebreak_led), .clk_20M(_core_clk_20M), .rst_n(_core_rst_n), .idata(_core_idata), .rdata(_core_rdata));

   assign  rst_wire = (rst_d[1]);
   assign  _core_clk_20M = _pll_c0;
   assign  _core_rst_n = _pll_locked;
   assign  _core_idata = _rom_q;
   assign  _core_rdata = _ram_rdata;
   assign  _rom_clock = _pll_c0;
   assign  _rom_address = (_core_iaddr[9:0]);
   assign  _ram_clk_20M = _pll_c0;
   assign  _ram_addr = _core_daddr;
   assign  _ram_wdata = _core_wdata;
   assign  _ram_wren = ((_core_dmem_r)?4'b0000:4'b0)|
    ((_core_dmem_w)?4'b1111:4'b0);
   assign  _pll_areset = rst_wire;
   assign  _pll_inclk0 = clk_50M;
   assign  _net_0 = (_core_daddr==32'b00000000000000000001000000000000);
   assign  led = led_buf;
always @(posedge clk_50M or negedge sysrst_n)
  begin
if (~sysrst_n)
     rst_d <= 2'b00;
else   rst_d <= ({(rst_d[0]),1'b1});
end
always @(posedge clk_50M or negedge sysrst_n)
  begin
if (~sysrst_n)
     led_buf <= 8'b00000000;
else if (_net_0)
      led_buf <= (_ram_rdata[7:0]);
end
endmodule

/*Produced by NSL Core(version=20180321), IP ARCH, Inc. Sat Apr  7 18:58:55 2018
 Licensed to :EVALUATION USER*/
