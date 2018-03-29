
/*Produced by NSL Core(version=20180302), IP ARCH, Inc. Thu Mar 22 19:59:23 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module rom_wrap ( rst_n , m_clock , addr , rdata );
  input rst_n, m_clock;
  wire rst_n, m_clock;
  input [31:0] addr;
  wire [31:0] addr;
  output [31:0] rdata;
  wire [31:0] rdata;
  wire _rom_clock;
  wire [9:0] _rom_address;
  wire [31:0] _rom_q;
CodeROM rom (.q(_rom_q), .clock(_rom_clock), .address(_rom_address));

   assign  _rom_clock = m_clock;
   assign  _rom_address = (addr[11:2]);
   assign  rdata = _rom_q;
endmodule

/*Produced by NSL Core(version=20180302), IP ARCH, Inc. Thu Mar 22 19:59:23 2018
 Licensed to :EVALUATION USER*/
