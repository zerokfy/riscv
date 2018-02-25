
/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Sun Feb 25 14:58:55 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module rom_wrap ( p_reset , m_clock , addr , rdata );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] addr;
  wire [31:0] addr;
  output [31:0] rdata;
  wire [31:0] rdata;
  wire _rom_clock;
  wire [9:0] _rom_address;
  wire [31:0] _rom_q;
CodeROM rom (.q(_rom_q), .clock(_rom_clock), .address(_rom_address));

   assign  _rom_clock = m_clock;
   assign  _rom_address = (addr[9:0]);
   assign  rdata = _rom_q;
endmodule

/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Sun Feb 25 14:58:55 2018
 Licensed to :EVALUATION USER*/
