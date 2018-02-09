/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Tue Feb 06 13:56:58 2018
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module ram_wrap ( p_reset , m_clock , addr , wdata , rden , wren , rdata );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] addr;
  wire [31:0] addr;
  input [31:0] wdata;
  wire [31:0] wdata;
  input rden;
  wire rden;
  input wren;
  wire wren;
  output [31:0] rdata;
  wire [31:0] rdata;
  wire _ram_clock;
  wire [8:0] _ram_address;
  wire [31:0] _ram_data;
  wire _ram_rden;
  wire _ram_wren;
  wire [31:0] _ram_q;
OnChipRAM ram (.q(_ram_q), .clock(_ram_clock), .address(_ram_address), .data(_ram_data), .rden(_ram_rden), .wren(_ram_wren));

   assign  _ram_clock = m_clock;
   assign  _ram_address = (addr[8:0]);
   assign  _ram_data = wdata;
   assign  _ram_rden = rden;
   assign  _ram_wren = wren;
   assign  rdata = _ram_q;
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Tue Feb 06 13:56:58 2018
 Licensed to :EVALUATION USER
*/
