/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Tue Feb 06 13:56:57 2018
 Licensed to :EVALUATION USER
*/
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
  reg [31:0] gr [0:31];
  wire [31:0] rd_wire;
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
  wire [31:0] _net_44;
  wire _net_45;
  wire [31:0] _net_46;
  wire [31:0] _net_47;
  wire [30:0] _net_48;
  wire [31:0] _net_49;
  wire _net_50;
  wire [31:0] _net_51;
  wire [31:0] _net_52;
  wire _net_53;
  wire [31:0] _net_54;
  wire [31:0] _net_55;
  wire _net_56;
  wire [31:0] _net_57;
  wire [31:0] _net_58;
  wire _net_59;
  wire _net_60;
  wire [31:0] _net_61;
  wire [31:0] _net_62;
  wire _net_63;
  wire [31:0] _net_64;
  wire [31:0] _net_65;
  wire _net_66;
  wire [31:0] _net_67;
  wire [31:0] _net_68;
  wire _net_69;
  wire [31:0] _net_70;
  wire [31:0] _net_71;
  wire _net_72;
  wire _net_73;
  wire [31:0] _net_74;
  wire [31:0] _net_75;
  wire _net_76;
  wire [31:0] _net_77;
  wire [31:0] _net_78;
  wire _net_79;
  wire [31:0] _net_80;
  wire [31:0] _net_81;
  wire _net_82;
  wire [31:0] _net_83;
  wire [31:0] _net_84;
  wire _net_85;
  wire [31:0] _net_86;
  wire [31:0] _net_87;
  wire _net_88;
  wire [31:0] _net_89;
  wire [31:0] _net_90;
  wire _net_91;
  wire [31:0] _net_92;
  wire _net_93;
  wire [31:0] _net_94;
  wire _net_95;
  wire [31:0] _net_96;
  wire _net_97;
  wire [31:0] _net_98;
  wire [11:0] _net_99;
  wire _net_100;
  wire _net_101;
  wire [31:0] _net_102;
  wire _net_103;
  wire _net_104;
  wire [31:0] _net_105;
  wire [31:0] _net_106;
  wire [31:0] _net_107;
  wire [31:0] _net_108;
  wire _net_109;
  wire [31:0] _net_110;
  wire [11:0] _net_111;
  wire _net_112;
  wire [31:0] _net_113;
  wire [11:0] _net_114;
  wire _net_115;
  wire [31:0] _net_116;
  wire _net_117;
  wire [31:0] _net_118;
  wire _net_119;
  wire [31:0] _net_120;
  wire _net_121;
  wire [31:0] _net_122;
  wire [31:0] _net_123;
  wire _net_124;
  wire [31:0] _net_125;
  wire [31:0] _net_126;
  wire _net_127;
  wire [31:0] _net_128;
  wire [31:0] _net_129;
  wire _net_130;
  wire [31:0] _net_131;
  wire [31:0] _net_132;
  wire _net_133;
  wire [31:0] _net_134;
  wire [31:0] _net_135;
  wire _net_136;
  wire [12:0] _net_137;
  wire [31:0] _net_138;
  wire [31:0] _net_139;
  wire _net_140;
  wire [31:0] _net_141;
  wire [31:0] _net_142;
  wire _net_143;
  wire [31:0] _net_144;
  wire [31:0] _net_145;
  wire _net_146;
  wire [12:0] _net_147;
  wire _net_148;
  wire [31:0] _net_149;
  wire [31:0] _net_150;
  wire _net_151;
  wire [12:0] _net_152;
  wire [31:0] _net_153;
  wire [31:0] _net_154;
  wire _net_155;
  wire [31:0] _net_156;
  wire [31:0] _net_157;
  wire _net_158;
  wire [31:0] _net_159;
  wire [31:0] _net_160;
  wire _net_161;
  wire [31:0] _net_162;
  wire [31:0] _net_163;
  wire _net_164;
  wire [12:0] _net_165;
  wire _net_166;
  wire [31:0] _net_167;
  wire [31:0] _net_168;
  wire _net_169;
  wire [31:0] _net_170;
  wire [31:0] _net_171;
  wire _net_172;
  wire [12:0] _net_173;
  wire _net_174;
  wire [31:0] _net_175;
  wire [31:0] _net_176;
  wire _net_177;
  wire [31:0] _net_178;
  wire [31:0] _net_179;
  wire _net_180;
  wire [12:0] _net_181;
  wire _net_182;
  wire [31:0] _net_183;
  wire [31:0] _net_184;
  wire _net_185;
  wire [31:0] _net_186;
  wire [31:0] _net_187;
  wire _net_188;
  wire [12:0] _net_189;
  wire _net_190;
  wire [31:0] _net_191;
  wire [31:0] _net_192;
  wire _net_193;
  wire [31:0] _net_194;
  wire [31:0] _net_195;
  wire _net_196;
  wire [12:0] _net_197;
  wire _net_198;
  wire _net_199;
  wire _net_200;
  wire [20:0] _net_201;

   assign  _proc_exej_set = (dec&_net_1);
   assign  _proc_exej_reset = (exej&_net_200);
   assign  _proc_exeu_set = (dec&_net_29)|
    (dec&_net_10);
   assign  _proc_exeu_reset = exeu;
   assign  _proc_exeb_set = ((dec&_net_3)&_net_9)|
    ((dec&_net_3)&_net_8)|
    ((dec&_net_3)&_net_7)|
    ((dec&_net_3)&_net_6)|
    ((dec&_net_3)&_net_5)|
    ((dec&_net_3)&_net_4);
   assign  _proc_exeb_reset = ((exeb&_net_190)&_net_196)|
    ((exeb&_net_190)&_net_193)|
    ((exeb&_net_182)&_net_188)|
    ((exeb&_net_182)&_net_185)|
    ((exeb&_net_174)&_net_180)|
    ((exeb&_net_174)&_net_177)|
    ((exeb&_net_166)&_net_172)|
    ((exeb&_net_166)&_net_169)|
    (((exeb&_net_148)&_net_158)&_net_164)|
    (((exeb&_net_148)&_net_158)&_net_161)|
    ((exeb&_net_148)&_net_155)|
    ((exeb&_net_148)&_net_151)|
    (((exeb&_net_130)&_net_140)&_net_143)|
    ((exeb&_net_130)&_net_133);
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
   assign  _proc_exei_2_reset = (exei_2&_net_119)|
    (exei_2&_net_117)|
    (exei_2&_net_115)|
    (exei_2&_net_112)|
    (exei_2&_net_109);
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
   assign  _proc_ift_set = (exej&_net_200)|
    exeu|
    ((exeb&_net_190)&_net_196)|
    ((exeb&_net_190)&_net_193)|
    ((exeb&_net_182)&_net_188)|
    ((exeb&_net_182)&_net_185)|
    ((exeb&_net_174)&_net_180)|
    ((exeb&_net_174)&_net_177)|
    ((exeb&_net_166)&_net_172)|
    ((exeb&_net_166)&_net_169)|
    (((exeb&_net_148)&_net_158)&_net_164)|
    (((exeb&_net_148)&_net_158)&_net_161)|
    ((exeb&_net_148)&_net_155)|
    ((exeb&_net_148)&_net_151)|
    (((exeb&_net_130)&_net_140)&_net_143)|
    ((exeb&_net_130)&_net_133)|
    exes|
    (exei_2&_net_119)|
    (exei_2&_net_117)|
    (exei_2&_net_115)|
    (exei_2&_net_112)|
    (exei_2&_net_109)|
    exei_jalr|
    exei_1|
    exer|
    _net_0;
   assign  _proc_ift_reset = ift;
   assign  _net_0 = (rst_d&(~p_reset));
   assign  _net_1 = ((dec)?((inst[6:2])==5'b11011):1'b0);
   assign  _net_2 = ((dec)?((inst[6:2])==5'b11001):1'b0);
   assign  _net_3 = ((dec)?((inst[6:2])==5'b11000):1'b0);
   assign  _net_4 = (((dec&_net_3))?((inst[14:12])==3'b111):1'b0);
   assign  _net_5 = (((dec&_net_3))?((inst[14:12])==3'b110):1'b0);
   assign  _net_6 = (((dec&_net_3))?((inst[14:12])==3'b101):1'b0);
   assign  _net_7 = (((dec&_net_3))?((inst[14:12])==3'b100):1'b0);
   assign  _net_8 = (((dec&_net_3))?((inst[14:12])==3'b001):1'b0);
   assign  _net_9 = (((dec&_net_3))?((inst[14:12])==3'b000):1'b0);
   assign  _net_10 = ((dec)?((inst[6:2])==5'b01101):1'b0);
   assign  _net_11 = ((dec)?((inst[6:2])==5'b01100):1'b0);
   assign  _net_12 = (((dec&_net_11))?(~(inst[25])):1'b0);
   assign  _net_13 = ((((dec&_net_11)&_net_12))?((inst[14:12])==3'b111):1'b0);
   assign  _net_14 = ((((dec&_net_11)&_net_12))?((inst[14:12])==3'b110):1'b0);
   assign  _net_15 = ((((dec&_net_11)&_net_12))?((inst[14:12])==3'b101):1'b0);
   assign  _net_16 = (((((dec&_net_11)&_net_12)&_net_15))?(inst[30]):1'b0);
   assign  _net_17 = (((((dec&_net_11)&_net_12)&_net_15))?(~(inst[30])):1'b0);
   assign  _net_18 = ((((dec&_net_11)&_net_12))?((inst[14:12])==3'b100):1'b0);
   assign  _net_19 = ((((dec&_net_11)&_net_12))?((inst[14:12])==3'b011):1'b0);
   assign  _net_20 = ((((dec&_net_11)&_net_12))?((inst[14:12])==3'b010):1'b0);
   assign  _net_21 = ((((dec&_net_11)&_net_12))?((inst[14:12])==3'b001):1'b0);
   assign  _net_22 = ((((dec&_net_11)&_net_12))?((inst[14:12])==3'b000):1'b0);
   assign  _net_23 = (((((dec&_net_11)&_net_12)&_net_22))?(inst[30]):1'b0);
   assign  _net_24 = (((((dec&_net_11)&_net_12)&_net_22))?(~(inst[30])):1'b0);
   assign  _net_25 = ((dec)?((inst[6:2])==5'b01000):1'b0);
   assign  _net_26 = (((dec&_net_25))?((inst[14:12])==3'b010):1'b0);
   assign  _net_27 = (((dec&_net_25))?((inst[14:12])==3'b001):1'b0);
   assign  _net_28 = (((dec&_net_25))?((inst[14:12])==3'b000):1'b0);
   assign  _net_29 = ((dec)?((inst[6:2])==5'b00101):1'b0);
   assign  _net_30 = ((dec)?((inst[6:2])==5'b00100):1'b0);
   assign  _net_31 = (((dec&_net_30))?((inst[14:12])==3'b111):1'b0);
   assign  _net_32 = (((dec&_net_30))?((inst[14:12])==3'b110):1'b0);
   assign  _net_33 = (((dec&_net_30))?((inst[14:12])==3'b100):1'b0);
   assign  _net_34 = (((dec&_net_30))?((inst[14:12])==3'b011):1'b0);
   assign  _net_35 = (((dec&_net_30))?((inst[14:12])==3'b010):1'b0);
   assign  _net_36 = (((dec&_net_30))?((inst[14:12])==3'b000):1'b0);
   assign  _net_37 = ((dec)?((inst[6:2])==5'b00000):1'b0);
   assign  _net_38 = (((dec&_net_37))?((inst[14:12])==3'b101):1'b0);
   assign  _net_39 = (((dec&_net_37))?((inst[14:12])==3'b100):1'b0);
   assign  _net_40 = (((dec&_net_37))?((inst[14:12])==3'b010):1'b0);
   assign  _net_41 = (((dec&_net_37))?((inst[14:12])==3'b001):1'b0);
   assign  _net_42 = (((dec&_net_37))?((inst[14:12])==3'b000):1'b0);
   assign  _net_43 = ((exer)?(order==8'b01101100):1'b0);
   assign  _net_44 = (((exer&_net_43))?(gr[rs1]):32'b0);
   assign  _net_45 = (((exer&_net_43))?(_net_44[31]):1'b0);
   assign  _net_46 = ((((exer&_net_43)&_net_45))?(gr[rs1]):32'b0);
   assign  _net_47 = ((((exer&_net_43)&_net_45))?(gr[rs2]):32'b0);
   assign  _net_48 = ((_net_46[30:0])>>_net_47);
   assign  _net_49 = (((exer&_net_43))?(gr[rs1]):32'b0);
   assign  _net_50 = (((exer&_net_43))?(~(_net_49[31])):1'b0);
   assign  _net_51 = ((((exer&_net_43)&_net_50))?(gr[rs1]):32'b0);
   assign  _net_52 = ((((exer&_net_43)&_net_50))?(gr[rs2]):32'b0);
   assign  _net_53 = ((exer)?(order==8'b01101110):1'b0);
   assign  _net_54 = (((exer&_net_53))?(gr[rs1]):32'b0);
   assign  _net_55 = (((exer&_net_53))?(gr[rs2]):32'b0);
   assign  _net_56 = ((exer)?(order==8'b01101011):1'b0);
   assign  _net_57 = (((exer&_net_56))?(gr[rs1]):32'b0);
   assign  _net_58 = (((exer&_net_56))?(gr[rs2]):32'b0);
   assign  _net_59 = (_net_57 < _net_58);
   assign  _net_60 = ((exer)?(order==8'b01101000):1'b0);
   assign  _net_61 = (((exer&_net_60))?(gr[rs1]):32'b0);
   assign  _net_62 = (((exer&_net_60))?(gr[rs2]):32'b0);
   assign  _net_63 = (((exer&_net_60))?((_net_61[31])&(~(_net_62[31]))):1'b0);
   assign  _net_64 = (((exer&_net_60))?(gr[rs1]):32'b0);
   assign  _net_65 = (((exer&_net_60))?(gr[rs2]):32'b0);
   assign  _net_66 = (((exer&_net_60))?((~(_net_64[31]))&(_net_65[31])):1'b0);
   assign  _net_67 = (((exer&_net_60))?(gr[rs1]):32'b0);
   assign  _net_68 = (((exer&_net_60))?(gr[rs2]):32'b0);
   assign  _net_69 = (((exer&_net_60))?((_net_67[31])==(_net_68[31])):1'b0);
   assign  _net_70 = ((((exer&_net_60)&_net_69))?(gr[rs1]):32'b0);
   assign  _net_71 = ((((exer&_net_60)&_net_69))?(gr[rs2]):32'b0);
   assign  _net_72 = (_net_70 < _net_71);
   assign  _net_73 = ((exer)?(order==8'b01100110):1'b0);
   assign  _net_74 = (((exer&_net_73))?(gr[rs1]):32'b0);
   assign  _net_75 = (((exer&_net_73))?(gr[rs2]):32'b0);
   assign  _net_76 = ((exer)?(order==8'b01110010):1'b0);
   assign  _net_77 = (((exer&_net_76))?(gr[rs1]):32'b0);
   assign  _net_78 = (((exer&_net_76))?(gr[rs2]):32'b0);
   assign  _net_79 = ((exer)?(order==8'b01011111):1'b0);
   assign  _net_80 = (((exer&_net_79))?(gr[rs1]):32'b0);
   assign  _net_81 = (((exer&_net_79))?(gr[rs2]):32'b0);
   assign  _net_82 = ((exer)?(order==8'b00001011):1'b0);
   assign  _net_83 = (((exer&_net_82))?(gr[rs1]):32'b0);
   assign  _net_84 = (((exer&_net_82))?(gr[rs2]):32'b0);
   assign  _net_85 = ((exer)?(order==8'b01110000):1'b0);
   assign  _net_86 = (((exer&_net_85))?(gr[rs1]):32'b0);
   assign  _net_87 = (((exer&_net_85))?(gr[rs2]):32'b0);
   assign  _net_88 = ((exer)?(order==8'b00000000):1'b0);
   assign  _net_89 = (((exer&_net_88))?(gr[rs1]):32'b0);
   assign  _net_90 = (((exer&_net_88))?(gr[rs2]):32'b0);
   assign  _net_91 = ((exei_1)?(order==8'b00001100):1'b0);
   assign  _net_92 = (((exei_1&_net_91))?(gr[rs1]):32'b0);
   assign  _net_93 = ((exei_1)?(order==8'b01100000):1'b0);
   assign  _net_94 = (((exei_1&_net_93))?(gr[rs1]):32'b0);
   assign  _net_95 = ((exei_1)?(order==8'b01110011):1'b0);
   assign  _net_96 = (((exei_1&_net_95))?(gr[rs1]):32'b0);
   assign  _net_97 = ((exei_1)?(order==8'b01101010):1'b0);
   assign  _net_98 = (((exei_1&_net_97))?(gr[rs1]):32'b0);
   assign  _net_99 = imm12;
   assign  _net_100 = (_net_98 < ({20'b00000000000000000000,_net_99}));
   assign  _net_101 = ((exei_1)?(order==8'b01101001):1'b0);
   assign  _net_102 = (((exei_1&_net_101))?(gr[rs1]):32'b0);
   assign  _net_103 = (_net_102 < ({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_104 = ((exei_1)?(order==8'b00000001):1'b0);
   assign  _net_105 = (((exei_1&_net_104))?(gr[rs1]):32'b0);
   assign  _net_106 = (_net_105+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_107 = ((exei_jalr)?(gr[rs1]):32'b0);
   assign  _net_108 = (_net_107+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_109 = ((exei_2)?(order==8'b01010111):1'b0);
   assign  _net_110 = (((exei_2&_net_109))?(gr[rs1]):32'b0);
   assign  _net_111 = imm12;
   assign  _net_112 = ((exei_2)?(order==8'b01010101):1'b0);
   assign  _net_113 = (((exei_2&_net_112))?(gr[rs1]):32'b0);
   assign  _net_114 = imm12;
   assign  _net_115 = ((exei_2)?(order==8'b01011010):1'b0);
   assign  _net_116 = (((exei_2&_net_115))?(gr[rs1]):32'b0);
   assign  _net_117 = ((exei_2)?(order==8'b01010110):1'b0);
   assign  _net_118 = (((exei_2&_net_117))?(gr[rs1]):32'b0);
   assign  _net_119 = ((exei_2)?(order==8'b01010100):1'b0);
   assign  _net_120 = (((exei_2&_net_119))?(gr[rs1]):32'b0);
   assign  _net_121 = ((exes)?(order==8'b01110001):1'b0);
   assign  _net_122 = (((exes&_net_121))?(gr[rs1]):32'b0);
   assign  _net_123 = (((exes&_net_121))?(gr[rs2]):32'b0);
   assign  _net_124 = ((exes)?(order==8'b01100101):1'b0);
   assign  _net_125 = (((exes&_net_124))?(gr[rs1]):32'b0);
   assign  _net_126 = (((exes&_net_124))?(gr[rs2]):32'b0);
   assign  _net_127 = ((exes)?(order==8'b01100011):1'b0);
   assign  _net_128 = (((exes&_net_127))?(gr[rs1]):32'b0);
   assign  _net_129 = (((exes&_net_127))?(gr[rs2]):32'b0);
   assign  _net_130 = ((exeb)?(order==8'b00001111):1'b0);
   assign  _net_131 = (((exeb&_net_130))?(gr[rs1]):32'b0);
   assign  _net_132 = (((exeb&_net_130))?(gr[rs2]):32'b0);
   assign  _net_133 = (((exeb&_net_130))?((_net_131[31])&(~(_net_132[31]))):1'b0);
   assign  _net_134 = (((exeb&_net_130))?(gr[rs1]):32'b0);
   assign  _net_135 = (((exeb&_net_130))?(gr[rs2]):32'b0);
   assign  _net_136 = (((exeb&_net_130))?((~(_net_134[31]))&(_net_135[31])):1'b0);
   assign  _net_137 = ({imm12,1'b0});
   assign  _net_138 = (((exeb&_net_130))?(gr[rs1]):32'b0);
   assign  _net_139 = (((exeb&_net_130))?(gr[rs2]):32'b0);
   assign  _net_140 = (((exeb&_net_130))?((_net_138[31])==(_net_139[31])):1'b0);
   assign  _net_141 = ((((exeb&_net_130)&_net_140))?(gr[rs1]):32'b0);
   assign  _net_142 = ((((exeb&_net_130)&_net_140))?(gr[rs2]):32'b0);
   assign  _net_143 = ((((exeb&_net_130)&_net_140))?((_net_141[30:0]) <= (_net_142[30:0])):1'b0);
   assign  _net_144 = ((((exeb&_net_130)&_net_140))?(gr[rs1]):32'b0);
   assign  _net_145 = ((((exeb&_net_130)&_net_140))?(gr[rs2]):32'b0);
   assign  _net_146 = ((((exeb&_net_130)&_net_140))?((_net_144[30:0]) > (_net_145[30:0])):1'b0);
   assign  _net_147 = ({imm12,1'b0});
   assign  _net_148 = ((exeb)?(order==8'b00010001):1'b0);
   assign  _net_149 = (((exeb&_net_148))?(gr[rs1]):32'b0);
   assign  _net_150 = (((exeb&_net_148))?(gr[rs2]):32'b0);
   assign  _net_151 = (((exeb&_net_148))?((_net_149[31])&(~(_net_150[31]))):1'b0);
   assign  _net_152 = ({imm12,1'b0});
   assign  _net_153 = (((exeb&_net_148))?(gr[rs1]):32'b0);
   assign  _net_154 = (((exeb&_net_148))?(gr[rs2]):32'b0);
   assign  _net_155 = (((exeb&_net_148))?((~(_net_153[31]))&(_net_154[31])):1'b0);
   assign  _net_156 = (((exeb&_net_148))?(gr[rs1]):32'b0);
   assign  _net_157 = (((exeb&_net_148))?(gr[rs2]):32'b0);
   assign  _net_158 = (((exeb&_net_148))?((_net_156[31])==(_net_157[31])):1'b0);
   assign  _net_159 = ((((exeb&_net_148)&_net_158))?(gr[rs1]):32'b0);
   assign  _net_160 = ((((exeb&_net_148)&_net_158))?(gr[rs2]):32'b0);
   assign  _net_161 = ((((exeb&_net_148)&_net_158))?((_net_159[30:0]) >= (_net_160[30:0])):1'b0);
   assign  _net_162 = ((((exeb&_net_148)&_net_158))?(gr[rs1]):32'b0);
   assign  _net_163 = ((((exeb&_net_148)&_net_158))?(gr[rs2]):32'b0);
   assign  _net_164 = ((((exeb&_net_148)&_net_158))?((_net_162[30:0]) < (_net_163[30:0])):1'b0);
   assign  _net_165 = ({imm12,1'b0});
   assign  _net_166 = ((exeb)?(order==8'b00010000):1'b0);
   assign  _net_167 = (((exeb&_net_166))?(gr[rs1]):32'b0);
   assign  _net_168 = (((exeb&_net_166))?(gr[rs2]):32'b0);
   assign  _net_169 = (((exeb&_net_166))?(_net_167 <= _net_168):1'b0);
   assign  _net_170 = (((exeb&_net_166))?(gr[rs1]):32'b0);
   assign  _net_171 = (((exeb&_net_166))?(gr[rs2]):32'b0);
   assign  _net_172 = (((exeb&_net_166))?(_net_170 > _net_171):1'b0);
   assign  _net_173 = ({imm12,1'b0});
   assign  _net_174 = ((exeb)?(order==8'b00010010):1'b0);
   assign  _net_175 = (((exeb&_net_174))?(gr[rs1]):32'b0);
   assign  _net_176 = (((exeb&_net_174))?(gr[rs2]):32'b0);
   assign  _net_177 = (((exeb&_net_174))?(_net_175 >= _net_176):1'b0);
   assign  _net_178 = (((exeb&_net_174))?(gr[rs1]):32'b0);
   assign  _net_179 = (((exeb&_net_174))?(gr[rs2]):32'b0);
   assign  _net_180 = (((exeb&_net_174))?(_net_178 < _net_179):1'b0);
   assign  _net_181 = ({imm12,1'b0});
   assign  _net_182 = ((exeb)?(order==8'b00010011):1'b0);
   assign  _net_183 = (((exeb&_net_182))?(gr[rs1]):32'b0);
   assign  _net_184 = (((exeb&_net_182))?(gr[rs2]):32'b0);
   assign  _net_185 = (((exeb&_net_182))?(_net_183==_net_184):1'b0);
   assign  _net_186 = (((exeb&_net_182))?(gr[rs1]):32'b0);
   assign  _net_187 = (((exeb&_net_182))?(gr[rs2]):32'b0);
   assign  _net_188 = (((exeb&_net_182))?(_net_186 != _net_187):1'b0);
   assign  _net_189 = ({imm12,1'b0});
   assign  _net_190 = ((exeb)?(order==8'b00001110):1'b0);
   assign  _net_191 = (((exeb&_net_190))?(gr[rs1]):32'b0);
   assign  _net_192 = (((exeb&_net_190))?(gr[rs2]):32'b0);
   assign  _net_193 = (((exeb&_net_190))?(_net_191 != _net_192):1'b0);
   assign  _net_194 = (((exeb&_net_190))?(gr[rs1]):32'b0);
   assign  _net_195 = (((exeb&_net_190))?(gr[rs2]):32'b0);
   assign  _net_196 = (((exeb&_net_190))?(_net_194==_net_195):1'b0);
   assign  _net_197 = ({imm12,1'b0});
   assign  _net_198 = ((exeu)?(order==8'b01011001):1'b0);
   assign  _net_199 = ((exeu)?(order==8'b00001101):1'b0);
   assign  _net_200 = ((exej)?(order==8'b01010010):1'b0);
   assign  _net_201 = ({imm,1'b0});
   assign  iaddr = ((ift)?pc:32'b0);
   assign  daddr = (((exes&_net_127))?(_net_128+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exes&_net_124))?(_net_125+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exes&_net_121))?(_net_122+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_119))?(_net_120+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_117))?(_net_118+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_115))?(_net_116+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_112))?(_net_113+({20'b00000000000000000000,_net_114})):32'b0)|
    (((exei_2&_net_109))?(_net_110+({20'b00000000000000000000,_net_111})):32'b0);
   assign  wdata = (((exes&_net_127))?({24'b000000000000000000000000,(_net_129[7:0])}):32'b0)|
    (((exes&_net_124))?({16'b0000000000000000,(_net_126[15:0])}):32'b0)|
    (((exes&_net_121))?(_net_123[31:0]):32'b0);
   assign  dmem_read = (exei_2&_net_119)|
    (exei_2&_net_117)|
    (exei_2&_net_115)|
    (exei_2&_net_112)|
    (exei_2&_net_109);
   assign  dmem_write = (exes&_net_127)|
    (exes&_net_124)|
    (exes&_net_121);
always @(posedge m_clock)
  begin
   if ((exej&_net_200) )
     gr[rd] <= (pc+32'b00000000000000000000000000000100);
   if ((exeu&_net_199) )
     gr[rd] <= (pc+({imm,12'b000000000000}));
   if ((exeu&_net_198) )
     gr[rd] <= ({imm,12'b000000000000});
   if ((exei_2&_net_119) )
     gr[rd] <= ({24'b000000000000000000000000,(rdata[7:0])});
   if ((exei_2&_net_117) )
     gr[rd] <= ({16'b0000000000000000,(rdata[15:0])});
   if ((exei_2&_net_115) )
     gr[rd] <= rdata;
   if ((exei_2&_net_112) )
     gr[rd] <= rdata;
   if ((exei_2&_net_109) )
     gr[rd] <= ({16'b0000000000000000,(rdata[15:0])});
   if (exei_jalr )
     gr[rd] <= (pc+32'b00000000000000000000000000000100);
   if ((exei_1&_net_104) )
     gr[rd] <= (_net_106[31:0]);
   if ((exei_1&_net_101) )
     gr[rd] <= ({31'b0000000000000000000000000000000,_net_103});
   if ((exei_1&_net_97) )
     gr[rd] <= ({31'b0000000000000000000000000000000,_net_100});
   if ((exei_1&_net_95) )
     gr[rd] <= (_net_96^({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   if ((exei_1&_net_93) )
     gr[rd] <= (_net_94|({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   if ((exei_1&_net_91) )
     gr[rd] <= (_net_92&({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   if ((exer&_net_88) )
     gr[rd] <= (_net_89+_net_90);
   if ((exer&_net_85) )
     gr[rd] <= (_net_86-_net_87);
   if ((exer&_net_82) )
     gr[rd] <= (_net_83&_net_84);
   if ((exer&_net_79) )
     gr[rd] <= (_net_80|_net_81);
   if ((exer&_net_76) )
     gr[rd] <= (_net_77^_net_78);
   if ((exer&_net_73) )
     gr[rd] <= (_net_74<<_net_75);
   if (((exer&_net_60)&_net_69) )
     gr[rd] <= ({31'b0000000000000000000000000000000,_net_72});
   if (((exer&_net_60)&_net_66) )
     gr[rd] <= 32'b00000000000000000000000000000001;
   if (((exer&_net_60)&_net_63) )
     gr[rd] <= 32'b00000000000000000000000000000000;
   if ((exer&_net_56) )
     gr[rd] <= ({31'b0000000000000000000000000000000,_net_59});
   if ((exer&_net_53) )
     gr[rd] <= (_net_54>>_net_55);
   if (((exer&_net_43)&_net_50) )
     gr[rd] <= (_net_51>>_net_52);
   if (((exer&_net_43)&_net_45) )
     gr[rd] <= ({1'b1,_net_48});
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     pc <= 32'b00000000000000000000000000000000;
else if ((exej&_net_200))
      pc <= (pc+({11'b00000000000,_net_201}));
else if (exeu)
      pc <= pc;
else if (((exeb&_net_190)&_net_196))
      pc <= (pc+({({(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12]),(_net_197[12])}),_net_197}));
else if (((exeb&_net_190)&_net_193))
      pc <= pc;
else if (((exeb&_net_182)&_net_188))
      pc <= (pc+({({(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12]),(_net_189[12])}),_net_189}));
else if (((exeb&_net_182)&_net_185))
      pc <= pc;
else if (((exeb&_net_174)&_net_180))
      pc <= (pc+({({(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12]),(_net_181[12])}),_net_181}));
else if (((exeb&_net_174)&_net_177))
      pc <= pc;
else if (((exeb&_net_166)&_net_172))
      pc <= (pc+({({(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12]),(_net_173[12])}),_net_173}));
else if (((exeb&_net_166)&_net_169))
      pc <= pc;
else if ((((exeb&_net_148)&_net_158)&_net_164))
      pc <= (pc+({({(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12]),(_net_165[12])}),_net_165}));
else if ((((exeb&_net_148)&_net_158)&_net_161))
      pc <= pc;
else if (((exeb&_net_148)&_net_155))
      pc <= pc;
else if (((exeb&_net_148)&_net_151))
      pc <= (pc+({({(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12])}),_net_152}));
else if ((((exeb&_net_130)&_net_140)&_net_146))
      pc <= (pc+({({(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12]),(_net_147[12])}),_net_147}));
else if ((((exeb&_net_130)&_net_140)&_net_143))
      pc <= pc;
else if (((exeb&_net_130)&_net_136))
      pc <= (pc+({({(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12]),(_net_137[12])}),_net_137}));
else if (((exeb&_net_130)&_net_133))
      pc <= pc;
else if (exes)
      pc <= pc;
else if ((exei_2&_net_119))
      pc <= pc;
else if ((exei_2&_net_117))
      pc <= pc;
else if ((exei_2&_net_115))
      pc <= pc;
else if ((exei_2&_net_112))
      pc <= pc;
else if ((exei_2&_net_109))
      pc <= pc;
else if (exei_jalr)
      pc <= ({(_net_108[31:1]),1'b0});
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
      rs1 <= (inst[19:15]);
else if (((dec&_net_37)&_net_41))
      rs1 <= (inst[19:15]);
else if (((dec&_net_37)&_net_40))
      rs1 <= (inst[19:15]);
else if (((dec&_net_37)&_net_39))
      rs1 <= (inst[19:15]);
else if (((dec&_net_37)&_net_38))
      rs1 <= (inst[19:15]);
else if (((dec&_net_30)&_net_36))
      rs1 <= (inst[19:15]);
else if (((dec&_net_30)&_net_35))
      rs1 <= (inst[19:15]);
else if (((dec&_net_30)&_net_34))
      rs1 <= (inst[19:15]);
else if (((dec&_net_30)&_net_33))
      rs1 <= (inst[19:15]);
else if (((dec&_net_30)&_net_32))
      rs1 <= (inst[19:15]);
else if (((dec&_net_30)&_net_31))
      rs1 <= (inst[19:15]);
else if (((dec&_net_25)&_net_28))
      rs1 <= (inst[19:15]);
else if (((dec&_net_25)&_net_27))
      rs1 <= (inst[19:15]);
else if (((dec&_net_25)&_net_26))
      rs1 <= (inst[19:15]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_24))
      rs1 <= (inst[19:15]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_23))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_21))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_20))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_19))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_18))
      rs1 <= (inst[19:15]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_17))
      rs1 <= (inst[19:15]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_16))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_14))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_11)&_net_12)&_net_13))
      rs1 <= (inst[19:15]);
else if (((dec&_net_3)&_net_9))
      rs1 <= (inst[19:15]);
else if (((dec&_net_3)&_net_8))
      rs1 <= (inst[19:15]);
else if (((dec&_net_3)&_net_7))
      rs1 <= (inst[19:15]);
else if (((dec&_net_3)&_net_6))
      rs1 <= (inst[19:15]);
else if (((dec&_net_3)&_net_5))
      rs1 <= (inst[19:15]);
else if (((dec&_net_3)&_net_4))
      rs1 <= (inst[19:15]);
else if ((dec&_net_2))
      rs1 <= (inst[19:15]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_25)&_net_28))
      rs2 <= (inst[24:20]);
else if (((dec&_net_25)&_net_27))
      rs2 <= (inst[24:20]);
else if (((dec&_net_25)&_net_26))
      rs2 <= (inst[24:20]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_24))
      rs2 <= (inst[24:20]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_23))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_21))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_20))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_19))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_18))
      rs2 <= (inst[24:20]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_17))
      rs2 <= (inst[24:20]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_16))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_14))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_11)&_net_12)&_net_13))
      rs2 <= (inst[24:20]);
else if (((dec&_net_3)&_net_9))
      rs2 <= (inst[24:20]);
else if (((dec&_net_3)&_net_8))
      rs2 <= (inst[24:20]);
else if (((dec&_net_3)&_net_7))
      rs2 <= (inst[24:20]);
else if (((dec&_net_3)&_net_6))
      rs2 <= (inst[24:20]);
else if (((dec&_net_3)&_net_5))
      rs2 <= (inst[24:20]);
else if (((dec&_net_3)&_net_4))
      rs2 <= (inst[24:20]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_37)&_net_42))
      rd <= (inst[11:7]);
else if (((dec&_net_37)&_net_41))
      rd <= (inst[11:7]);
else if (((dec&_net_37)&_net_40))
      rd <= (inst[11:7]);
else if (((dec&_net_37)&_net_39))
      rd <= (inst[11:7]);
else if (((dec&_net_37)&_net_38))
      rd <= (inst[11:7]);
else if (((dec&_net_30)&_net_36))
      rd <= (inst[11:7]);
else if (((dec&_net_30)&_net_35))
      rd <= (inst[11:7]);
else if (((dec&_net_30)&_net_34))
      rd <= (inst[11:7]);
else if (((dec&_net_30)&_net_33))
      rd <= (inst[11:7]);
else if (((dec&_net_30)&_net_32))
      rd <= (inst[11:7]);
else if (((dec&_net_30)&_net_31))
      rd <= (inst[11:7]);
else if ((dec&_net_29))
      rd <= (inst[11:7]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_24))
      rd <= (inst[11:7]);
else if (((((dec&_net_11)&_net_12)&_net_22)&_net_23))
      rd <= (inst[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_21))
      rd <= (inst[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_20))
      rd <= (inst[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_19))
      rd <= (inst[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_18))
      rd <= (inst[11:7]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_17))
      rd <= (inst[11:7]);
else if (((((dec&_net_11)&_net_12)&_net_15)&_net_16))
      rd <= (inst[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_14))
      rd <= (inst[11:7]);
else if ((((dec&_net_11)&_net_12)&_net_13))
      rd <= (inst[11:7]);
else if ((dec&_net_10))
      rd <= (inst[11:7]);
else if ((dec&_net_2))
      rd <= (inst[11:7]);
else if ((dec&_net_1))
      rd <= (inst[11:7]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_37)&_net_42))
      imm12 <= (inst[31:20]);
else if (((dec&_net_37)&_net_41))
      imm12 <= (inst[31:20]);
else if (((dec&_net_37)&_net_40))
      imm12 <= (inst[31:20]);
else if (((dec&_net_37)&_net_39))
      imm12 <= (inst[31:20]);
else if (((dec&_net_37)&_net_38))
      imm12 <= (inst[31:20]);
else if (((dec&_net_30)&_net_36))
      imm12 <= (inst[31:20]);
else if (((dec&_net_30)&_net_35))
      imm12 <= (inst[31:20]);
else if (((dec&_net_30)&_net_34))
      imm12 <= (inst[31:20]);
else if (((dec&_net_30)&_net_33))
      imm12 <= (inst[31:20]);
else if (((dec&_net_30)&_net_32))
      imm12 <= (inst[31:20]);
else if (((dec&_net_30)&_net_31))
      imm12 <= (inst[31:20]);
else if (((dec&_net_25)&_net_28))
      imm12 <= ({(inst[31:25]),(inst[11:7])});
else if (((dec&_net_25)&_net_27))
      imm12 <= ({(inst[31:25]),(inst[11:7])});
else if (((dec&_net_25)&_net_26))
      imm12 <= ({(inst[31:25]),(inst[11:7])});
else if (((dec&_net_3)&_net_9))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_3)&_net_8))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_3)&_net_7))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_3)&_net_6))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_3)&_net_5))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_3)&_net_4))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if ((dec&_net_2))
      imm12 <= (inst[31:20]);
end
always @(posedge m_clock)
  begin
if ((dec&_net_29))
      imm <= (inst[31:12]);
else if ((dec&_net_10))
      imm <= (inst[31:12]);
else if ((dec&_net_1))
      imm <= ({(inst[31]),(inst[19:12]),(inst[20]),(inst[30:21])});
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
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Tue Feb 06 13:56:57 2018
 Licensed to :EVALUATION USER
*/
