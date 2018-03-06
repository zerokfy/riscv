
/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Tue Mar  6 13:30:22 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module rv32i_core ( p_reset , m_clock , idata , rdata , iaddr , daddr , wdata , ecall_led , ebreak_led , dmem_write , dmem_read );
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
  output ecall_led;
  wire ecall_led;
  output ebreak_led;
  wire ebreak_led;
  output dmem_write;
  wire dmem_write;
  output dmem_read;
  wire dmem_read;
  reg [31:0] pc;
  reg rst_d;
  reg [4:0] rs1;
  reg [4:0] rs2;
  reg [4:0] rd;
  reg [3:0] be;
  reg sign;
  reg [11:0] imm12;
  reg [19:0] imm;
  reg [7:0] order;
  reg ecall;
  reg ebreak;
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
  reg meml;
  wire [4:0] _gr_rs1_n;
  wire [4:0] _gr_rs2_n;
  wire [4:0] _gr_rd_n;
  wire [31:0] _gr_wd;
  wire [31:0] _gr_s1_rd;
  wire [31:0] _gr_s2_rd;
  wire _gr_rs1;
  wire _gr_rs2;
  wire _gr_rd;
  wire _gr_p_reset;
  wire _gr_m_clock;
  wire _proc_meml_set;
  wire _proc_meml_reset;
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
  wire _net_45;
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
  wire [63:0] _net_59;
  wire _net_60;
  wire _net_61;
  wire _net_62;
  wire _net_63;
  wire _net_64;
  wire _net_65;
  wire _net_66;
  wire _net_67;
  wire _net_68;
  wire _net_69;
  wire _net_70;
  wire _net_71;
  wire _net_72;
  wire _net_73;
  wire _net_74;
  wire _net_75;
  wire _net_76;
  wire _net_77;
  wire [63:0] _net_78;
  wire _net_79;
  wire [31:0] _net_80;
  wire _net_81;
  wire _net_82;
  wire _net_83;
  wire _net_84;
  wire _net_85;
  wire _net_86;
  wire _net_87;
  wire _net_88;
  wire _net_89;
  wire [11:0] _net_90;
  wire _net_91;
  wire _net_92;
  wire [11:0] _net_93;
  wire [31:0] _net_94;
  wire _net_95;
  wire [31:0] _net_96;
  wire [31:0] _net_97;
  wire _net_98;
  wire _net_99;
  wire _net_100;
  wire _net_101;
  wire _net_102;
  wire _net_103;
  wire _net_104;
  wire _net_105;
  wire _net_106;
  wire _net_107;
  wire [11:0] _net_108;
  wire _net_109;
  wire [11:0] _net_110;
  wire _net_111;
  wire _net_112;
  wire _net_113;
  wire _net_114;
  wire _net_115;
  wire _net_116;
  wire _net_117;
  wire _net_118;
  wire _net_119;
  wire [12:0] _net_120;
  wire _net_121;
  wire _net_122;
  wire [12:0] _net_123;
  wire _net_124;
  wire _net_125;
  wire [12:0] _net_126;
  wire _net_127;
  wire _net_128;
  wire _net_129;
  wire [12:0] _net_130;
  wire _net_131;
  wire _net_132;
  wire [12:0] _net_133;
  wire _net_134;
  wire _net_135;
  wire [12:0] _net_136;
  wire _net_137;
  wire _net_138;
  wire [12:0] _net_139;
  wire _net_140;
  wire _net_141;
  wire [12:0] _net_142;
  wire _net_143;
  wire _net_144;
  wire _net_145;
  wire [20:0] _net_146;
  wire _net_147;
  wire _net_148;
  wire [15:0] _net_149;
  wire _net_150;
  wire [7:0] _net_151;
  wire _net_152;
  wire _net_153;
  wire [15:0] _net_154;
  wire _net_155;
  wire [7:0] _net_156;
gen_gr gr (.m_clock(m_clock), .p_reset(p_reset), .rd(_gr_rd), .rs2(_gr_rs2), .rs1(_gr_rs1), .s1_rd(_gr_s1_rd), .s2_rd(_gr_s2_rd), .rs1_n(_gr_rs1_n), .rs2_n(_gr_rs2_n), .rd_n(_gr_rd_n), .wd(_gr_wd));

   assign  _gr_rs1_n = (((exeb&_net_140))?rs1:5'b0)|
    (((exeb&_net_137))?rs1:5'b0)|
    (((exeb&_net_134))?rs1:5'b0)|
    (((exeb&_net_131))?rs1:5'b0)|
    ((((exeb&_net_124)&_net_128))?rs1:5'b0)|
    (((exeb&_net_124))?rs1:5'b0)|
    (((exeb&_net_124))?rs1:5'b0)|
    (((exeb&_net_124))?rs1:5'b0)|
    ((((exeb&_net_117)&_net_121))?rs1:5'b0)|
    (((exeb&_net_117))?rs1:5'b0)|
    (((exeb&_net_117))?rs1:5'b0)|
    (((exeb&_net_117))?rs1:5'b0)|
    (((exes&_net_116))?rs1:5'b0)|
    (((exes&_net_115))?rs1:5'b0)|
    (((exes&_net_114))?rs1:5'b0)|
    (((exei_2&_net_113))?rs1:5'b0)|
    (((exei_2&_net_112))?rs1:5'b0)|
    (((exei_2&_net_111))?rs1:5'b0)|
    (((exei_2&_net_109))?rs1:5'b0)|
    (((exei_2&_net_107))?rs1:5'b0)|
    ((exei_jalr)?rs1:5'b0)|
    (((exei_1&_net_95))?rs1:5'b0)|
    (((exei_1&_net_92))?rs1:5'b0)|
    ((((exei_1&_net_84)&_net_89))?rs1:5'b0)|
    (((exei_1&_net_84))?rs1:5'b0)|
    (((exei_1&_net_84))?rs1:5'b0)|
    (((exei_1&_net_84))?rs1:5'b0)|
    ((((exei_1&_net_84)&_net_85))?rs1:5'b0)|
    (((exei_1&_net_84))?rs1:5'b0)|
    (((exei_1&_net_82))?rs1:5'b0)|
    (((exei_1&_net_81))?rs1:5'b0)|
    (((exei_1&_net_79))?rs1:5'b0)|
    (((exei_1&_net_77))?rs1:5'b0)|
    (((exei_1&_net_76))?rs1:5'b0)|
    (((exei_1&_net_75))?rs1:5'b0)|
    (((exer&_net_74))?rs1:5'b0)|
    (((exer&_net_73))?rs1:5'b0)|
    (((exer&_net_72))?rs1:5'b0)|
    (((exer&_net_71))?rs1:5'b0)|
    (((exer&_net_70))?rs1:5'b0)|
    (((exer&_net_69))?rs1:5'b0)|
    ((((exer&_net_64)&_net_67))?rs1:5'b0)|
    (((exer&_net_64))?rs1:5'b0)|
    (((exer&_net_64))?rs1:5'b0)|
    (((exer&_net_64))?rs1:5'b0)|
    (((exer&_net_62))?rs1:5'b0)|
    (((exer&_net_61))?rs1:5'b0)|
    ((((exer&_net_57)&_net_60))?rs1:5'b0)|
    (((exer&_net_57))?rs1:5'b0)|
    ((((exer&_net_57)&_net_58))?rs1:5'b0)|
    (((exer&_net_57))?rs1:5'b0);
   assign  _gr_rs2_n = (((exeb&_net_140))?rs2:5'b0)|
    (((exeb&_net_137))?rs2:5'b0)|
    (((exeb&_net_134))?rs2:5'b0)|
    (((exeb&_net_131))?rs2:5'b0)|
    ((((exeb&_net_124)&_net_128))?rs2:5'b0)|
    (((exeb&_net_124))?rs2:5'b0)|
    (((exeb&_net_124))?rs2:5'b0)|
    (((exeb&_net_124))?rs2:5'b0)|
    ((((exeb&_net_117)&_net_121))?rs2:5'b0)|
    (((exeb&_net_117))?rs2:5'b0)|
    (((exeb&_net_117))?rs2:5'b0)|
    (((exeb&_net_117))?rs2:5'b0)|
    (((exes&_net_116))?rs2:5'b0)|
    (((exes&_net_115))?rs2:5'b0)|
    (((exes&_net_114))?rs2:5'b0)|
    (((exer&_net_74))?rs2:5'b0)|
    (((exer&_net_73))?rs2:5'b0)|
    (((exer&_net_72))?rs2:5'b0)|
    (((exer&_net_71))?rs2:5'b0)|
    (((exer&_net_70))?rs2:5'b0)|
    (((exer&_net_69))?rs2:5'b0)|
    ((((exer&_net_64)&_net_67))?rs2:5'b0)|
    (((exer&_net_64))?rs2:5'b0)|
    (((exer&_net_64))?rs2:5'b0)|
    (((exer&_net_64))?rs2:5'b0)|
    (((exer&_net_62))?rs2:5'b0)|
    (((exer&_net_61))?rs2:5'b0)|
    ((((exer&_net_57)&_net_60))?rs2:5'b0)|
    ((((exer&_net_57)&_net_58))?rs2:5'b0);
   assign  _gr_rd_n = ((((meml&(~(sign != 1'b0)))&_net_155))?rd:5'b0)|
    ((((meml&(~(sign != 1'b0)))&_net_153))?rd:5'b0)|
    ((((meml&(~(sign != 1'b0)))&_net_152))?rd:5'b0)|
    ((((meml&(sign != 1'b0))&_net_150))?rd:5'b0)|
    ((((meml&(sign != 1'b0))&_net_148))?rd:5'b0)|
    ((((meml&(sign != 1'b0))&_net_147))?rd:5'b0)|
    (((exej&_net_145))?rd:5'b0)|
    (((exeu&_net_144))?rd:5'b0)|
    (((exeu&_net_143))?rd:5'b0)|
    (((exei_2&_net_106))?rd:5'b0)|
    (((exei_2&_net_105))?rd:5'b0)|
    (((exei_2&_net_104))?rd:5'b0)|
    (((exei_2&_net_103))?rd:5'b0)|
    (((exei_2&_net_102))?rd:5'b0)|
    (((exei_2&_net_101))?rd:5'b0)|
    ((exei_jalr)?rd:5'b0)|
    (((exei_1&_net_95))?rd:5'b0)|
    (((exei_1&_net_92))?rd:5'b0)|
    ((((exei_1&_net_84)&_net_89))?rd:5'b0)|
    ((((exei_1&_net_84)&_net_88))?rd:5'b0)|
    ((((exei_1&_net_84)&_net_87))?rd:5'b0)|
    ((((exei_1&_net_84)&_net_85))?rd:5'b0)|
    (((exei_1&_net_82))?rd:5'b0)|
    (((exei_1&_net_81))?rd:5'b0)|
    (((exei_1&_net_79))?rd:5'b0)|
    (((exei_1&_net_77))?rd:5'b0)|
    (((exei_1&_net_76))?rd:5'b0)|
    (((exei_1&_net_75))?rd:5'b0)|
    (((exer&_net_74))?rd:5'b0)|
    (((exer&_net_73))?rd:5'b0)|
    (((exer&_net_72))?rd:5'b0)|
    (((exer&_net_71))?rd:5'b0)|
    (((exer&_net_70))?rd:5'b0)|
    (((exer&_net_69))?rd:5'b0)|
    ((((exer&_net_64)&_net_67))?rd:5'b0)|
    ((((exer&_net_64)&_net_66))?rd:5'b0)|
    ((((exer&_net_64)&_net_65))?rd:5'b0)|
    (((exer&_net_62))?rd:5'b0)|
    (((exer&_net_61))?rd:5'b0)|
    ((((exer&_net_57)&_net_60))?rd:5'b0)|
    ((((exer&_net_57)&_net_58))?rd:5'b0);
   assign  _gr_wd = ((((meml&(~(sign != 1'b0)))&_net_155))?({24'b000000000000000000000000,_net_156}):32'b0)|
    ((((meml&(~(sign != 1'b0)))&_net_153))?({16'b0000000000000000,_net_154}):32'b0)|
    ((((meml&(~(sign != 1'b0)))&_net_152))?rdata:32'b0)|
    ((((meml&(sign != 1'b0))&_net_150))?({({(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7]),(_net_151[7])}),(rdata[7:0])}):32'b0)|
    ((((meml&(sign != 1'b0))&_net_148))?({({(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15]),(_net_149[15])}),(rdata[15:0])}):32'b0)|
    ((((meml&(sign != 1'b0))&_net_147))?rdata:32'b0)|
    (((exej&_net_145))?(pc+32'b00000000000000000000000000000100):32'b0)|
    (((exeu&_net_144))?(pc+({imm,12'b000000000000})):32'b0)|
    (((exeu&_net_143))?({imm,12'b000000000000}):32'b0)|
    (((exei_2&_net_106))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_105))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_104))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_103))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_102))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_101))?32'b00000000000000000000000000000000:32'b0)|
    ((exei_jalr)?(pc+32'b00000000000000000000000000000100):32'b0)|
    (((exei_1&_net_95))?(_net_96[31:0]):32'b0)|
    (((exei_1&_net_92))?(_net_94[31:0]):32'b0)|
    ((((exei_1&_net_84)&_net_89))?({31'b0000000000000000000000000000000,_net_91}):32'b0)|
    ((((exei_1&_net_84)&_net_88))?32'b00000000000000000000000000000000:32'b0)|
    ((((exei_1&_net_84)&_net_87))?32'b00000000000000000000000000000001:32'b0)|
    ((((exei_1&_net_84)&_net_85))?({31'b0000000000000000000000000000000,_net_86}):32'b0)|
    (((exei_1&_net_82))?({31'b0000000000000000000000000000000,_net_83}):32'b0)|
    (((exei_1&_net_81))?(_gr_s1_rd^({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_1&_net_79))?_net_80:32'b0)|
    (((exei_1&_net_77))?(_net_78[31:0]):32'b0)|
    (((exei_1&_net_76))?(_gr_s1_rd|({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_1&_net_75))?(_gr_s1_rd&({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exer&_net_74))?(_gr_s1_rd+_gr_s2_rd):32'b0)|
    (((exer&_net_73))?(_gr_s1_rd-_gr_s2_rd):32'b0)|
    (((exer&_net_72))?(_gr_s1_rd&_gr_s2_rd):32'b0)|
    (((exer&_net_71))?(_gr_s1_rd|_gr_s2_rd):32'b0)|
    (((exer&_net_70))?(_gr_s1_rd^_gr_s2_rd):32'b0)|
    (((exer&_net_69))?(_gr_s1_rd<<(_gr_s2_rd[4:0])):32'b0)|
    ((((exer&_net_64)&_net_67))?({31'b0000000000000000000000000000000,_net_68}):32'b0)|
    ((((exer&_net_64)&_net_66))?32'b00000000000000000000000000000000:32'b0)|
    ((((exer&_net_64)&_net_65))?32'b00000000000000000000000000000001:32'b0)|
    (((exer&_net_62))?({31'b0000000000000000000000000000000,_net_63}):32'b0)|
    (((exer&_net_61))?(_gr_s1_rd>>(_gr_s2_rd[4:0])):32'b0)|
    ((((exer&_net_57)&_net_60))?(_gr_s1_rd>>(_gr_s2_rd[4:0])):32'b0)|
    ((((exer&_net_57)&_net_58))?(_net_59[31:0]):32'b0);
   assign  _gr_rs1 = (exeb&_net_140)|
    (exeb&_net_137)|
    (exeb&_net_134)|
    (exeb&_net_131)|
    ((exeb&_net_124)&_net_128)|
    (exeb&_net_124)|
    (exeb&_net_124)|
    (exeb&_net_124)|
    ((exeb&_net_117)&_net_121)|
    (exeb&_net_117)|
    (exeb&_net_117)|
    (exeb&_net_117)|
    (exes&_net_116)|
    (exes&_net_115)|
    (exes&_net_114)|
    (exei_2&_net_113)|
    (exei_2&_net_112)|
    (exei_2&_net_111)|
    (exei_2&_net_109)|
    (exei_2&_net_107)|
    exei_jalr|
    (exei_1&_net_95)|
    (exei_1&_net_92)|
    ((exei_1&_net_84)&_net_89)|
    (exei_1&_net_84)|
    (exei_1&_net_84)|
    (exei_1&_net_84)|
    ((exei_1&_net_84)&_net_85)|
    (exei_1&_net_84)|
    (exei_1&_net_82)|
    (exei_1&_net_81)|
    (exei_1&_net_79)|
    (exei_1&_net_77)|
    (exei_1&_net_76)|
    (exei_1&_net_75)|
    (exer&_net_74)|
    (exer&_net_73)|
    (exer&_net_72)|
    (exer&_net_71)|
    (exer&_net_70)|
    (exer&_net_69)|
    ((exer&_net_64)&_net_67)|
    (exer&_net_64)|
    (exer&_net_64)|
    (exer&_net_64)|
    (exer&_net_62)|
    (exer&_net_61)|
    ((exer&_net_57)&_net_60)|
    (exer&_net_57)|
    ((exer&_net_57)&_net_58)|
    (exer&_net_57);
   assign  _gr_rs2 = (exeb&_net_140)|
    (exeb&_net_137)|
    (exeb&_net_134)|
    (exeb&_net_131)|
    ((exeb&_net_124)&_net_128)|
    (exeb&_net_124)|
    (exeb&_net_124)|
    (exeb&_net_124)|
    ((exeb&_net_117)&_net_121)|
    (exeb&_net_117)|
    (exeb&_net_117)|
    (exeb&_net_117)|
    (exes&_net_116)|
    (exes&_net_115)|
    (exes&_net_114)|
    (exer&_net_74)|
    (exer&_net_73)|
    (exer&_net_72)|
    (exer&_net_71)|
    (exer&_net_70)|
    (exer&_net_69)|
    ((exer&_net_64)&_net_67)|
    (exer&_net_64)|
    (exer&_net_64)|
    (exer&_net_64)|
    (exer&_net_62)|
    (exer&_net_61)|
    ((exer&_net_57)&_net_60)|
    ((exer&_net_57)&_net_58);
   assign  _gr_rd = ((meml&(~(sign != 1'b0)))&_net_155)|
    ((meml&(~(sign != 1'b0)))&_net_153)|
    ((meml&(~(sign != 1'b0)))&_net_152)|
    ((meml&(sign != 1'b0))&_net_150)|
    ((meml&(sign != 1'b0))&_net_148)|
    ((meml&(sign != 1'b0))&_net_147)|
    (exej&_net_145)|
    (exeu&_net_144)|
    (exeu&_net_143)|
    (exei_2&_net_106)|
    (exei_2&_net_105)|
    (exei_2&_net_104)|
    (exei_2&_net_103)|
    (exei_2&_net_102)|
    (exei_2&_net_101)|
    exei_jalr|
    (exei_1&_net_95)|
    (exei_1&_net_92)|
    ((exei_1&_net_84)&_net_89)|
    ((exei_1&_net_84)&_net_88)|
    ((exei_1&_net_84)&_net_87)|
    ((exei_1&_net_84)&_net_85)|
    (exei_1&_net_82)|
    (exei_1&_net_81)|
    (exei_1&_net_79)|
    (exei_1&_net_77)|
    (exei_1&_net_76)|
    (exei_1&_net_75)|
    (exer&_net_74)|
    (exer&_net_73)|
    (exer&_net_72)|
    (exer&_net_71)|
    (exer&_net_70)|
    (exer&_net_69)|
    ((exer&_net_64)&_net_67)|
    ((exer&_net_64)&_net_66)|
    ((exer&_net_64)&_net_65)|
    (exer&_net_62)|
    (exer&_net_61)|
    ((exer&_net_57)&_net_60)|
    ((exer&_net_57)&_net_58);
   assign  _gr_p_reset = p_reset;
   assign  _gr_m_clock = m_clock;
   assign  _proc_meml_set = (exei_2&_net_113)|
    (exei_2&_net_112)|
    (exei_2&_net_111)|
    (exei_2&_net_109)|
    (exei_2&_net_107);
   assign  _proc_meml_reset = meml;
   assign  _proc_exej_set = (dec&_net_11);
   assign  _proc_exej_reset = (exej&_net_145);
   assign  _proc_exeu_set = (dec&_net_39)|
    (dec&_net_20);
   assign  _proc_exeu_reset = exeu;
   assign  _proc_exeb_set = ((dec&_net_13)&_net_19)|
    ((dec&_net_13)&_net_18)|
    ((dec&_net_13)&_net_17)|
    ((dec&_net_13)&_net_16)|
    ((dec&_net_13)&_net_15)|
    ((dec&_net_13)&_net_14);
   assign  _proc_exeb_reset = ((exeb&_net_140)&(~_net_141))|
    ((exeb&_net_140)&_net_141)|
    ((exeb&_net_137)&(~_net_138))|
    ((exeb&_net_137)&_net_138)|
    ((exeb&_net_134)&(~_net_135))|
    ((exeb&_net_134)&_net_135)|
    ((exeb&_net_131)&(~_net_132))|
    ((exeb&_net_131)&_net_132)|
    (((exeb&_net_124)&_net_128)&(~_net_129))|
    (((exeb&_net_124)&_net_128)&_net_129)|
    ((exeb&_net_124)&_net_127)|
    ((exeb&_net_124)&_net_125)|
    (((exeb&_net_117)&_net_121)&(~_net_122))|
    (((exeb&_net_117)&_net_121)&_net_122)|
    ((exeb&_net_117)&_net_119)|
    ((exeb&_net_117)&_net_118);
   assign  _proc_exes_set = ((dec&_net_35)&_net_38)|
    ((dec&_net_35)&_net_37)|
    ((dec&_net_35)&_net_36);
   assign  _proc_exes_reset = exes;
   assign  _proc_exei_jalr_set = (dec&_net_12);
   assign  _proc_exei_jalr_reset = exei_jalr;
   assign  _proc_exei_2_set = ((dec&_net_51)&_net_56)|
    ((dec&_net_51)&_net_55)|
    ((dec&_net_51)&_net_54)|
    ((dec&_net_51)&_net_53)|
    ((dec&_net_51)&_net_52)|
    (dec&_net_50)|
    ((((dec&_net_1)&_net_8)&(~_net_9))&(~_net_10))|
    ((((dec&_net_1)&_net_8)&(~_net_9))&_net_10)|
    (((dec&_net_1)&_net_8)&_net_9)|
    ((dec&_net_1)&_net_7)|
    ((dec&_net_1)&_net_6)|
    ((dec&_net_1)&_net_5)|
    ((dec&_net_1)&_net_4)|
    ((dec&_net_1)&_net_3)|
    ((dec&_net_1)&_net_2);
   assign  _proc_exei_2_reset = (exei_2&_net_113)|
    (exei_2&_net_112)|
    (exei_2&_net_111)|
    (exei_2&_net_109)|
    (exei_2&_net_107)|
    (exei_2&_net_106)|
    (exei_2&_net_105)|
    (exei_2&_net_104)|
    (exei_2&_net_103)|
    (exei_2&_net_102)|
    (exei_2&_net_101)|
    (exei_2&_net_100)|
    (exei_2&_net_99)|
    (exei_2&_net_98);
   assign  _proc_exei_1_set = ((dec&_net_40)&_net_49)|
    ((dec&_net_40)&_net_48)|
    ((dec&_net_40)&_net_47)|
    ((dec&_net_40)&_net_46)|
    ((dec&_net_40)&_net_45)|
    (((dec&_net_40)&_net_43)&(~_net_44))|
    (((dec&_net_40)&_net_43)&_net_44)|
    ((dec&_net_40)&_net_42)|
    ((dec&_net_40)&_net_41);
   assign  _proc_exei_1_reset = exei_1;
   assign  _proc_exer_set = ((((dec&_net_21)&_net_22)&_net_32)&_net_34)|
    ((((dec&_net_21)&_net_22)&_net_32)&_net_33)|
    (((dec&_net_21)&_net_22)&_net_31)|
    (((dec&_net_21)&_net_22)&_net_30)|
    (((dec&_net_21)&_net_22)&_net_29)|
    (((dec&_net_21)&_net_22)&_net_28)|
    ((((dec&_net_21)&_net_22)&_net_25)&_net_27)|
    ((((dec&_net_21)&_net_22)&_net_25)&_net_26)|
    (((dec&_net_21)&_net_22)&_net_24)|
    (((dec&_net_21)&_net_22)&_net_23);
   assign  _proc_exer_reset = exer;
   assign  _proc_dec_set = ift;
   assign  _proc_dec_reset = ((dec&_net_51)&_net_56)|
    ((dec&_net_51)&_net_55)|
    ((dec&_net_51)&_net_54)|
    ((dec&_net_51)&_net_53)|
    ((dec&_net_51)&_net_52)|
    (dec&_net_50)|
    ((dec&_net_40)&_net_49)|
    ((dec&_net_40)&_net_48)|
    ((dec&_net_40)&_net_47)|
    ((dec&_net_40)&_net_46)|
    ((dec&_net_40)&_net_45)|
    (((dec&_net_40)&_net_43)&(~_net_44))|
    (((dec&_net_40)&_net_43)&_net_44)|
    ((dec&_net_40)&_net_42)|
    ((dec&_net_40)&_net_41)|
    (dec&_net_39)|
    ((dec&_net_35)&_net_38)|
    ((dec&_net_35)&_net_37)|
    ((dec&_net_35)&_net_36)|
    ((((dec&_net_21)&_net_22)&_net_32)&_net_34)|
    ((((dec&_net_21)&_net_22)&_net_32)&_net_33)|
    (((dec&_net_21)&_net_22)&_net_31)|
    (((dec&_net_21)&_net_22)&_net_30)|
    (((dec&_net_21)&_net_22)&_net_29)|
    (((dec&_net_21)&_net_22)&_net_28)|
    ((((dec&_net_21)&_net_22)&_net_25)&_net_27)|
    ((((dec&_net_21)&_net_22)&_net_25)&_net_26)|
    (((dec&_net_21)&_net_22)&_net_24)|
    (((dec&_net_21)&_net_22)&_net_23)|
    (dec&_net_20)|
    ((dec&_net_13)&_net_19)|
    ((dec&_net_13)&_net_18)|
    ((dec&_net_13)&_net_17)|
    ((dec&_net_13)&_net_16)|
    ((dec&_net_13)&_net_15)|
    ((dec&_net_13)&_net_14)|
    (dec&_net_12)|
    (dec&_net_11)|
    ((((dec&_net_1)&_net_8)&(~_net_9))&(~_net_10))|
    ((((dec&_net_1)&_net_8)&(~_net_9))&_net_10)|
    (((dec&_net_1)&_net_8)&_net_9)|
    ((dec&_net_1)&_net_7)|
    ((dec&_net_1)&_net_6)|
    ((dec&_net_1)&_net_5)|
    ((dec&_net_1)&_net_4)|
    ((dec&_net_1)&_net_3)|
    ((dec&_net_1)&_net_2);
   assign  _proc_ift_set = meml|
    (exej&_net_145)|
    exeu|
    ((exeb&_net_140)&(~_net_141))|
    ((exeb&_net_140)&_net_141)|
    ((exeb&_net_137)&(~_net_138))|
    ((exeb&_net_137)&_net_138)|
    ((exeb&_net_134)&(~_net_135))|
    ((exeb&_net_134)&_net_135)|
    ((exeb&_net_131)&(~_net_132))|
    ((exeb&_net_131)&_net_132)|
    (((exeb&_net_124)&_net_128)&(~_net_129))|
    (((exeb&_net_124)&_net_128)&_net_129)|
    ((exeb&_net_124)&_net_127)|
    ((exeb&_net_124)&_net_125)|
    (((exeb&_net_117)&_net_121)&(~_net_122))|
    (((exeb&_net_117)&_net_121)&_net_122)|
    ((exeb&_net_117)&_net_119)|
    ((exeb&_net_117)&_net_118)|
    exes|
    (exei_2&_net_106)|
    (exei_2&_net_105)|
    (exei_2&_net_104)|
    (exei_2&_net_103)|
    (exei_2&_net_102)|
    (exei_2&_net_101)|
    (exei_2&_net_98)|
    exei_jalr|
    exei_1|
    exer|
    _net_0;
   assign  _proc_ift_reset = ift;
   assign  _net_0 = (rst_d&(~p_reset));
   assign  _net_1 = ((dec)?((idata[6:2])==5'b11100):1'b0);
   assign  _net_2 = (((dec&_net_1))?((idata[14:12])==3'b111):1'b0);
   assign  _net_3 = (((dec&_net_1))?((idata[14:12])==3'b110):1'b0);
   assign  _net_4 = (((dec&_net_1))?((idata[14:12])==3'b101):1'b0);
   assign  _net_5 = (((dec&_net_1))?((idata[14:12])==3'b011):1'b0);
   assign  _net_6 = (((dec&_net_1))?((idata[14:12])==3'b010):1'b0);
   assign  _net_7 = (((dec&_net_1))?((idata[14:12])==3'b001):1'b0);
   assign  _net_8 = (((dec&_net_1))?((idata[14:12])==3'b000):1'b0);
   assign  _net_9 = ((((dec&_net_1)&_net_8))?((idata[31:20])==12'b001100000010):1'b0);
   assign  _net_10 = (((((dec&_net_1)&_net_8)&(~_net_9)))?(~(idata[20])):1'b0);
   assign  _net_11 = ((dec)?((idata[6:2])==5'b11011):1'b0);
   assign  _net_12 = ((dec)?((idata[6:2])==5'b11001):1'b0);
   assign  _net_13 = ((dec)?((idata[6:2])==5'b11000):1'b0);
   assign  _net_14 = (((dec&_net_13))?((idata[14:12])==3'b111):1'b0);
   assign  _net_15 = (((dec&_net_13))?((idata[14:12])==3'b110):1'b0);
   assign  _net_16 = (((dec&_net_13))?((idata[14:12])==3'b101):1'b0);
   assign  _net_17 = (((dec&_net_13))?((idata[14:12])==3'b100):1'b0);
   assign  _net_18 = (((dec&_net_13))?((idata[14:12])==3'b001):1'b0);
   assign  _net_19 = (((dec&_net_13))?((idata[14:12])==3'b000):1'b0);
   assign  _net_20 = ((dec)?((idata[6:2])==5'b01101):1'b0);
   assign  _net_21 = ((dec)?((idata[6:2])==5'b01100):1'b0);
   assign  _net_22 = (((dec&_net_21))?(~(idata[25])):1'b0);
   assign  _net_23 = ((((dec&_net_21)&_net_22))?((idata[14:12])==3'b111):1'b0);
   assign  _net_24 = ((((dec&_net_21)&_net_22))?((idata[14:12])==3'b110):1'b0);
   assign  _net_25 = ((((dec&_net_21)&_net_22))?((idata[14:12])==3'b101):1'b0);
   assign  _net_26 = (((((dec&_net_21)&_net_22)&_net_25))?(idata[30]):1'b0);
   assign  _net_27 = (((((dec&_net_21)&_net_22)&_net_25))?(~(idata[30])):1'b0);
   assign  _net_28 = ((((dec&_net_21)&_net_22))?((idata[14:12])==3'b100):1'b0);
   assign  _net_29 = ((((dec&_net_21)&_net_22))?((idata[14:12])==3'b011):1'b0);
   assign  _net_30 = ((((dec&_net_21)&_net_22))?((idata[14:12])==3'b010):1'b0);
   assign  _net_31 = ((((dec&_net_21)&_net_22))?((idata[14:12])==3'b001):1'b0);
   assign  _net_32 = ((((dec&_net_21)&_net_22))?((idata[14:12])==3'b000):1'b0);
   assign  _net_33 = (((((dec&_net_21)&_net_22)&_net_32))?(idata[30]):1'b0);
   assign  _net_34 = (((((dec&_net_21)&_net_22)&_net_32))?(~(idata[30])):1'b0);
   assign  _net_35 = ((dec)?((idata[6:2])==5'b01000):1'b0);
   assign  _net_36 = (((dec&_net_35))?((idata[14:12])==3'b010):1'b0);
   assign  _net_37 = (((dec&_net_35))?((idata[14:12])==3'b001):1'b0);
   assign  _net_38 = (((dec&_net_35))?((idata[14:12])==3'b000):1'b0);
   assign  _net_39 = ((dec)?((idata[6:2])==5'b00101):1'b0);
   assign  _net_40 = ((dec)?((idata[6:2])==5'b00100):1'b0);
   assign  _net_41 = (((dec&_net_40))?((idata[14:12])==3'b111):1'b0);
   assign  _net_42 = (((dec&_net_40))?((idata[14:12])==3'b110):1'b0);
   assign  _net_43 = (((dec&_net_40))?((idata[14:12])==3'b101):1'b0);
   assign  _net_44 = ((((dec&_net_40)&_net_43))?((idata[31:25])==7'b0000000):1'b0);
   assign  _net_45 = (((dec&_net_40))?((idata[14:12])==3'b100):1'b0);
   assign  _net_46 = (((dec&_net_40))?((idata[14:12])==3'b011):1'b0);
   assign  _net_47 = (((dec&_net_40))?((idata[14:12])==3'b010):1'b0);
   assign  _net_48 = (((dec&_net_40))?((idata[14:12])==3'b001):1'b0);
   assign  _net_49 = (((dec&_net_40))?((idata[14:12])==3'b000):1'b0);
   assign  _net_50 = ((dec)?((idata[6:2])==5'b00011):1'b0);
   assign  _net_51 = ((dec)?((idata[6:2])==5'b00000):1'b0);
   assign  _net_52 = (((dec&_net_51))?((idata[14:12])==3'b101):1'b0);
   assign  _net_53 = (((dec&_net_51))?((idata[14:12])==3'b100):1'b0);
   assign  _net_54 = (((dec&_net_51))?((idata[14:12])==3'b010):1'b0);
   assign  _net_55 = (((dec&_net_51))?((idata[14:12])==3'b001):1'b0);
   assign  _net_56 = (((dec&_net_51))?((idata[14:12])==3'b000):1'b0);
   assign  _net_57 = ((exer)?(order==8'b01101100):1'b0);
   assign  _net_58 = (((exer&_net_57))?(_gr_s1_rd[31]):1'b0);
   assign  _net_59 = (({({(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31])}),_gr_s1_rd})>>(_gr_s2_rd[4:0]));
   assign  _net_60 = (((exer&_net_57))?(~(_gr_s1_rd[31])):1'b0);
   assign  _net_61 = ((exer)?(order==8'b01101110):1'b0);
   assign  _net_62 = ((exer)?(order==8'b01101011):1'b0);
   assign  _net_63 = (_gr_s1_rd < _gr_s2_rd);
   assign  _net_64 = ((exer)?(order==8'b01101000):1'b0);
   assign  _net_65 = (((exer&_net_64))?((_gr_s1_rd[31])&(~(_gr_s2_rd[31]))):1'b0);
   assign  _net_66 = (((exer&_net_64))?((~(_gr_s1_rd[31]))&(_gr_s2_rd[31])):1'b0);
   assign  _net_67 = (((exer&_net_64))?((_gr_s1_rd[31])==(_gr_s2_rd[31])):1'b0);
   assign  _net_68 = (_gr_s1_rd < _gr_s2_rd);
   assign  _net_69 = ((exer)?(order==8'b01100110):1'b0);
   assign  _net_70 = ((exer)?(order==8'b01110010):1'b0);
   assign  _net_71 = ((exer)?(order==8'b01011111):1'b0);
   assign  _net_72 = ((exer)?(order==8'b00001011):1'b0);
   assign  _net_73 = ((exer)?(order==8'b01110000):1'b0);
   assign  _net_74 = ((exer)?(order==8'b00000000):1'b0);
   assign  _net_75 = ((exei_1)?(order==8'b00001100):1'b0);
   assign  _net_76 = ((exei_1)?(order==8'b01100000):1'b0);
   assign  _net_77 = ((exei_1)?(order==8'b01101101):1'b0);
   assign  _net_78 = (({({(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31])}),_gr_s1_rd})>>(imm12[4:0]));
   assign  _net_79 = ((exei_1)?(order==8'b01101111):1'b0);
   assign  _net_80 = (_gr_s1_rd>>imm12);
   assign  _net_81 = ((exei_1)?(order==8'b01110011):1'b0);
   assign  _net_82 = ((exei_1)?(order==8'b01101010):1'b0);
   assign  _net_83 = (_gr_s1_rd < ({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_84 = ((exei_1)?(order==8'b01101001):1'b0);
   assign  _net_85 = (((exei_1&_net_84))?((_gr_s1_rd[31])&(imm12[11])):1'b0);
   assign  _net_86 = ((_gr_s1_rd[30:0]) < ({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_87 = (((exei_1&_net_84))?((_gr_s1_rd[31])&(~(imm12[11]))):1'b0);
   assign  _net_88 = (((exei_1&_net_84))?((~(_gr_s1_rd[31]))&(imm12[11])):1'b0);
   assign  _net_89 = (((exei_1&_net_84))?((~(_gr_s1_rd[31]))&(~(imm12[11]))):1'b0);
   assign  _net_90 = imm12;
   assign  _net_91 = (_gr_s1_rd < ({20'b00000000000000000000,_net_90}));
   assign  _net_92 = ((exei_1)?(order==8'b01100111):1'b0);
   assign  _net_93 = imm12;
   assign  _net_94 = (_gr_s1_rd<<({20'b00000000000000000000,_net_93}));
   assign  _net_95 = ((exei_1)?(order==8'b00000001):1'b0);
   assign  _net_96 = (_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_97 = (_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_98 = ((exei_2)?(order==8'b01110100):1'b0);
   assign  _net_99 = ((exei_2)?(order==8'b00011100):1'b0);
   assign  _net_100 = ((exei_2)?(order==8'b00011101):1'b0);
   assign  _net_101 = ((exei_2)?(order==8'b00010101):1'b0);
   assign  _net_102 = ((exei_2)?(order==8'b00010111):1'b0);
   assign  _net_103 = ((exei_2)?(order==8'b00011001):1'b0);
   assign  _net_104 = ((exei_2)?(order==8'b00010100):1'b0);
   assign  _net_105 = ((exei_2)?(order==8'b00010110):1'b0);
   assign  _net_106 = ((exei_2)?(order==8'b00011000):1'b0);
   assign  _net_107 = ((exei_2)?(order==8'b01010111):1'b0);
   assign  _net_108 = imm12;
   assign  _net_109 = ((exei_2)?(order==8'b01010101):1'b0);
   assign  _net_110 = imm12;
   assign  _net_111 = ((exei_2)?(order==8'b01011010):1'b0);
   assign  _net_112 = ((exei_2)?(order==8'b01010110):1'b0);
   assign  _net_113 = ((exei_2)?(order==8'b01010100):1'b0);
   assign  _net_114 = ((exes)?(order==8'b01110001):1'b0);
   assign  _net_115 = ((exes)?(order==8'b01100101):1'b0);
   assign  _net_116 = ((exes)?(order==8'b01100011):1'b0);
   assign  _net_117 = ((exeb)?(order==8'b00001111):1'b0);
   assign  _net_118 = (((exeb&_net_117))?((_gr_s1_rd[31])&(~(_gr_s2_rd[31]))):1'b0);
   assign  _net_119 = (((exeb&_net_117))?((~(_gr_s1_rd[31]))&(_gr_s2_rd[31])):1'b0);
   assign  _net_120 = ({imm12,1'b0});
   assign  _net_121 = (((exeb&_net_117))?((_gr_s1_rd[31])==(_gr_s2_rd[31])):1'b0);
   assign  _net_122 = ((((exeb&_net_117)&_net_121))?((_gr_s1_rd[30:0]) >= (_gr_s2_rd[30:0])):1'b0);
   assign  _net_123 = ({imm12,1'b0});
   assign  _net_124 = ((exeb)?(order==8'b00010001):1'b0);
   assign  _net_125 = (((exeb&_net_124))?((_gr_s1_rd[31])&(~(_gr_s2_rd[31]))):1'b0);
   assign  _net_126 = ({imm12,1'b0});
   assign  _net_127 = (((exeb&_net_124))?((~(_gr_s1_rd[31]))&(_gr_s2_rd[31])):1'b0);
   assign  _net_128 = (((exeb&_net_124))?((_gr_s1_rd[31])==(_gr_s2_rd[31])):1'b0);
   assign  _net_129 = ((((exeb&_net_124)&_net_128))?((_gr_s1_rd[30:0]) < (_gr_s2_rd[30:0])):1'b0);
   assign  _net_130 = ({imm12,1'b0});
   assign  _net_131 = ((exeb)?(order==8'b00010000):1'b0);
   assign  _net_132 = (((exeb&_net_131))?(_gr_s1_rd >= _gr_s2_rd):1'b0);
   assign  _net_133 = ({imm12,1'b0});
   assign  _net_134 = ((exeb)?(order==8'b00010010):1'b0);
   assign  _net_135 = (((exeb&_net_134))?(_gr_s1_rd < _gr_s2_rd):1'b0);
   assign  _net_136 = ({imm12,1'b0});
   assign  _net_137 = ((exeb)?(order==8'b00010011):1'b0);
   assign  _net_138 = (((exeb&_net_137))?(_gr_s1_rd != _gr_s2_rd):1'b0);
   assign  _net_139 = ({imm12,1'b0});
   assign  _net_140 = ((exeb)?(order==8'b00001110):1'b0);
   assign  _net_141 = (((exeb&_net_140))?(_gr_s1_rd==_gr_s2_rd):1'b0);
   assign  _net_142 = ({imm12,1'b0});
   assign  _net_143 = ((exeu)?(order==8'b01011001):1'b0);
   assign  _net_144 = ((exeu)?(order==8'b00001101):1'b0);
   assign  _net_145 = ((exej)?(order==8'b01010010):1'b0);
   assign  _net_146 = ({imm,1'b0});
   assign  _net_147 = (((meml&(sign != 1'b0)))?(be==4'b1111):1'b0);
   assign  _net_148 = (((meml&(sign != 1'b0)))?(be==4'b0011):1'b0);
   assign  _net_149 = (rdata[15:0]);
   assign  _net_150 = (((meml&(sign != 1'b0)))?(be==4'b0001):1'b0);
   assign  _net_151 = (rdata[7:0]);
   assign  _net_152 = (((meml&(~(sign != 1'b0))))?(be==4'b1111):1'b0);
   assign  _net_153 = (((meml&(~(sign != 1'b0))))?(be==4'b0011):1'b0);
   assign  _net_154 = (rdata[15:0]);
   assign  _net_155 = (((meml&(~(sign != 1'b0))))?(be==4'b0001):1'b0);
   assign  _net_156 = (rdata[7:0]);
   assign  iaddr = ((ift)?pc:32'b0);
   assign  daddr = (((exes&_net_116))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exes&_net_115))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exes&_net_114))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_113))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_112))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_111))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_109))?(_gr_s1_rd+({20'b00000000000000000000,_net_110})):32'b0)|
    (((exei_2&_net_107))?(_gr_s1_rd+({20'b00000000000000000000,_net_108})):32'b0);
   assign  wdata = (((exes&_net_116))?({24'b000000000000000000000000,(_gr_s2_rd[7:0])}):32'b0)|
    (((exes&_net_115))?({16'b0000000000000000,(_gr_s2_rd[15:0])}):32'b0)|
    (((exes&_net_114))?(_gr_s2_rd[31:0]):32'b0);
   assign  ecall_led = ecall;
   assign  ebreak_led = ebreak;
   assign  dmem_read = (exei_2&_net_113)|
    (exei_2&_net_112)|
    (exei_2&_net_111)|
    (exei_2&_net_109)|
    (exei_2&_net_107);
   assign  dmem_write = (exes&_net_116)|
    (exes&_net_115)|
    (exes&_net_114);
always @(posedge m_clock)
  begin
if (meml)
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exej&_net_145))
      pc <= (pc+({({(_net_146[20]),(_net_146[20]),(_net_146[20]),(_net_146[20]),(_net_146[20]),(_net_146[20]),(_net_146[20]),(_net_146[20]),(_net_146[20]),(_net_146[20]),(_net_146[20])}),_net_146}));
else if (exeu)
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_140)&(~_net_141)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_140)&_net_141))
      pc <= (pc+({({(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12])}),_net_142}));
else if (((exeb&_net_137)&(~_net_138)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_137)&_net_138))
      pc <= (pc+({({(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12])}),_net_139}));
else if (((exeb&_net_134)&(~_net_135)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_134)&_net_135))
      pc <= (pc+({({(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12])}),_net_136}));
else if (((exeb&_net_131)&(~_net_132)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_131)&_net_132))
      pc <= (pc+({({(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12]),(_net_133[12])}),_net_133}));
else if ((((exeb&_net_124)&_net_128)&(~_net_129)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((((exeb&_net_124)&_net_128)&_net_129))
      pc <= (pc+({({(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12]),(_net_130[12])}),_net_130}));
else if (((exeb&_net_124)&_net_127))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_124)&_net_125))
      pc <= (pc+({({(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12]),(_net_126[12])}),_net_126}));
else if ((((exeb&_net_117)&_net_121)&(~_net_122)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((((exeb&_net_117)&_net_121)&_net_122))
      pc <= (pc+({({(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12]),(_net_123[12])}),_net_123}));
else if (((exeb&_net_117)&_net_119))
      pc <= (pc+({({(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12]),(_net_120[12])}),_net_120}));
else if (((exeb&_net_117)&_net_118))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (exes)
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exei_2&_net_106))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exei_2&_net_105))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exei_2&_net_104))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exei_2&_net_103))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exei_2&_net_102))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exei_2&_net_101))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exei_2&_net_98))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (exei_jalr)
      pc <= ({(_net_97[31:1]),1'b0});
else if (exei_1)
      pc <= (pc+32'b00000000000000000000000000000100);
else if (exer)
      pc <= (pc+32'b00000000000000000000000000000100);
else if (_net_0)
      pc <= 32'b00000000000000000000000000000000;
end
always @(posedge m_clock)
  begin
  rst_d <= p_reset;
end
always @(posedge m_clock)
  begin
if (((dec&_net_51)&_net_56))
      rs1 <= (idata[19:15]);
else if (((dec&_net_51)&_net_55))
      rs1 <= (idata[19:15]);
else if (((dec&_net_51)&_net_54))
      rs1 <= (idata[19:15]);
else if (((dec&_net_51)&_net_53))
      rs1 <= (idata[19:15]);
else if (((dec&_net_51)&_net_52))
      rs1 <= (idata[19:15]);
else if ((dec&_net_50))
      rs1 <= (idata[19:15]);
else if (((dec&_net_40)&_net_49))
      rs1 <= (idata[19:15]);
else if (((dec&_net_40)&_net_48))
      rs1 <= (idata[19:15]);
else if (((dec&_net_40)&_net_47))
      rs1 <= (idata[19:15]);
else if (((dec&_net_40)&_net_46))
      rs1 <= (idata[19:15]);
else if (((dec&_net_40)&_net_45))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_40)&_net_43)&(~_net_44)))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_40)&_net_43)&_net_44))
      rs1 <= (idata[19:15]);
else if (((dec&_net_40)&_net_42))
      rs1 <= (idata[19:15]);
else if (((dec&_net_40)&_net_41))
      rs1 <= (idata[19:15]);
else if (((dec&_net_35)&_net_38))
      rs1 <= (idata[19:15]);
else if (((dec&_net_35)&_net_37))
      rs1 <= (idata[19:15]);
else if (((dec&_net_35)&_net_36))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_21)&_net_22)&_net_32)&_net_34))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_21)&_net_22)&_net_32)&_net_33))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_21)&_net_22)&_net_31))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_21)&_net_22)&_net_30))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_21)&_net_22)&_net_29))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_21)&_net_22)&_net_28))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_21)&_net_22)&_net_25)&_net_27))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_21)&_net_22)&_net_25)&_net_26))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_21)&_net_22)&_net_24))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_21)&_net_22)&_net_23))
      rs1 <= (idata[19:15]);
else if (((dec&_net_13)&_net_19))
      rs1 <= (idata[19:15]);
else if (((dec&_net_13)&_net_18))
      rs1 <= (idata[19:15]);
else if (((dec&_net_13)&_net_17))
      rs1 <= (idata[19:15]);
else if (((dec&_net_13)&_net_16))
      rs1 <= (idata[19:15]);
else if (((dec&_net_13)&_net_15))
      rs1 <= (idata[19:15]);
else if (((dec&_net_13)&_net_14))
      rs1 <= (idata[19:15]);
else if ((dec&_net_12))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_1)&_net_8)&(~_net_9))&(~_net_10)))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_1)&_net_8)&(~_net_9))&_net_10))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_1)&_net_8)&_net_9))
      rs1 <= (idata[19:15]);
else if (((dec&_net_1)&_net_7))
      rs1 <= (idata[19:15]);
else if (((dec&_net_1)&_net_6))
      rs1 <= (idata[19:15]);
else if (((dec&_net_1)&_net_5))
      rs1 <= (idata[19:15]);
else if (((dec&_net_1)&_net_4))
      rs1 <= (idata[19:15]);
else if (((dec&_net_1)&_net_3))
      rs1 <= (idata[19:15]);
else if (((dec&_net_1)&_net_2))
      rs1 <= (idata[19:15]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_35)&_net_38))
      rs2 <= (idata[24:20]);
else if (((dec&_net_35)&_net_37))
      rs2 <= (idata[24:20]);
else if (((dec&_net_35)&_net_36))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_21)&_net_22)&_net_32)&_net_34))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_21)&_net_22)&_net_32)&_net_33))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_21)&_net_22)&_net_31))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_21)&_net_22)&_net_30))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_21)&_net_22)&_net_29))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_21)&_net_22)&_net_28))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_21)&_net_22)&_net_25)&_net_27))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_21)&_net_22)&_net_25)&_net_26))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_21)&_net_22)&_net_24))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_21)&_net_22)&_net_23))
      rs2 <= (idata[24:20]);
else if (((dec&_net_13)&_net_19))
      rs2 <= (idata[24:20]);
else if (((dec&_net_13)&_net_18))
      rs2 <= (idata[24:20]);
else if (((dec&_net_13)&_net_17))
      rs2 <= (idata[24:20]);
else if (((dec&_net_13)&_net_16))
      rs2 <= (idata[24:20]);
else if (((dec&_net_13)&_net_15))
      rs2 <= (idata[24:20]);
else if (((dec&_net_13)&_net_14))
      rs2 <= (idata[24:20]);
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_113))
      rd <= rd;
else if ((exei_2&_net_112))
      rd <= rd;
else if ((exei_2&_net_111))
      rd <= rd;
else if ((exei_2&_net_109))
      rd <= rd;
else if ((exei_2&_net_107))
      rd <= rd;
else if (((dec&_net_51)&_net_56))
      rd <= (idata[11:7]);
else if (((dec&_net_51)&_net_55))
      rd <= (idata[11:7]);
else if (((dec&_net_51)&_net_54))
      rd <= (idata[11:7]);
else if (((dec&_net_51)&_net_53))
      rd <= (idata[11:7]);
else if (((dec&_net_51)&_net_52))
      rd <= (idata[11:7]);
else if ((dec&_net_50))
      rd <= (idata[11:7]);
else if (((dec&_net_40)&_net_49))
      rd <= (idata[11:7]);
else if (((dec&_net_40)&_net_48))
      rd <= (idata[11:7]);
else if (((dec&_net_40)&_net_47))
      rd <= (idata[11:7]);
else if (((dec&_net_40)&_net_46))
      rd <= (idata[11:7]);
else if (((dec&_net_40)&_net_45))
      rd <= (idata[11:7]);
else if ((((dec&_net_40)&_net_43)&(~_net_44)))
      rd <= (idata[11:7]);
else if ((((dec&_net_40)&_net_43)&_net_44))
      rd <= (idata[11:7]);
else if (((dec&_net_40)&_net_42))
      rd <= (idata[11:7]);
else if (((dec&_net_40)&_net_41))
      rd <= (idata[11:7]);
else if ((dec&_net_39))
      rd <= (idata[11:7]);
else if (((((dec&_net_21)&_net_22)&_net_32)&_net_34))
      rd <= (idata[11:7]);
else if (((((dec&_net_21)&_net_22)&_net_32)&_net_33))
      rd <= (idata[11:7]);
else if ((((dec&_net_21)&_net_22)&_net_31))
      rd <= (idata[11:7]);
else if ((((dec&_net_21)&_net_22)&_net_30))
      rd <= (idata[11:7]);
else if ((((dec&_net_21)&_net_22)&_net_29))
      rd <= (idata[11:7]);
else if ((((dec&_net_21)&_net_22)&_net_28))
      rd <= (idata[11:7]);
else if (((((dec&_net_21)&_net_22)&_net_25)&_net_27))
      rd <= (idata[11:7]);
else if (((((dec&_net_21)&_net_22)&_net_25)&_net_26))
      rd <= (idata[11:7]);
else if ((((dec&_net_21)&_net_22)&_net_24))
      rd <= (idata[11:7]);
else if ((((dec&_net_21)&_net_22)&_net_23))
      rd <= (idata[11:7]);
else if ((dec&_net_20))
      rd <= (idata[11:7]);
else if ((dec&_net_12))
      rd <= (idata[11:7]);
else if ((dec&_net_11))
      rd <= (idata[11:7]);
else if (((((dec&_net_1)&_net_8)&(~_net_9))&(~_net_10)))
      rd <= (idata[11:7]);
else if (((((dec&_net_1)&_net_8)&(~_net_9))&_net_10))
      rd <= (idata[11:7]);
else if ((((dec&_net_1)&_net_8)&_net_9))
      rd <= (idata[11:7]);
else if (((dec&_net_1)&_net_7))
      rd <= (idata[11:7]);
else if (((dec&_net_1)&_net_6))
      rd <= (idata[11:7]);
else if (((dec&_net_1)&_net_5))
      rd <= (idata[11:7]);
else if (((dec&_net_1)&_net_4))
      rd <= (idata[11:7]);
else if (((dec&_net_1)&_net_3))
      rd <= (idata[11:7]);
else if (((dec&_net_1)&_net_2))
      rd <= (idata[11:7]);
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_113))
      be <= 4'b0001;
else if ((exei_2&_net_112))
      be <= 4'b0011;
else if ((exei_2&_net_111))
      be <= 4'b1111;
else if ((exei_2&_net_109))
      be <= 4'b0001;
else if ((exei_2&_net_107))
      be <= 4'b0011;
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_113))
      sign <= 1'b1;
else if ((exei_2&_net_112))
      sign <= 1'b1;
else if ((exei_2&_net_111))
      sign <= 1'b1;
else if ((exei_2&_net_109))
      sign <= 1'b0;
else if ((exei_2&_net_107))
      sign <= 1'b0;
end
always @(posedge m_clock)
  begin
if (((dec&_net_51)&_net_56))
      imm12 <= (idata[31:20]);
else if (((dec&_net_51)&_net_55))
      imm12 <= (idata[31:20]);
else if (((dec&_net_51)&_net_54))
      imm12 <= (idata[31:20]);
else if (((dec&_net_51)&_net_53))
      imm12 <= (idata[31:20]);
else if (((dec&_net_51)&_net_52))
      imm12 <= (idata[31:20]);
else if ((dec&_net_50))
      imm12 <= (idata[31:20]);
else if (((dec&_net_40)&_net_49))
      imm12 <= (idata[31:20]);
else if (((dec&_net_40)&_net_48))
      imm12 <= ({6'b000000,(idata[25:20])});
else if (((dec&_net_40)&_net_47))
      imm12 <= (idata[31:20]);
else if (((dec&_net_40)&_net_46))
      imm12 <= (idata[31:20]);
else if (((dec&_net_40)&_net_45))
      imm12 <= (idata[31:20]);
else if ((((dec&_net_40)&_net_43)&(~_net_44)))
      imm12 <= (idata[31:20]);
else if ((((dec&_net_40)&_net_43)&_net_44))
      imm12 <= (idata[31:20]);
else if (((dec&_net_40)&_net_42))
      imm12 <= (idata[31:20]);
else if (((dec&_net_40)&_net_41))
      imm12 <= (idata[31:20]);
else if (((dec&_net_35)&_net_38))
      imm12 <= ({(idata[31:25]),(idata[11:7])});
else if (((dec&_net_35)&_net_37))
      imm12 <= ({(idata[31:25]),(idata[11:7])});
else if (((dec&_net_35)&_net_36))
      imm12 <= ({(idata[31:25]),(idata[11:7])});
else if (((dec&_net_13)&_net_19))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_13)&_net_18))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_13)&_net_17))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_13)&_net_16))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_13)&_net_15))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_13)&_net_14))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if ((dec&_net_12))
      imm12 <= (idata[31:20]);
else if (((((dec&_net_1)&_net_8)&(~_net_9))&(~_net_10)))
      imm12 <= (idata[31:20]);
else if (((((dec&_net_1)&_net_8)&(~_net_9))&_net_10))
      imm12 <= (idata[31:20]);
else if ((((dec&_net_1)&_net_8)&_net_9))
      imm12 <= (idata[31:20]);
else if (((dec&_net_1)&_net_7))
      imm12 <= (idata[31:20]);
else if (((dec&_net_1)&_net_6))
      imm12 <= (idata[31:20]);
else if (((dec&_net_1)&_net_5))
      imm12 <= (idata[31:20]);
else if (((dec&_net_1)&_net_4))
      imm12 <= (idata[31:20]);
else if (((dec&_net_1)&_net_3))
      imm12 <= (idata[31:20]);
else if (((dec&_net_1)&_net_2))
      imm12 <= (idata[31:20]);
end
always @(posedge m_clock)
  begin
if ((dec&_net_39))
      imm <= (idata[31:12]);
else if ((dec&_net_20))
      imm <= (idata[31:12]);
else if ((dec&_net_11))
      imm <= ({(idata[31]),(idata[19:12]),(idata[20]),(idata[30:21])});
end
always @(posedge m_clock)
  begin
if (((dec&_net_51)&_net_56))
      order <= 8'b01010100;
else if (((dec&_net_51)&_net_55))
      order <= 8'b01010110;
else if (((dec&_net_51)&_net_54))
      order <= 8'b01011010;
else if (((dec&_net_51)&_net_53))
      order <= 8'b01010101;
else if (((dec&_net_51)&_net_52))
      order <= 8'b01010111;
else if ((dec&_net_50))
      order <= 8'b01110100;
else if (((dec&_net_40)&_net_49))
      order <= 8'b00000001;
else if (((dec&_net_40)&_net_48))
      order <= 8'b01100111;
else if (((dec&_net_40)&_net_47))
      order <= 8'b01101001;
else if (((dec&_net_40)&_net_46))
      order <= 8'b01101010;
else if (((dec&_net_40)&_net_45))
      order <= 8'b01110011;
else if ((((dec&_net_40)&_net_43)&(~_net_44)))
      order <= 8'b01101101;
else if ((((dec&_net_40)&_net_43)&_net_44))
      order <= 8'b01101111;
else if (((dec&_net_40)&_net_42))
      order <= 8'b01100000;
else if (((dec&_net_40)&_net_41))
      order <= 8'b00001100;
else if ((dec&_net_39))
      order <= 8'b00001101;
else if (((dec&_net_35)&_net_38))
      order <= 8'b01100011;
else if (((dec&_net_35)&_net_37))
      order <= 8'b01100101;
else if (((dec&_net_35)&_net_36))
      order <= 8'b01110001;
else if (((((dec&_net_21)&_net_22)&_net_32)&_net_34))
      order <= 8'b00000000;
else if (((((dec&_net_21)&_net_22)&_net_32)&_net_33))
      order <= 8'b01110000;
else if ((((dec&_net_21)&_net_22)&_net_31))
      order <= 8'b01100110;
else if ((((dec&_net_21)&_net_22)&_net_30))
      order <= 8'b01101000;
else if ((((dec&_net_21)&_net_22)&_net_29))
      order <= 8'b01101011;
else if ((((dec&_net_21)&_net_22)&_net_28))
      order <= 8'b01110010;
else if (((((dec&_net_21)&_net_22)&_net_25)&_net_27))
      order <= 8'b01101110;
else if (((((dec&_net_21)&_net_22)&_net_25)&_net_26))
      order <= 8'b01101100;
else if ((((dec&_net_21)&_net_22)&_net_24))
      order <= 8'b01011111;
else if ((((dec&_net_21)&_net_22)&_net_23))
      order <= 8'b00001011;
else if ((dec&_net_20))
      order <= 8'b01011001;
else if (((dec&_net_13)&_net_19))
      order <= 8'b00001110;
else if (((dec&_net_13)&_net_18))
      order <= 8'b00010011;
else if (((dec&_net_13)&_net_17))
      order <= 8'b00010001;
else if (((dec&_net_13)&_net_16))
      order <= 8'b00001111;
else if (((dec&_net_13)&_net_15))
      order <= 8'b00010010;
else if (((dec&_net_13)&_net_14))
      order <= 8'b00010000;
else if ((dec&_net_12))
      order <= 8'b01010011;
else if ((dec&_net_11))
      order <= 8'b01010010;
else if (((((dec&_net_1)&_net_8)&(~_net_9))&(~_net_10)))
      order <= 8'b00011100;
else if (((((dec&_net_1)&_net_8)&(~_net_9))&_net_10))
      order <= 8'b00011101;
else if ((((dec&_net_1)&_net_8)&_net_9))
      order <= 8'b01110100;
else if (((dec&_net_1)&_net_7))
      order <= 8'b00011000;
else if (((dec&_net_1)&_net_6))
      order <= 8'b00010110;
else if (((dec&_net_1)&_net_5))
      order <= 8'b00010100;
else if (((dec&_net_1)&_net_4))
      order <= 8'b00011001;
else if (((dec&_net_1)&_net_3))
      order <= 8'b00010111;
else if (((dec&_net_1)&_net_2))
      order <= 8'b00010101;
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_100))
      ecall <= 1'b1;
else if ((p_reset != 1'b0))
      ecall <= 1'b0;
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_99))
      ebreak <= 1'b1;
else if ((p_reset != 1'b0))
      ebreak <= 1'b0;
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
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     meml <= 1'b0;
else if ((_proc_meml_set|_proc_meml_reset))
      meml <= _proc_meml_set;
end
endmodule

/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Tue Mar  6 13:30:22 2018
 Licensed to :EVALUATION USER*/
