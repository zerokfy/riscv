
/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Tue Mar  6 13:30:22 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module seg7_ctrl ( p_reset , m_clock , data , digit_0 , digit_1 , digit_2 , digit_3 , digit_4 , digit_5 );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] data;
  wire [31:0] data;
  output [7:0] digit_0;
  wire [7:0] digit_0;
  output [7:0] digit_1;
  wire [7:0] digit_1;
  output [7:0] digit_2;
  wire [7:0] digit_2;
  output [7:0] digit_3;
  wire [7:0] digit_3;
  output [7:0] digit_4;
  wire [7:0] digit_4;
  output [7:0] digit_5;
  wire [7:0] digit_5;
  wire [3:0] _dec_data;
  wire [7:0] _dec_seg;
  wire _dec_p_reset;
  wire _dec_m_clock;
  wire [3:0] _dec_5_data;
  wire [7:0] _dec_5_seg;
  wire _dec_5_p_reset;
  wire _dec_5_m_clock;
  wire [3:0] _dec_4_data;
  wire [7:0] _dec_4_seg;
  wire _dec_4_p_reset;
  wire _dec_4_m_clock;
  wire [3:0] _dec_3_data;
  wire [7:0] _dec_3_seg;
  wire _dec_3_p_reset;
  wire _dec_3_m_clock;
  wire [3:0] _dec_2_data;
  wire [7:0] _dec_2_seg;
  wire _dec_2_p_reset;
  wire _dec_2_m_clock;
  wire [3:0] _dec_1_data;
  wire [7:0] _dec_1_seg;
  wire _dec_1_p_reset;
  wire _dec_1_m_clock;
digit_dec dec (.m_clock(m_clock), .p_reset(p_reset), .seg(_dec_seg), .data(_dec_data));
digit_dec dec_5 (.m_clock(m_clock), .p_reset(p_reset), .seg(_dec_5_seg), .data(_dec_5_data));
digit_dec dec_4 (.m_clock(m_clock), .p_reset(p_reset), .seg(_dec_4_seg), .data(_dec_4_data));
digit_dec dec_3 (.m_clock(m_clock), .p_reset(p_reset), .seg(_dec_3_seg), .data(_dec_3_data));
digit_dec dec_2 (.m_clock(m_clock), .p_reset(p_reset), .seg(_dec_2_seg), .data(_dec_2_data));
digit_dec dec_1 (.m_clock(m_clock), .p_reset(p_reset), .seg(_dec_1_seg), .data(_dec_1_data));

   assign  _dec_data = (data[3:0]);
   assign  _dec_p_reset = p_reset;
   assign  _dec_m_clock = m_clock;
   assign  _dec_5_data = (data[23:20]);
   assign  _dec_5_p_reset = p_reset;
   assign  _dec_5_m_clock = m_clock;
   assign  _dec_4_data = (data[19:16]);
   assign  _dec_4_p_reset = p_reset;
   assign  _dec_4_m_clock = m_clock;
   assign  _dec_3_data = (data[15:12]);
   assign  _dec_3_p_reset = p_reset;
   assign  _dec_3_m_clock = m_clock;
   assign  _dec_2_data = (data[11:8]);
   assign  _dec_2_p_reset = p_reset;
   assign  _dec_2_m_clock = m_clock;
   assign  _dec_1_data = (data[7:4]);
   assign  _dec_1_p_reset = p_reset;
   assign  _dec_1_m_clock = m_clock;
   assign  digit_0 = _dec_seg;
   assign  digit_1 = _dec_1_seg;
   assign  digit_2 = _dec_2_seg;
   assign  digit_3 = _dec_3_seg;
   assign  digit_4 = _dec_4_seg;
   assign  digit_5 = _dec_5_seg;
endmodule

/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Tue Mar  6 13:30:22 2018
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Tue Mar  6 13:30:22 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module digit_dec ( p_reset , m_clock , data , seg );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [3:0] data;
  wire [3:0] data;
  output [7:0] seg;
  wire [7:0] seg;
  wire _net_0;
  wire _net_1;
  wire _net_2;
  wire _net_3;
  wire _net_4;
  wire _net_5;
  wire _net_6;
  wire _net_7;
  wire _net_8;
  wire _net_9;
  wire _net_10;
  wire _net_11;
  wire _net_12;
  wire _net_13;
  wire _net_14;
  wire _net_15;

   assign  _net_0 = (data==4'b1111);
   assign  _net_1 = (data==4'b1110);
   assign  _net_2 = (data==4'b1101);
   assign  _net_3 = (data==4'b1100);
   assign  _net_4 = (data==4'b1011);
   assign  _net_5 = (data==4'b1010);
   assign  _net_6 = (data==4'b1001);
   assign  _net_7 = (data==4'b1000);
   assign  _net_8 = (data==4'b0111);
   assign  _net_9 = (data==4'b0110);
   assign  _net_10 = (data==4'b0101);
   assign  _net_11 = (data==4'b0100);
   assign  _net_12 = (data==4'b0011);
   assign  _net_13 = (data==4'b0010);
   assign  _net_14 = (data==4'b0001);
   assign  _net_15 = (data==4'b0000);
   assign  seg = ((_net_15)?8'b00111111:8'b0)|
    ((_net_14)?8'b00000110:8'b0)|
    ((_net_13)?8'b01011011:8'b0)|
    ((_net_12)?8'b01001111:8'b0)|
    ((_net_11)?8'b01100110:8'b0)|
    ((_net_10)?8'b01101101:8'b0)|
    ((_net_9)?8'b01111101:8'b0)|
    ((_net_8)?8'b00100111:8'b0)|
    ((_net_7)?8'b01111111:8'b0)|
    ((_net_6)?8'b01101111:8'b0)|
    ((_net_5)?8'b01110111:8'b0)|
    ((_net_4)?8'b01111100:8'b0)|
    ((_net_3)?8'b00111000:8'b0)|
    ((_net_2)?8'b01011110:8'b0)|
    ((_net_1)?8'b01111001:8'b0)|
    ((_net_0)?8'b01110001:8'b0);
endmodule

/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Tue Mar  6 13:30:22 2018
 Licensed to :EVALUATION USER*/
