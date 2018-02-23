/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Thu Feb 22 15:20:57 2018
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module riscv_top ( p_reset , m_clock , MODE , seg_7_0 , seg_7_1 , seg_7_2 , seg_7_3 , seg_7_4 , seg_7_5 );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input MODE;
  wire MODE;
  output [7:0] seg_7_0;
  wire [7:0] seg_7_0;
  output [7:0] seg_7_1;
  wire [7:0] seg_7_1;
  output [7:0] seg_7_2;
  wire [7:0] seg_7_2;
  output [7:0] seg_7_3;
  wire [7:0] seg_7_3;
  output [7:0] seg_7_4;
  wire [7:0] seg_7_4;
  output [7:0] seg_7_5;
  wire [7:0] seg_7_5;
  reg [1:0] mode_syn;
  wire [31:0] _core_idata;
  wire [31:0] _core_rdata;
  wire [31:0] _core_iaddr;
  wire [31:0] _core_daddr;
  wire [31:0] _core_wdata;
  wire _core_dmem_read;
  wire _core_dmem_write;
  wire _core_p_reset;
  wire _core_m_clock;
  wire [31:0] _rom_addr;
  wire [31:0] _rom_rdata;
  wire _rom_p_reset;
  wire _rom_m_clock;
  wire [31:0] _ram_addr;
  wire [31:0] _ram_wdata;
  wire _ram_rden;
  wire _ram_wren;
  wire [31:0] _ram_rdata;
  wire _ram_p_reset;
  wire _ram_m_clock;
  wire [31:0] _segc_data;
  wire [7:0] _segc_digit_0;
  wire [7:0] _segc_digit_1;
  wire [7:0] _segc_digit_2;
  wire [7:0] _segc_digit_3;
  wire [7:0] _segc_digit_4;
  wire [7:0] _segc_digit_5;
  wire _segc_p_reset;
  wire _segc_m_clock;
  wire _net_0;
  wire _net_1;
seg7_ctrl segc (.m_clock(m_clock), .p_reset(p_reset), .digit_0(_segc_digit_0), .digit_1(_segc_digit_1), .digit_2(_segc_digit_2), .digit_3(_segc_digit_3), .digit_4(_segc_digit_4), .digit_5(_segc_digit_5), .data(_segc_data));
ram_wrap ram (.m_clock(m_clock), .p_reset(p_reset), .rdata(_ram_rdata), .addr(_ram_addr), .wdata(_ram_wdata), .rden(_ram_rden), .wren(_ram_wren));
rom_wrap rom (.m_clock(m_clock), .p_reset(p_reset), .rdata(_rom_rdata), .addr(_rom_addr));
rv32i_core core (.m_clock(m_clock), .p_reset(p_reset), .dmem_write(_core_dmem_write), .dmem_read(_core_dmem_read), .iaddr(_core_iaddr), .daddr(_core_daddr), .wdata(_core_wdata), .idata(_core_idata), .rdata(_core_rdata));

   assign  _core_idata = _rom_rdata;
   assign  _core_rdata = ((_core_dmem_read)?_ram_rdata:32'b0)|
    _ram_rdata;
   assign  _core_p_reset = p_reset;
   assign  _core_m_clock = m_clock;
   assign  _rom_addr = _core_iaddr;
   assign  _rom_p_reset = p_reset;
   assign  _rom_m_clock = m_clock;
   assign  _ram_addr = ((_core_dmem_write)?_core_daddr:32'b0)|
    ((_core_dmem_read)?_core_daddr:32'b0)|
    ((_net_1)?32'b00000000000000000000001000000000:32'b0)|
    ((_net_0)?_core_daddr:32'b0);
   assign  _ram_wdata = ((_core_dmem_write)?_core_wdata:32'b0)|
    ((_net_0)?_core_wdata:32'b0);
   assign  _ram_rden = _core_dmem_read;
   assign  _ram_wren = _core_dmem_write;
   assign  _ram_p_reset = p_reset;
   assign  _ram_m_clock = m_clock;
   assign  _segc_data = _ram_rdata;
   assign  _segc_p_reset = p_reset;
   assign  _segc_m_clock = m_clock;
   assign  _net_0 = (~(mode_syn[1]));
   assign  _net_1 = (mode_syn[1]);
   assign  seg_7_0 = ((_net_1)?_segc_digit_0:8'b0)|
    ((_net_0)?8'b01000000:8'b0);
   assign  seg_7_1 = ((_net_1)?_segc_digit_1:8'b0)|
    ((_net_0)?8'b01000000:8'b0);
   assign  seg_7_2 = ((_net_1)?_segc_digit_2:8'b0)|
    ((_net_0)?8'b01000000:8'b0);
   assign  seg_7_3 = ((_net_1)?_segc_digit_3:8'b0)|
    ((_net_0)?8'b01000000:8'b0);
   assign  seg_7_4 = ((_net_1)?_segc_digit_4:8'b0)|
    ((_net_0)?8'b01000000:8'b0);
   assign  seg_7_5 = ((_net_1)?_segc_digit_5:8'b0)|
    ((_net_0)?8'b01000000:8'b0);
always @(posedge m_clock)
  begin
  mode_syn <= ({(mode_syn[0]),MODE});
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Thu Feb 22 15:20:57 2018
 Licensed to :EVALUATION USER
*/
