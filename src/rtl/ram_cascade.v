
/*Produced by NSL Core(version=20180321), IP ARCH, Inc. Sat Apr  7 18:58:55 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module ram_cascade ( clk_20M , addr , wdata , wren , rdata );
  input clk_20M;
  wire clk_20M;
  input [31:0] addr;
  wire [31:0] addr;
  input [31:0] wdata;
  wire [31:0] wdata;
  input [3:0] wren;
  wire [3:0] wren;
  output [31:0] rdata;
  wire [31:0] rdata;
  wire _ram3_clock;
  wire [11:0] _ram3_address;
  wire [7:0] _ram3_data;
  wire _ram3_wren;
  wire [7:0] _ram3_q;
  wire _ram2_clock;
  wire [11:0] _ram2_address;
  wire [7:0] _ram2_data;
  wire _ram2_wren;
  wire [7:0] _ram2_q;
  wire _ram1_clock;
  wire [11:0] _ram1_address;
  wire [7:0] _ram1_data;
  wire _ram1_wren;
  wire [7:0] _ram1_q;
  wire _ram0_clock;
  wire [11:0] _ram0_address;
  wire [7:0] _ram0_data;
  wire _ram0_wren;
  wire [7:0] _ram0_q;
data_ram ram3 (.q(_ram3_q), .clock(_ram3_clock), .address(_ram3_address), .data(_ram3_data), .wren(_ram3_wren));
data_ram ram2 (.q(_ram2_q), .clock(_ram2_clock), .address(_ram2_address), .data(_ram2_data), .wren(_ram2_wren));
data_ram ram1 (.q(_ram1_q), .clock(_ram1_clock), .address(_ram1_address), .data(_ram1_data), .wren(_ram1_wren));
data_ram ram0 (.q(_ram0_q), .clock(_ram0_clock), .address(_ram0_address), .data(_ram0_data), .wren(_ram0_wren));

   assign  _ram3_clock = clk_20M;
   assign  _ram3_address = ({(addr[11:2]),2'b11});
   assign  _ram3_data = (wdata[31:24]);
   assign  _ram3_wren = (wren[3]);
   assign  _ram2_clock = clk_20M;
   assign  _ram2_address = ({(addr[11:2]),2'b10});
   assign  _ram2_data = (wdata[23:16]);
   assign  _ram2_wren = (wren[2]);
   assign  _ram1_clock = clk_20M;
   assign  _ram1_address = ({(addr[11:2]),2'b01});
   assign  _ram1_data = (wdata[15:8]);
   assign  _ram1_wren = (wren[1]);
   assign  _ram0_clock = clk_20M;
   assign  _ram0_address = ({(addr[11:2]),2'b00});
   assign  _ram0_data = (wdata[7:0]);
   assign  _ram0_wren = (wren[0]);
   assign  rdata = ({_ram3_q,_ram2_q,_ram1_q,_ram0_q});
endmodule

/*Produced by NSL Core(version=20180321), IP ARCH, Inc. Sat Apr  7 18:58:55 2018
 Licensed to :EVALUATION USER*/
