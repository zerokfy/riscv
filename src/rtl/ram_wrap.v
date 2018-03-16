
/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Thu Mar 15 23:58:29 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module ram_wrap ( rst_n , m_clock , addr , wdata , rden , wren , rdata );
  input rst_n, m_clock;
  wire rst_n, m_clock;
  input [31:0] addr;
  wire [31:0] addr;
  input [31:0] wdata;
  wire [31:0] wdata;
  input [3:0] rden;
  wire [3:0] rden;
  input [3:0] wren;
  wire [3:0] wren;
  output [31:0] rdata;
  wire [31:0] rdata;
  wire _ram3_clock;
  wire [11:0] _ram3_address;
  wire [7:0] _ram3_data;
  wire _ram3_rden;
  wire _ram3_wren;
  wire [7:0] _ram3_q;
  wire _ram2_clock;
  wire [11:0] _ram2_address;
  wire [7:0] _ram2_data;
  wire _ram2_rden;
  wire _ram2_wren;
  wire [7:0] _ram2_q;
  wire _ram1_clock;
  wire [11:0] _ram1_address;
  wire [7:0] _ram1_data;
  wire _ram1_rden;
  wire _ram1_wren;
  wire [7:0] _ram1_q;
  wire _ram0_clock;
  wire [11:0] _ram0_address;
  wire [7:0] _ram0_data;
  wire _ram0_rden;
  wire _ram0_wren;
  wire [7:0] _ram0_q;
OnChipRAM ram3 (.q(_ram3_q), .clock(_ram3_clock), .address(_ram3_address), .data(_ram3_data), .rden(_ram3_rden), .wren(_ram3_wren));
OnChipRAM ram2 (.q(_ram2_q), .clock(_ram2_clock), .address(_ram2_address), .data(_ram2_data), .rden(_ram2_rden), .wren(_ram2_wren));
OnChipRAM ram1 (.q(_ram1_q), .clock(_ram1_clock), .address(_ram1_address), .data(_ram1_data), .rden(_ram1_rden), .wren(_ram1_wren));
OnChipRAM ram0 (.q(_ram0_q), .clock(_ram0_clock), .address(_ram0_address), .data(_ram0_data), .rden(_ram0_rden), .wren(_ram0_wren));

   assign  _ram3_clock = m_clock;
   assign  _ram3_address = ({(addr[11:2]),2'b11});
   assign  _ram3_data = (wdata[31:24]);
   assign  _ram3_rden = (rden[3]);
   assign  _ram3_wren = (wren[3]);
   assign  _ram2_clock = m_clock;
   assign  _ram2_address = ({(addr[11:2]),2'b10});
   assign  _ram2_data = (wdata[23:16]);
   assign  _ram2_rden = (rden[2]);
   assign  _ram2_wren = (wren[2]);
   assign  _ram1_clock = m_clock;
   assign  _ram1_address = ({(addr[11:2]),2'b01});
   assign  _ram1_data = (wdata[15:8]);
   assign  _ram1_rden = (rden[1]);
   assign  _ram1_wren = (wren[1]);
   assign  _ram0_clock = m_clock;
   assign  _ram0_address = ({(addr[11:2]),2'b00});
   assign  _ram0_data = (wdata[7:0]);
   assign  _ram0_rden = (rden[0]);
   assign  _ram0_wren = (wren[0]);
   assign  rdata = ({_ram3_q,_ram2_q,_ram1_q,_ram0_q});
endmodule

/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Thu Mar 15 23:58:29 2018
 Licensed to :EVALUATION USER*/
