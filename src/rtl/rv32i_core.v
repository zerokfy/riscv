
/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Sun Feb 25 14:58:55 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module rv32i_core ( p_reset , m_clock , idata , rdata , iaddr , daddr , wdata , dmem_write , dmem_read );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] idata;
  wire [31:0] idata;
  input [31:0] rdata;
  wire [31:0] rdata;
  output [31:0] iaddr;
  wire [31:0] iaddr;
  output [31:0] daddr;
  wire [31:0] daddr;
  output [31:0] wdata;
  wire [31:0] wdata;
  output dmem_write;
  wire dmem_write;
  output dmem_read;
  wire dmem_read;
  reg [31:0] pc;
  reg rst_d;
  reg [31:0] inst;
  reg [4:0] rs1;
  reg [4:0] rs2;
  reg [4:0] rd;
  reg [11:0] imm12;
  reg [19:0] imm;
  reg [7:0] order;
  reg ift;
  reg dec;
  reg exer;
  reg exei_1;
  reg exei_2;
  reg exei_jalr;
  reg exes;
  reg exeb;
  reg exeu;
  reg exej;
  wire [4:0] _gr_rs1_n;
  wire [4:0] _gr_rs2_n;
  wire [4:0] _gr_rd_n;
  wire [31:0] _gr_wd;
  wire [31:0] _gr_s1_rd;
  wire [31:0] _gr_s2_rd;
  wire [31:0] _gr_s3_rd;
  wire _gr_rs1;
  wire _gr_rs2;
  wire _gr_rd;
  wire _gr_p_reset;
  wire _gr_m_clock;
  wire _proc_exej_set;
  wire _proc_exej_reset;
  wire _proc_exeu_set;
  wire _proc_exeu_reset;
  wire _proc_exeb_set;
  wire _proc_exeb_reset;
  wire _proc_exes_set;
  wire _proc_exes_reset;
  wire _proc_exei_jalr_set;
  wire _proc_exei_jalr_reset;
  wire _proc_exei_2_set;
  wire _proc_exei_2_reset;
  wire _proc_exei_1_set;
  wire _proc_exei_1_reset;
  wire _proc_exer_set;
  wire _proc_exer_reset;
  wire _proc_dec_set;
  wire _proc_dec_reset;
  wire _proc_ift_set;
  wire _proc_ift_reset;
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
  wire _net_16;
  wire _net_17;
  wire _net_18;
  wire _net_19;
  wire _net_20;
  wire _net_21;
  wire _net_22;
  wire _net_23;
  wire _net_24;
  wire _net_25;
  wire _net_26;
  wire _net_27;
  wire _net_28;
  wire _net_29;
  wire _net_30;
  wire _net_31;
  wire _net_32;
  wire _net_33;
  wire _net_34;
  wire _net_35;
  wire _net_36;
  wire _net_37;
  wire _net_38;
  wire _net_39;
  wire _net_40;
  wire _net_41;
  wire _net_42;
  wire _net_43;
  wire _net_44;
  wire [30:0] _net_45;
  wire _net_46;
  wire _net_47;
  wire _net_48;
  wire _net_49;
  wire _net_50;
  wire _net_51;
  wire _net_52;
  wire _net_53;
  wire _net_54;
  wire _net_55;
  wire _net_56;
  wire _net_57;
  wire _net_58;
  wire _net_59;
  wire _net_60;
  wire _net_61;
  wire _net_62;
  wire _net_63;
  wire _net_64;
  wire [11:0] _net_65;
  wire _net_66;
  wire _net_67;
  wire _net_68;
  wire _net_69;
  wire [31:0] _net_70;
  wire [31:0] _net_71;
  wire _net_72;
  wire [11:0] _net_73;
  wire _net_74;
  wire [11:0] _net_75;
  wire _net_76;
  wire _net_77;
  wire _net_78;
  wire _net_79;
  wire _net_80;
  wire _net_81;
  wire _net_82;
  wire _net_83;
  wire _net_84;
  wire [12:0] _net_85;
  wire _net_86;
  wire _net_87;
  wire [12:0] _net_88;
  wire _net_89;
  wire _net_90;
  wire [12:0] _net_91;
  wire _net_92;
  wire _net_93;
  wire _net_94;
  wire [12:0] _net_95;
  wire _net_96;
  wire _net_97;
  wire [12:0] _net_98;
  wire _net_99;
  wire _net_100;
  wire [12:0] _net_101;
  wire _net_102;
  wire _net_103;
  wire [12:0] _net_104;
  wire _net_105;
  wire _net_106;
  wire [12:0] _net_107;
  wire _net_108;
  wire _net_109;
  wire _net_110;
  wire [20:0] _net_111;
gen_gr gr (.m_clock(m_clock), .p_reset(p_reset), .rd(_gr_rd), .rs2(_gr_rs2), .rs1(_gr_rs1), .s1_rd(_gr_s1_rd), .s2_rd(_gr_s2_rd), .s3_rd(_gr_s3_rd), .rs1_n(_gr_rs1_n), .rs2_n(_gr_rs2_n), .rd_n(_gr_rd_n), .wd(_gr_wd));

   assign  _gr_rs1_n = (((exeb&_net_105))?rs1:5'b0)|
    (((exeb&_net_102))?rs1:5'b0)|
    (((exeb&_net_99))?rs1:5'b0)|
    (((exeb&_net_96))?rs1:5'b0)|
    ((((exeb&_net_89)&_net_93))?rs1:5'b0)|
    (((exeb&_net_89))?rs1:5'b0)|
    (((exeb&_net_89))?rs1:5'b0)|
    (((exeb&_net_89))?rs1:5'b0)|
    ((((exeb&_net_82)&_net_86))?rs1:5'b0)|
    (((exeb&_net_82))?rs1:5'b0)|
    (((exeb&_net_82))?rs1:5'b0)|
    (((exeb&_net_82))?rs1:5'b0)|
    (((exes&_net_81))?rs1:5'b0)|
    (((exes&_net_80))?rs1:5'b0)|
    (((exes&_net_79))?rs1:5'b0)|
    (((exei_2&_net_78))?rs1:5'b0)|
    (((exei_2&_net_77))?rs1:5'b0)|
    (((exei_2&_net_76))?rs1:5'b0)|
    (((exei_2&_net_74))?rs1:5'b0)|
    (((exei_2&_net_72))?rs1:5'b0)|
    ((exei_jalr)?rs1:5'b0)|
    (((exei_1&_net_69))?rs1:5'b0)|
    (((exei_1&_net_67))?rs1:5'b0)|
    (((exei_1&_net_64))?rs1:5'b0)|
    (((exei_1&_net_63))?rs1:5'b0)|
    (((exei_1&_net_62))?rs1:5'b0)|
    (((exei_1&_net_61))?rs1:5'b0)|
    (((exer&_net_60))?rs1:5'b0)|
    (((exer&_net_59))?rs1:5'b0)|
    (((exer&_net_58))?rs1:5'b0)|
    (((exer&_net_57))?rs1:5'b0)|
    (((exer&_net_56))?rs1:5'b0)|
    (((exer&_net_55))?rs1:5'b0)|
    ((((exer&_net_50)&_net_53))?rs1:5'b0)|
    (((exer&_net_50))?rs1:5'b0)|
    (((exer&_net_50))?rs1:5'b0)|
    (((exer&_net_50))?rs1:5'b0)|
    (((exer&_net_48))?rs1:5'b0)|
    (((exer&_net_47))?rs1:5'b0)|
    ((((exer&_net_43)&_net_46))?rs1:5'b0)|
    (((exer&_net_43))?rs1:5'b0)|
    ((((exer&_net_43)&_net_44))?rs1:5'b0)|
    (((exer&_net_43))?rs1:5'b0);
   assign  _gr_rs2_n = (((exeb&_net_105))?rs2:5'b0)|
    (((exeb&_net_102))?rs2:5'b0)|
    (((exeb&_net_99))?rs2:5'b0)|
    (((exeb&_net_96))?rs2:5'b0)|
    ((((exeb&_net_89)&_net_93))?rs2:5'b0)|
    (((exeb&_net_89))?rs2:5'b0)|
    (((exeb&_net_89))?rs2:5'b0)|
    (((exeb&_net_89))?rs2:5'b0)|
    ((((exeb&_net_82)&_net_86))?rs2:5'b0)|
    (((exeb&_net_82))?rs2:5'b0)|
    (((exeb&_net_82))?rs2:5'b0)|
    (((exeb&_net_82))?rs2:5'b0)|
    (((exes&_net_81))?rs2:5'b0)|
    (((exes&_net_80))?rs2:5'b0)|
    (((exes&_net_79))?rs2:5'b0)|
    (((exer&_net_60))?rs2:5'b0)|
    (((exer&_net_59))?rs2:5'b0)|
    (((exer&_net_58))?rs2:5'b0)|
    (((exer&_net_57))?rs2:5'b0)|
    (((exer&_net_56))?rs2:5'b0)|
    (((exer&_net_55))?rs2:5'b0)|
    ((((exer&_net_50)&_net_53))?rs2:5'b0)|
    (((exer&_net_50))?rs2:5'b0)|
    (((exer&_net_50))?rs2:5'b0)|
    (((exer&_net_50))?rs2:5'b0)|
    (((exer&_net_48))?rs2:5'b0)|
    (((exer&_net_47))?rs2:5'b0)|
    ((((exer&_net_43)&_net_46))?rs2:5'b0)|
    ((((exer&_net_43)&_net_44))?rs2:5'b0);
   assign  _gr_rd_n = (((exej&_net_110))?rd:5'b0)|
    (((exeu&_net_109))?rd:5'b0)|
    (((exeu&_net_108))?rd:5'b0)|
    (((exei_2&_net_78))?rd:5'b0)|
    (((exei_2&_net_77))?rd:5'b0)|
    (((exei_2&_net_76))?rd:5'b0)|
    (((exei_2&_net_74))?rd:5'b0)|
    (((exei_2&_net_72))?rd:5'b0)|
    ((exei_jalr)?rd:5'b0)|
    (((exei_1&_net_69))?rd:5'b0)|
    (((exei_1&_net_67))?rd:5'b0)|
    (((exei_1&_net_64))?rd:5'b0)|
    (((exei_1&_net_63))?rd:5'b0)|
    (((exei_1&_net_62))?rd:5'b0)|
    (((exei_1&_net_61))?rd:5'b0)|
    (((exer&_net_60))?rd:5'b0)|
    (((exer&_net_59))?rd:5'b0)|
    (((exer&_net_58))?rd:5'b0)|
    (((exer&_net_57))?rd:5'b0)|
    (((exer&_net_56))?rd:5'b0)|
    (((exer&_net_55))?rd:5'b0)|
    ((((exer&_net_50)&_net_53))?rd:5'b0)|
    ((((exer&_net_50)&_net_52))?rd:5'b0)|
    ((((exer&_net_50)&_net_51))?rd:5'b0)|
    (((exer&_net_48))?rd:5'b0)|
    (((exer&_net_47))?rd:5'b0)|
    ((((exer&_net_43)&_net_46))?rd:5'b0)|
    ((((exer&_net_43)&_net_44))?rd:5'b0);
   assign  _gr_wd = (((exej&_net_110))?(pc+32'b00000000000000000000000000000001):32'b0)|
    (((exeu&_net_109))?(pc+({imm,12'b000000000000})):32'b0)|
    (((exeu&_net_108))?({imm,12'b000000000000}):32'b0)|
    (((exei_2&_net_78))?({24'b000000000000000000000000,(rdata[7:0])}):32'b0)|
    (((exei_2&_net_77))?({16'b0000000000000000,(rdata[15:0])}):32'b0)|
    (((exei_2&_net_76))?rdata:32'b0)|
    (((exei_2&_net_74))?rdata:32'b0)|
    (((exei_2&_net_72))?({16'b0000000000000000,(rdata[15:0])}):32'b0)|
    ((exei_jalr)?(pc+32'b00000000000000000000000000000100):32'b0)|
    (((exei_1&_net_69))?(_net_70[31:0]):32'b0)|
    (((exei_1&_net_67))?({31'b0000000000000000000000000000000,_net_68}):32'b0)|
    (((exei_1&_net_64))?({31'b0000000000000000000000000000000,_net_66}):32'b0)|
    (((exei_1&_net_63))?(_gr_s1_rd^({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_1&_net_62))?(_gr_s1_rd|({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_1&_net_61))?(_gr_s1_rd&({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exer&_net_60))?(_gr_s1_rd+_gr_s2_rd):32'b0)|
    (((exer&_net_59))?(_gr_s1_rd-_gr_s2_rd):32'b0)|
    (((exer&_net_58))?(_gr_s1_rd&_gr_s2_rd):32'b0)|
    (((exer&_net_57))?(_gr_s1_rd|_gr_s2_rd):32'b0)|
    (((exer&_net_56))?(_gr_s1_rd^_gr_s2_rd):32'b0)|
    (((exer&_net_55))?(_gr_s1_rd<<_gr_s2_rd):32'b0)|
    ((((exer&_net_50)&_net_53))?({31'b0000000000000000000000000000000,_net_54}):32'b0)|
    ((((exer&_net_50)&_net_52))?32'b00000000000000000000000000000001:32'b0)|
    ((((exer&_net_50)&_net_51))?32'b00000000000000000000000000000000:32'b0)|
    (((exer&_net_48))?({31'b0000000000000000000000000000000,_net_49}):32'b0)|
    (((exer&_net_47))?(_gr_s1_rd>>_gr_s2_rd):32'b0)|
    ((((exer&_net_43)&_net_46))?(_gr_s1_rd>>_gr_s2_rd):32'b0)|
    ((((exer&_net_43)&_net_44))?({1'b1,_net_45}):32'b0);
   assign  _gr_rs1 = (exeb&_net_105)|
    (exeb&_net_102)|
    (exeb&_net_99)|
    (exeb&_net_96)|
    ((exeb&_net_89)&_net_93)|
    (exeb&_net_89)|
    (exeb&_net_89)|
    (exeb&_net_89)|
    ((exeb&_net_82)&_net_86)|
    (exeb&_net_82)|
    (exeb&_net_82)|
    (exeb&_net_82)|
    (exes&_net_81)|
    (exes&_net_80)|
    (exes&_net_79)|
    (exei_2&_net_78)|
    (exei_2&_net_77)|
    (exei_2&_net_76)|
    (exei_2&_net_74)|
    (exei_2&_net_72)|
    exei_jalr|
    (exei_1&_net_69)|
    (exei_1&_net_67)|
    (exei_1&_net_64)|
    (exei_1&_net_63)|
    (exei_1&_net_62)|
    (exei_1&_net_61)|
    (exer&_net_60)|
    (exer&_net_59)|
    (exer&_net_58)|
    (exer&_net_57)|
    (exer&_net_56)|
    (exer&_net_55)|
    ((exer&_net_50)&_net_53)|
    (exer&_net_50)|
    (exer&_net_50)|
    (exer&_net_50)|
    (exer&_net_48)|
    (exer&_net_47)|
    ((exer&_net_43)&_net_46)|
    (exer&_net_43)|
    ((exer&_net_43)&_net_44)|
    (exer&_net_43);
   assign  _gr_rs2 = (exeb&_net_105)|
    (exeb&_net_102)|
    (exeb&_net_99)|
    (exeb&_net_96)|
    ((exeb&_net_89)&_net_93)|
    (exeb&_net_89)|
    (exeb&_net_89)|
    (exeb&_net_89)|
    ((exeb&_net_82)&_net_86)|
    (exeb&_net_82)|
    (exeb&_net_82)|
    (exeb&_net_82)|
    (exes&_net_81)|
    (exes&_net_80)|
    (exes&_net_79)|
    (exer&_net_60)|
    (exer&_net_59)|
    (exer&_net_58)|
    (exer&_net_57)|
    (exer&_net_56)|
    (exer&_net_55)|
    ((exer&_net_50)&_net_53)|
    (exer&_net_50)|
    (exer&_net_50)|
    (exer&_net_50)|
    (exer&_net_48)|
    (exer&_net_47)|
    ((exer&_net_43)&_net_46)|
    ((exer&_net_43)&_net_44);
   assign  _gr_rd = (exej&_net_110)|
    (exeu&_net_109)|
    (exeu&_net_108)|
    (exei_2&_net_78)|
    (exei_2&_net_77)|
    (exei_2&_net_76)|
    (exei_2&_net_74)|
    (exei_2&_net_72)|
    exei_jalr|
    (exei_1&_net_69)|
    (exei_1&_net_67)|
    (exei_1&_net_64)|
    (exei_1&_net_63)|
    (exei_1&_net_62)|
    (exei_1&_net_61)|
    (exer&_net_60)|
    (exer&_net_59)|
    (exer&_net_58)|
    (exer&_net_57)|
    (exer&_net_56)|
    (exer&_net_55)|
    ((exer&_net_50)&_net_53)|
    ((exer&_net_50)&_net_52)|
    ((exer&_net_50)&_net_51)|
    (exer&_net_48)|
    (exer&_net_47)|
    ((exer&_net_43)&_net_46)|
    ((exer&_net_43)&_net_44);
   assign  _gr_p_reset = p_reset;
   assign  _gr_m_clock = m_clock;
   assign  _proc_exej_set = (dec&_net_1);
   assign  _proc_exej_reset = (exej&_net_110);
   assign  _proc_exeu_set = (dec&_net_29)|
    (dec&_net_10);
   assign  _proc_exeu_reset = exeu;
   assign  _proc_exeb_set = ((dec&_net_3)&_net_9)|
    ((dec&_net_3)&_net_8)|
    ((dec&_net_3)&_net_7)|
    ((dec&_net_3)&_net_6)|
    ((dec&_net_3)&_net_5)|
    ((dec&_net_3)&_net_4);
   assign  _proc_exeb_reset = ((exeb&_net_105)&(~_net_106))|
    ((exeb&_net_105)&_net_106)|
    ((exeb&_net_102)&(~_net_103))|
    ((exeb&_net_102)&_net_103)|
    ((exeb&_net_99)&(~_net_100))|
    ((exeb&_net_99)&_net_100)|
    ((exeb&_net_96)&(~_net_97))|
    ((exeb&_net_96)&_net_97)|
    (((exeb&_net_89)&_net_93)&(~_net_94))|
    (((exeb&_net_89)&_net_93)&_net_94)|
    ((exeb&_net_89)&_net_92)|
    ((exeb&_net_89)&_net_90)|
    (((exeb&_net_82)&_net_86)&(~_net_87))|
    ((exeb&_net_82)&_net_83);
   assign  _proc_exes_set = ((dec&_net_25)&_net_28)|
    ((dec&_net_25)&_net_27)|
    ((dec&_net_25)&_net_26);
   assign  _proc_exes_reset = exes;
   assign  _proc_exei_jalr_set = (dec&_net_2);
   assign  _proc_exei_jalr_reset = exei_jalr;
   assign  _proc_exei_2_set = ((dec&_net_37)&_net_42)|
    ((dec&_net_37)&_net_41)|
    ((dec&_net_37)&_net_40)|
    ((dec&_net_37)&_net_39)|
    ((dec&_net_37)&_net_38);
   assign  _proc_exei_2_reset = (exei_2&_net_78)|
    (exei_2&_net_77)|
    (exei_2&_net_76)|
    (exei_2&_net_74)|
    (exei_2&_net_72);
   assign  _proc_exei_1_set = ((dec&_net_30)&_net_36)|
    ((dec&_net_30)&_net_35)|
    ((dec&_net_30)&_net_34)|
    ((dec&_net_30)&_net_33)|
    ((dec&_net_30)&_net_32)|
    ((dec&_net_30)&_net_31);
   assign  _proc_exei_1_reset = exei_1;
   assign  _proc_exer_set = ((((dec&_net_11)&_net_12)&_net_22)&_net_24)|
    ((((dec&_net_11)&_net_12)&_net_22)&_net_23)|
    (((dec&_net_11)&_net_12)&_net_21)|
    (((dec&_net_11)&_net_12)&_net_20)|
    (((dec&_net_11)&_net_12)&_net_19)|
    (((dec&_net_11)&_net_12)&_net_18)|
    ((((dec&_net_11)&_net_12)&_net_15)&_net_17)|
    ((((dec&_net_11)&_net_12)&_net_15)&_net_16)|
    (((dec&_net_11)&_net_12)&_net_14)|
    (((dec&_net_11)&_net_12)&_net_13);
   assign  _proc_exer_reset = exer;
   assign  _proc_dec_set = ift;
   assign  _proc_dec_reset = ((dec&_net_37)&_net_42)|
    ((dec&_net_37)&_net_41)|
    ((dec&_net_37)&_net_40)|
    ((dec&_net_37)&_net_39)|
    ((dec&_net_37)&_net_38)|
    ((dec&_net_30)&_net_36)|
    ((dec&_net_30)&_net_35)|
    ((dec&_net_30)&_net_34)|
    ((dec&_net_30)&_net_33)|
    ((dec&_net_30)&_net_32)|
    ((dec&_net_30)&_net_31)|
    (dec&_net_29)|
    ((dec&_net_25)&_net_28)|
    ((dec&_net_25)&_net_27)|
    ((dec&_net_25)&_net_26)|
    ((((dec&_net_11)&_net_12)&_net_22)&_net_24)|
    ((((dec&_net_11)&_net_12)&_net_22)&_net_23)|
    (((dec&_net_11)&_net_12)&_net_21)|
    (((dec&_net_11)&_net_12)&_net_20)|
    (((dec&_net_11)&_net_12)&_net_19)|
    (((dec&_net_11)&_net_12)&_net_18)|
    ((((dec&_net_11)&_net_12)&_net_15)&_net_17)|
    ((((dec&_net_11)&_net_12)&_net_15)&_net_16)|
    (((dec&_net_11)&_net_12)&_net_14)|
    (((dec&_net_11)&_net_12)&_net_13)|
    (dec&_net_10)|
    ((dec&_net_3)&_net_9)|
    ((dec&_net_3)&_net_8)|
    ((dec&_net_3)&_net_7)|
    ((dec&_net_3)&_net_6)|
    ((dec&_net_3)&_net_5)|
    ((dec&_net_3)&_net_4)|
    (dec&_net_2)|
    (dec&_net_1);
   assign  _proc_ift_set = (exej&_net_110)|
    exeu|
    ((exeb&_net_105)&(~_net_106))|
    ((exeb&_net_105)&_net_106)|
    ((exeb&_net_102)&(~_net_103))|
    ((exeb&_net_102)&_net_103)|
    ((exeb&_net_99)&(~_net_100))|
    ((exeb&_net_99)&_net_100)|
    ((exeb&_net_96)&(~_net_97))|
    ((exeb&_net_96)&_net_97)|
    (((exeb&_net_89)&_net_93)&(~_net_94))|
    (((exeb&_net_89)&_net_93)&_net_94)|
    ((exeb&_net_89)&_net_92)|
    ((exeb&_net_89)&_net_90)|
    (((exeb&_net_82)&_net_86)&(~_net_87))|
    ((exeb&_net_82)&_net_83)|
    exes|
    (exei_2&_net_78)|
    (exei_2&_net_77)|
    (exei_2&_net_76)|
    (exei_2&_net_74)|
    (exei_2&_net_72)|
    exei_jalr|
    exei_1|
    exer|
    _net_0;
   assign  _proc_ift_reset = ift;
   assign  _net_0 = (rst_d&(~p_reset));
   assign  _net_1 = ((dec)?((idata[6:2])==5'b11011):1'b0);
   assign  _net_2 = ((dec)?((idata[6:2])==5'b11001):1'b0);
   assign  _net_3 = ((dec)?((idata[6:2])==5'b11000):1'b0);
   assign  _net_4 = (((dec&_net_3))?((idata[14:12])==3'b111):1'b0);
   assign  _net_5 = (((dec&_net_3))?((idata[14:12])==3'b110):1'b0);
   assign  _net_6 = (((dec&_net_3))?((idata[14:12])==3'b101):1'b0);
   assign  _net_7 = (((dec&_net_3))?((idata[14:12])==3'b100):1'b0);
   assign  _net_8 = (((dec&_net_3))?((idata[14:12])==3'b001):1'b0);
   assign  _net_9 = (((dec&_net_3))?((idata[14:12])==3'b000):1'b0);
   assign  _net_10 = ((dec)?((idata[6:2])==5'b01101):1'b0);
   assign  _net_11 = ((dec)?((idata[6:2])==5'b01100):1'b0);
   assign  _net_12 = (((dec&_net_11))?(~(idata[25])):1'b0);
   assign  _net_13 = ((((dec&_net_11)&_net_12))?((idata[14:12])==3'b111):1'b0);
   assign  _net_14 = ((((dec&_net_11)&_net_12))?((idata[14:12])==3'b110):1'b0);
   assign  _net_15 = ((((dec&_net_11)&_net_12))?((idata[14:12])==3'b101):1'b0);
   assign  _net_16 = (((((dec&_net_11)&_net_12)&_net_15))?(idata[30]):1'b0);
   assign  _net_17 = (((((dec&_net_11)&_net_12)&_net_15))?(~(idata[30])):1'b0);
   assign  _net_18 = ((((dec&_net_11)&_net_12))?((idata[14:12])==3'b100):1'b0);
   assign  _net_19 = ((((dec&_net_11)&_net_12))?((idata[14:12])==3'b011):1'b0);
   assign  _net_20 = ((((dec&_net_11)&_net_12))?((idata[14:12])==3'b010):1'b0);
   assign  _net_21 = ((((dec&_net_11)&_net_12))?((idata[14:12])==3'b001):1'b0);
   assign  _net_22 = ((((dec&_net_11)&_net_12))?((idata[14:12])==3'b000):1'b0);
   assign  _net_23 = (((((dec&_net_11)&_net_12)&_net_22))?(idata[30]):1'b0);
   assign  _net_24 = (((((dec&_net_11)&_net_12)&_net_22))?(~(idata[30])):1'b0);
   assign  _net_25 = ((dec)?((idata[6:2])==5'b01000):1'b0);
   assign  _net_26 = (((dec&_net_25))?((idata[14:12])==3'b010):1'b0);
   assign  _net_27 = (((dec&_net_25))?((idata[14:12])==3'b001):1'b0);
   assign  _net_28 = (((dec&_net_25))?((idata[14:12])==3'b000):1'b0);
   assign  _net_29 = ((dec)?((idata[6:2])==5'b00101):1'b0);
   assign  _net_30 = ((dec)?((idata[6:2])==5'b00100):1'b0);
   assign  _net_31 = (((dec&_net_30))?((idata[14:12])==3'b111):1'b0);
   assign  _net_32 = (((dec&_net_30))?((idata[14:12])==3'b110):1'b0);
   assign  _net_33 = (((dec&_net_30))?((idata[14:12])==3'b100):1'b0);
   assign  _net_34 = (((dec&_net_30))?((idata[14:12])==3'b011):1'b0);
   assign  _net_35 = (((dec&_net_30))?((idata[14:12])==3'b010):1'b0);
   assign  _net_36 = (((dec&_net_30))?((idata[14:12])==3'b000):1'b0);
   assign  _net_37 = ((dec)?((idata[6:2])==5'b00000):1'b0);
   assign  _net_38 = (((dec&_net_37))?((idata[14:12])==3'b101):1'b0);
   assign  _net_39 = (((dec&_net_37))?((idata[14:12])==3'b100):1'b0);
   assign  _net_40 = (((dec&_net_37))?((idata[14:12])==3'b010):1'b0);
   assign  _net_41 = (((dec&_net_37))?((idata[14:12])==3'b001):1'b0);
   assign  _net_42 = (((dec&_net_37))?((idata[14:12])==3'b000):1'b0);
   assign  _net_43 = ((exer)?(order==8'b01101100):1'b0);
   assign  _net_44 = (((exer&_net_43))?(_gr_s1_rd[31]):1'b0);
   assign  _net_45 = ((_gr_s1_rd[30:0])>>_gr_s2_rd);
   assign  _net_46 = (((exer&_net_43))?(~(_gr_s1_rd[31])):1'b0);
   assign  _net_47 = ((exer)?(order==8'b01101110):1'b0);
   assign  _net_48 = ((exer)?(order==8'b01101011):1'b0);
   assign  _net_49 = (_gr_s1_rd < _gr_s2_rd);
   assign  _net_50 = ((exer)?(order==8'b01101000):1'b0);
   assign  _net_51 = (((exer&_net_50))?((_gr_s1_rd[31])&(~(_gr_s2_rd[31]))):1'b0);
   assign  _net_52 = (((exer&_net_50))?((~(_gr_s1_rd[31]))&(_gr_s2_rd[31])):1'b0);
   assign  _net_53 = (((exer&_net_50))?((_gr_s1_rd[31])==(_gr_s2_rd[31])):1'b0);
   assign  _net_54 = (_gr_s1_rd < _gr_s2_rd);
   assign  _net_55 = ((exer)?(order==8'b01100110):1'b0);
   assign  _net_56 = ((exer)?(order==8'b01110010):1'b0);
   assign  _net_57 = ((exer)?(order==8'b01011111):1'b0);
   assign  _net_58 = ((exer)?(order==8'b00001011):1'b0);
   assign  _net_59 = ((exer)?(order==8'b01110000):1'b0);
   assign  _net_60 = ((exer)?(order==8'b00000000):1'b0);
   assign  _net_61 = ((exei_1)?(order==8'b00001100):1'b0);
   assign  _net_62 = ((exei_1)?(order==8'b01100000):1'b0);
   assign  _net_63 = ((exei_1)?(order==8'b01110011):1'b0);
   assign  _net_64 = ((exei_1)?(order==8'b01101010):1'b0);
   assign  _net_65 = imm12;
   assign  _net_66 = (_gr_s1_rd < ({20'b00000000000000000000,_net_65}));
   assign  _net_67 = ((exei_1)?(order==8'b01101001):1'b0);
   assign  _net_68 = (_gr_s1_rd < ({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_69 = ((exei_1)?(order==8'b00000001):1'b0);
   assign  _net_70 = (_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_71 = (_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_72 = ((exei_2)?(order==8'b01010111):1'b0);
   assign  _net_73 = imm12;
   assign  _net_74 = ((exei_2)?(order==8'b01010101):1'b0);
   assign  _net_75 = imm12;
   assign  _net_76 = ((exei_2)?(order==8'b01011010):1'b0);
   assign  _net_77 = ((exei_2)?(order==8'b01010110):1'b0);
   assign  _net_78 = ((exei_2)?(order==8'b01010100):1'b0);
   assign  _net_79 = ((exes)?(order==8'b01110001):1'b0);
   assign  _net_80 = ((exes)?(order==8'b01100101):1'b0);
   assign  _net_81 = ((exes)?(order==8'b01100011):1'b0);
   assign  _net_82 = ((exeb)?(order==8'b00001111):1'b0);
   assign  _net_83 = (((exeb&_net_82))?((_gr_s1_rd[31])&(~(_gr_s2_rd[31]))):1'b0);
   assign  _net_84 = (((exeb&_net_82))?((~(_gr_s1_rd[31]))&(_gr_s2_rd[31])):1'b0);
   assign  _net_85 = ({imm12,1'b0});
   assign  _net_86 = (((exeb&_net_82))?((_gr_s1_rd[31])==(_gr_s2_rd[31])):1'b0);
   assign  _net_87 = ((((exeb&_net_82)&_net_86))?((_gr_s1_rd[30:0]) > (_gr_s2_rd[30:0])):1'b0);
   assign  _net_88 = ({imm12,1'b0});
   assign  _net_89 = ((exeb)?(order==8'b00010001):1'b0);
   assign  _net_90 = (((exeb&_net_89))?((_gr_s1_rd[31])&(~(_gr_s2_rd[31]))):1'b0);
   assign  _net_91 = ({imm12,1'b0});
   assign  _net_92 = (((exeb&_net_89))?((~(_gr_s1_rd[31]))&(_gr_s2_rd[31])):1'b0);
   assign  _net_93 = (((exeb&_net_89))?((_gr_s1_rd[31])==(_gr_s2_rd[31])):1'b0);
   assign  _net_94 = ((((exeb&_net_89)&_net_93))?((_gr_s1_rd[30:0]) < (_gr_s2_rd[30:0])):1'b0);
   assign  _net_95 = ({imm12,1'b0});
   assign  _net_96 = ((exeb)?(order==8'b00010000):1'b0);
   assign  _net_97 = (((exeb&_net_96))?(_gr_s1_rd > _gr_s2_rd):1'b0);
   assign  _net_98 = ({imm12,1'b0});
   assign  _net_99 = ((exeb)?(order==8'b00010010):1'b0);
   assign  _net_100 = (((exeb&_net_99))?(_gr_s1_rd < _gr_s2_rd):1'b0);
   assign  _net_101 = ({imm12,1'b0});
   assign  _net_102 = ((exeb)?(order==8'b00010011):1'b0);
   assign  _net_103 = (((exeb&_net_102))?(_gr_s1_rd != _gr_s2_rd):1'b0);
   assign  _net_104 = ({imm12,1'b0});
   assign  _net_105 = ((exeb)?(order==8'b00001110):1'b0);
   assign  _net_106 = (((exeb&_net_105))?(_gr_s1_rd==_gr_s2_rd):1'b0);
   assign  _net_107 = ({imm12,1'b0});
   assign  _net_108 = ((exeu)?(order==8'b01011001):1'b0);
   assign  _net_109 = ((exeu)?(order==8'b00001101):1'b0);
   assign  _net_110 = ((exej)?(order==8'b01010010):1'b0);
   assign  _net_111 = ({imm,1'b0});
   assign  iaddr = ((ift)?pc:32'b0);
   assign  daddr = (((exes&_net_81))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exes&_net_80))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exes&_net_79))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_78))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_77))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_76))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_74))?(_gr_s1_rd+({20'b00000000000000000000,_net_75})):32'b0)|
    (((exei_2&_net_72))?(_gr_s1_rd+({20'b00000000000000000000,_net_73})):32'b0);
   assign  wdata = (((exes&_net_81))?({24'b000000000000000000000000,(_gr_s2_rd[7:0])}):32'b0)|
    (((exes&_net_80))?({16'b0000000000000000,(_gr_s2_rd[15:0])}):32'b0)|
    (((exes&_net_79))?(_gr_s2_rd[31:0]):32'b0);
   assign  dmem_read = (exei_2&_net_78)|
    (exei_2&_net_77)|
    (exei_2&_net_76)|
    (exei_2&_net_74)|
    (exei_2&_net_72);
   assign  dmem_write = (exes&_net_81)|
    (exes&_net_80)|
    (exes&_net_79);
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     pc <= 32'b00000000000000000000000000000000;
else if ((exej&_net_110))
      pc <= (pc+({({(_net_111[20]),(_net_111[20]),(_net_111[20]),(_net_111[20]),(_net_111[20]),(_net_111[20]),(_net_111[20]),(_net_111[20]),(_net_111[20]),(_net_111[20]),(_net_111[20])}),_net_111}));
else if (exeu)
      pc <= pc;
else if (((exeb&_net_105)&(~_net_106)))
      pc <= pc;
else if (((exeb&_net_105)&_net_106))
      pc <= (pc+({({(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12]),(_net_107[12])}),_net_107}));
else if (((exeb&_net_102)&(~_net_103)))
      pc <= pc;
else if (((exeb&_net_102)&_net_103))
      pc <= (pc+({({(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12]),(_net_104[12])}),_net_104}));
else if (((exeb&_net_99)&(~_net_100)))
      pc <= pc;
else if (((exeb&_net_99)&_net_100))
      pc <= (pc+({({(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12]),(_net_101[12])}),_net_101}));
else if (((exeb&_net_96)&(~_net_97)))
      pc <= pc;
else if (((exeb&_net_96)&_net_97))
      pc <= (pc+({({(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12]),(_net_98[12])}),_net_98}));
else if ((((exeb&_net_89)&_net_93)&(~_net_94)))
      pc <= pc;
else if ((((exeb&_net_89)&_net_93)&_net_94))
      pc <= (pc+({({(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12]),(_net_95[12])}),_net_95}));
else if (((exeb&_net_89)&_net_92))
      pc <= pc;
else if (((exeb&_net_89)&_net_90))
      pc <= (pc+({({(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12]),(_net_91[12])}),_net_91}));
else if ((((exeb&_net_82)&_net_86)&(~_net_87)))
      pc <= pc;
else if ((((exeb&_net_82)&_net_86)&_net_87))
      pc <= (pc+({({(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12]),(_net_88[12])}),_net_88}));
else if (((exeb&_net_82)&_net_84))
      pc <= (pc+({({(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12]),(_net_85[12])}),_net_85}));
else if (((exeb&_net_82)&_net_83))
      pc <= pc;
else if (exes)
      pc <= pc;
else if ((exei_2&_net_78))
      pc <= pc;
else if ((exei_2&_net_77))
      pc <= pc;
else if ((exei_2&_net_76))
      pc <= pc;
else if ((exei_2&_net_74))
      pc <= pc;
else if ((exei_2&_net_72))
      pc <= pc;
else if (exei_jalr)
      pc <= ({(_net_71[31:1]),1'b0});
else if (exei_1)
      pc <= pc;
else if (exer)
      pc <= pc;
else if (ift)
      pc <= (pc+32'b00000000000000000000000000000001);
else if (_net_0)
      pc <= 32'b00000000000000000000000000000000;
end
always @(posedge m_clock)
  begin
  rst_d <= p_reset;
end
always @(posedge m_clock)
  begin
if (ift)
      inst <= idata;
end
always @(posedge m_clock)
  begin
if (((dec&_net_37)&_net_42))
      rs1 <= (idata[19:15]);
else if (((dec&_net_37)&_net_41))
      rs1 <= (idata[19:15]);
else if (((dec&_net_37)&_net_40))
      rs1 <= (idata[19:15]);
else if (((dec&_net_37)&_net_39))
      rs1 <= (idata[19:15]);
else if (((dec&_net_37)&_net_38))
      rs1 <= (idata[19:15]);
else if (((dec&_net_30)&_net_36))
      rs1 <= (idata[19:15]);
else if (((dec&_net_30)&_net_35))
      rs1 <= (idata[19:15]);
else if (((dec&_net_30)&_net_34))
      rs1 <= (idata[19:15]);
else if (((dec&_net_30)&_net_33))
      rs1 <= (idata[19:15]);
else if (((dec&_net_30)&_net_32))
      rs1 <= (idata[19:15]);
else if (((dec&_net_30)&_net_31))
      rs1 <= (idata[19:15]);
else if (((dec&_net_25)&_net_28))
      rs1 <= (idata[19:15]);
else if (((dec&_net_25)&_net_27))
      rs1 <= (idata[19:15]);
else if (((dec&_net_25)&_net_26))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_24))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_23))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_21))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_20))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_19))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_18))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_17))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_16))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_14))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_13))
      rs1 <= (idata[19:15]);
else if (((dec&_net_3)&_net_9))
      rs1 <= (idata[19:15]);
else if (((dec&_net_3)&_net_8))
      rs1 <= (idata[19:15]);
else if (((dec&_net_3)&_net_7))
      rs1 <= (idata[19:15]);
else if (((dec&_net_3)&_net_6))
      rs1 <= (idata[19:15]);
else if (((dec&_net_3)&_net_5))
      rs1 <= (idata[19:15]);
else if (((dec&_net_3)&_net_4))
      rs1 <= (idata[19:15]);
else if ((dec&_net_2))
      rs1 <= (idata[19:15]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_25)&_net_28))
      rs2 <= (idata[24:20]);
else if (((dec&_net_25)&_net_27))
      rs2 <= (idata[24:20]);
else if (((dec&_net_25)&_net_26))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_24))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_23))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_21))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_20))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_19))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_18))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_17))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_16))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_14))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_13))
      rs2 <= (idata[24:20]);
else if (((dec&_net_3)&_net_9))
      rs2 <= (idata[24:20]);
else if (((dec&_net_3)&_net_8))
      rs2 <= (idata[24:20]);
else if (((dec&_net_3)&_net_7))
      rs2 <= (idata[24:20]);
else if (((dec&_net_3)&_net_6))
      rs2 <= (idata[24:20]);
else if (((dec&_net_3)&_net_5))
      rs2 <= (idata[24:20]);
else if (((dec&_net_3)&_net_4))
      rs2 <= (idata[24:20]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_37)&_net_42))
      rd <= (idata[11:7]);
else if (((dec&_net_37)&_net_41))
      rd <= (idata[11:7]);
else if (((dec&_net_37)&_net_40))
      rd <= (idata[11:7]);
else if (((dec&_net_37)&_net_39))
      rd <= (idata[11:7]);
else if (((dec&_net_37)&_net_38))
      rd <= (idata[11:7]);
else if (((dec&_net_30)&_net_36))
      rd <= (idata[11:7]);
else if (((dec&_net_30)&_net_35))
      rd <= (idata[11:7]);
else if (((dec&_net_30)&_net_34))
      rd <= (idata[11:7]);
else if (((dec&_net_30)&_net_33))
      rd <= (idata[11:7]);
else if (((dec&_net_30)&_net_32))
      rd <= (idata[11:7]);
else if (((dec&_net_30)&_net_31))
      rd <= (idata[11:7]);
else if ((dec&_net_29))
      rd <= (idata[11:7]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_24))
      rd <= (idata[11:7]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_23))
      rd <= (idata[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_21))
      rd <= (idata[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_20))
      rd <= (idata[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_19))
      rd <= (idata[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_18))
      rd <= (idata[11:7]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_17))
      rd <= (idata[11:7]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_16))
      rd <= (idata[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_14))
      rd <= (idata[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_13))
      rd <= (idata[11:7]);
else if ((dec&_net_10))
      rd <= (idata[11:7]);
else if ((dec&_net_2))
      rd <= (idata[11:7]);
else if ((dec&_net_1))
      rd <= (idata[11:7]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_37)&_net_42))
      imm12 <= (idata[31:20]);
else if (((dec&_net_37)&_net_41))
      imm12 <= (idata[31:20]);
else if (((dec&_net_37)&_net_40))
      imm12 <= (idata[31:20]);
else if (((dec&_net_37)&_net_39))
      imm12 <= (idata[31:20]);
else if (((dec&_net_37)&_net_38))
      imm12 <= (idata[31:20]);
else if (((dec&_net_30)&_net_36))
      imm12 <= (idata[31:20]);
else if (((dec&_net_30)&_net_35))
      imm12 <= (idata[31:20]);
else if (((dec&_net_30)&_net_34))
      imm12 <= (idata[31:20]);
else if (((dec&_net_30)&_net_33))
      imm12 <= (idata[31:20]);
else if (((dec&_net_30)&_net_32))
      imm12 <= (idata[31:20]);
else if (((dec&_net_30)&_net_31))
      imm12 <= (idata[31:20]);
else if (((dec&_net_25)&_net_28))
      imm12 <= ({(idata[31:25]),(idata[11:7])});
else if (((dec&_net_25)&_net_27))
      imm12 <= ({(idata[31:25]),(idata[11:7])});
else if (((dec&_net_25)&_net_26))
      imm12 <= ({(idata[31:25]),(idata[11:7])});
else if (((dec&_net_3)&_net_9))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_3)&_net_8))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_3)&_net_7))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_3)&_net_6))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_3)&_net_5))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_3)&_net_4))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if ((dec&_net_2))
      imm12 <= (idata[31:20]);
end
always @(posedge m_clock)
  begin
if ((dec&_net_29))
      imm <= (idata[31:12]);
else if ((dec&_net_10))
      imm <= (idata[31:12]);
else if ((dec&_net_1))
      imm <= ({(idata[31]),(idata[19:12]),(idata[20]),(idata[30:21])});
end
always @(posedge m_clock)
  begin
if (((dec&_net_37)&_net_42))
      order <= 8'b01010100;
else if (((dec&_net_37)&_net_41))
      order <= 8'b01010110;
else if (((dec&_net_37)&_net_40))
      order <= 8'b01011010;
else if (((dec&_net_37)&_net_39))
      order <= 8'b01010101;
else if (((dec&_net_37)&_net_38))
      order <= 8'b01010111;
else if (((dec&_net_30)&_net_36))
      order <= 8'b00000001;
else if (((dec&_net_30)&_net_35))
      order <= 8'b01101001;
else if (((dec&_net_30)&_net_34))
      order <= 8'b01101010;
else if (((dec&_net_30)&_net_33))
      order <= 8'b01110011;
else if (((dec&_net_30)&_net_32))
      order <= 8'b01100000;
else if (((dec&_net_30)&_net_31))
      order <= 8'b00001100;
else if ((dec&_net_29))
      order <= 8'b00001101;
else if (((dec&_net_25)&_net_28))
      order <= 8'b01100011;
else if (((dec&_net_25)&_net_27))
      order <= 8'b01100101;
else if (((dec&_net_25)&_net_26))
      order <= 8'b01110001;
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_24))
      order <= 8'b00000000;
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_23))
      order <= 8'b01110000;
else if ((((dec&_net_11)&_net_12)&_net_21))
      order <= 8'b01100110;
else if ((((dec&_net_11)&_net_12)&_net_20))
      order <= 8'b01101000;
else if ((((dec&_net_11)&_net_12)&_net_19))
      order <= 8'b01101011;
else if ((((dec&_net_11)&_net_12)&_net_18))
      order <= 8'b01110010;
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_17))
      order <= 8'b01101110;
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_16))
      order <= 8'b01101100;
else if ((((dec&_net_11)&_net_12)&_net_14))
      order <= 8'b01011111;
else if ((((dec&_net_11)&_net_12)&_net_13))
      order <= 8'b00001011;
else if ((dec&_net_10))
      order <= 8'b01011001;
else if (((dec&_net_3)&_net_9))
      order <= 8'b00001110;
else if (((dec&_net_3)&_net_8))
      order <= 8'b00010011;
else if (((dec&_net_3)&_net_7))
      order <= 8'b00010001;
else if (((dec&_net_3)&_net_6))
      order <= 8'b00001111;
else if (((dec&_net_3)&_net_5))
      order <= 8'b00010010;
else if (((dec&_net_3)&_net_4))
      order <= 8'b00010000;
else if ((dec&_net_2))
      order <= 8'b01010011;
else if ((dec&_net_1))
      order <= 8'b01010010;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     ift <= 1'b0;
else if ((_proc_ift_set|_proc_ift_reset))
      ift <= _proc_ift_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     dec <= 1'b0;
else if ((_proc_dec_set|_proc_dec_reset))
      dec <= _proc_dec_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exer <= 1'b0;
else if ((_proc_exer_set|_proc_exer_reset))
      exer <= _proc_exer_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exei_1 <= 1'b0;
else if ((_proc_exei_1_set|_proc_exei_1_reset))
      exei_1 <= _proc_exei_1_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exei_2 <= 1'b0;
else if ((_proc_exei_2_set|_proc_exei_2_reset))
      exei_2 <= _proc_exei_2_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exei_jalr <= 1'b0;
else if ((_proc_exei_jalr_set|_proc_exei_jalr_reset))
      exei_jalr <= _proc_exei_jalr_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exes <= 1'b0;
else if ((_proc_exes_set|_proc_exes_reset))
      exes <= _proc_exes_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exeb <= 1'b0;
else if ((_proc_exeb_set|_proc_exeb_reset))
      exeb <= _proc_exeb_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exeu <= 1'b0;
else if ((_proc_exeu_set|_proc_exeu_reset))
      exeu <= _proc_exeu_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exej <= 1'b0;
else if ((_proc_exej_set|_proc_exej_reset))
      exej <= _proc_exej_set;
end
endmodule

/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Sun Feb 25 14:58:55 2018
 Licensed to :EVALUATION USER*/
