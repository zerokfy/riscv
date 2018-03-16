
/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Thu Mar 15 23:58:28 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module rv32i_core ( rst_n , m_clock , idata , rdata , iaddr , daddr , wdata , ecall_led , ebreak_led , dmem_w , dmem_r );
  input rst_n, m_clock;
  wire rst_n, m_clock;
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
  output dmem_w;
  wire dmem_w;
  output dmem_r;
  wire dmem_r;
  reg [31:0] pc;
  reg rst_d;
  reg [4:0] rs1;
  reg [4:0] rs2;
  reg [4:0] rd;
  reg [1:0] en;
  reg [11:0] imm12;
  reg [19:0] imm;
  reg [7:0] order;
  reg [7:0] ord;
  reg [4:0] dest;
  reg [31:0] adr;
  reg [31:0] rd_tmp;
  reg [4:0] dst;
  reg [31:0] tmp;
  reg [1:0] ben;
  reg [7:0] odr;
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
  reg meml_1;
  reg meml_2;
  reg meml_last;
  wire [4:0] _gr_rs1_n;
  wire [4:0] _gr_rs2_n;
  wire [4:0] _gr_rd_n;
  wire [31:0] _gr_wd;
  wire [31:0] _gr_s1_rd;
  wire [31:0] _gr_s2_rd;
  wire _gr_rs1;
  wire _gr_rs2;
  wire _gr_rd;
  wire _gr_rst_n;
  wire _gr_m_clock;
  wire _proc_meml_last_set;
  wire _proc_meml_last_reset;
  wire _proc_meml_2_set;
  wire _proc_meml_2_reset;
  wire _proc_meml_1_set;
  wire _proc_meml_1_reset;
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
  wire _net_59;
  wire [63:0] _net_60;
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
  wire _net_78;
  wire [63:0] _net_79;
  wire _net_80;
  wire [31:0] _net_81;
  wire _net_82;
  wire _net_83;
  wire _net_84;
  wire _net_85;
  wire _net_86;
  wire _net_87;
  wire _net_88;
  wire _net_89;
  wire _net_90;
  wire [11:0] _net_91;
  wire _net_92;
  wire _net_93;
  wire [11:0] _net_94;
  wire [31:0] _net_95;
  wire _net_96;
  wire [31:0] _net_97;
  wire [31:0] _net_98;
  wire _net_99;
  wire _net_100;
  wire _net_101;
  wire _net_102;
  wire _net_103;
  wire _net_104;
  wire _net_105;
  wire _net_106;
  wire _net_107;
  wire _net_108;
  wire [11:0] _net_109;
  wire _net_110;
  wire _net_111;
  wire [11:0] _net_112;
  wire _net_113;
  wire _net_114;
  wire _net_115;
  wire _net_116;
  wire _net_117;
  wire _net_118;
  wire _net_119;
  wire _net_120;
  wire _net_121;
  wire _net_122;
  wire _net_123;
  wire _net_124;
  wire _net_125;
  wire _net_126;
  wire _net_127;
  wire _net_128;
  wire _net_129;
  wire _net_130;
  wire _net_131;
  wire _net_132;
  wire _net_133;
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
  wire [12:0] _net_146;
  wire _net_147;
  wire _net_148;
  wire [12:0] _net_149;
  wire _net_150;
  wire _net_151;
  wire [12:0] _net_152;
  wire _net_153;
  wire _net_154;
  wire [12:0] _net_155;
  wire _net_156;
  wire _net_157;
  wire [12:0] _net_158;
  wire _net_159;
  wire _net_160;
  wire _net_161;
  wire [20:0] _net_162;
  wire _net_163;
  wire _net_164;
  wire [15:0] _net_165;
  wire _net_166;
  wire [15:0] _net_167;
  wire _net_168;
  wire [15:0] _net_169;
  wire _net_170;
  wire _net_171;
  wire [7:0] _net_172;
  wire _net_173;
  wire [7:0] _net_174;
  wire _net_175;
  wire [7:0] _net_176;
  wire _net_177;
  wire [7:0] _net_178;
  wire _net_179;
  wire _net_180;
  wire _net_181;
  wire [15:0] _net_182;
  wire _net_183;
  wire [15:0] _net_184;
  wire _net_185;
  wire [15:0] _net_186;
  wire _net_187;
  wire _net_188;
  wire [7:0] _net_189;
  wire _net_190;
  wire [7:0] _net_191;
  wire _net_192;
  wire [7:0] _net_193;
  wire _net_194;
  wire [7:0] _net_195;
  wire _net_196;
  wire _net_197;
  wire _net_198;
  wire _net_199;
  wire _net_200;
  wire _net_201;
  wire _net_202;
  wire [17:0] _net_203;
  wire _net_204;
  wire _net_205;
  wire _net_206;
  wire _net_207;
  wire _net_208;
  wire [17:0] _net_209;
gen_gr gr (.m_clock(m_clock), .rst_n(rst_n), .rd(_gr_rd), .rs2(_gr_rs2), .rs1(_gr_rs1), .s1_rd(_gr_s1_rd), .s2_rd(_gr_s2_rd), .rs1_n(_gr_rs1_n), .rs2_n(_gr_rs2_n), .rd_n(_gr_rd_n), .wd(_gr_wd));

   assign  _gr_rs1_n = (((exeb&_net_156))?rs1:5'b0)|
    (((exeb&_net_153))?rs1:5'b0)|
    (((exeb&_net_150))?rs1:5'b0)|
    (((exeb&_net_147))?rs1:5'b0)|
    ((((exeb&_net_140)&_net_144))?rs1:5'b0)|
    (((exeb&_net_140))?rs1:5'b0)|
    (((exeb&_net_140))?rs1:5'b0)|
    (((exeb&_net_140))?rs1:5'b0)|
    ((((exeb&_net_133)&_net_137))?rs1:5'b0)|
    (((exeb&_net_133))?rs1:5'b0)|
    (((exeb&_net_133))?rs1:5'b0)|
    (((exeb&_net_133))?rs1:5'b0)|
    (((exes&_net_128))?rs1:5'b0)|
    (((exes&_net_123))?rs1:5'b0)|
    (((exes&_net_118))?rs1:5'b0)|
    (((exei_2&_net_117))?rs1:5'b0)|
    (((exei_2&_net_115))?rs1:5'b0)|
    (((exei_2&_net_113))?rs1:5'b0)|
    (((exei_2&_net_111))?rs1:5'b0)|
    (((exei_2&_net_108))?rs1:5'b0)|
    ((exei_jalr)?rs1:5'b0)|
    (((exei_1&_net_96))?rs1:5'b0)|
    (((exei_1&_net_93))?rs1:5'b0)|
    ((((exei_1&_net_85)&_net_90))?rs1:5'b0)|
    (((exei_1&_net_85))?rs1:5'b0)|
    (((exei_1&_net_85))?rs1:5'b0)|
    (((exei_1&_net_85))?rs1:5'b0)|
    ((((exei_1&_net_85)&_net_86))?rs1:5'b0)|
    (((exei_1&_net_85))?rs1:5'b0)|
    (((exei_1&_net_83))?rs1:5'b0)|
    (((exei_1&_net_82))?rs1:5'b0)|
    (((exei_1&_net_80))?rs1:5'b0)|
    (((exei_1&_net_78))?rs1:5'b0)|
    (((exei_1&_net_77))?rs1:5'b0)|
    (((exei_1&_net_76))?rs1:5'b0)|
    (((exer&_net_75))?rs1:5'b0)|
    (((exer&_net_74))?rs1:5'b0)|
    (((exer&_net_73))?rs1:5'b0)|
    (((exer&_net_72))?rs1:5'b0)|
    (((exer&_net_71))?rs1:5'b0)|
    (((exer&_net_70))?rs1:5'b0)|
    ((((exer&_net_65)&_net_68))?rs1:5'b0)|
    (((exer&_net_65))?rs1:5'b0)|
    (((exer&_net_65))?rs1:5'b0)|
    (((exer&_net_65))?rs1:5'b0)|
    (((exer&_net_63))?rs1:5'b0)|
    (((exer&_net_62))?rs1:5'b0)|
    ((((exer&_net_58)&_net_61))?rs1:5'b0)|
    (((exer&_net_58))?rs1:5'b0)|
    ((((exer&_net_58)&_net_59))?rs1:5'b0)|
    (((exer&_net_58))?rs1:5'b0);
   assign  _gr_rs2_n = (((exeb&_net_156))?rs2:5'b0)|
    (((exeb&_net_153))?rs2:5'b0)|
    (((exeb&_net_150))?rs2:5'b0)|
    (((exeb&_net_147))?rs2:5'b0)|
    ((((exeb&_net_140)&_net_144))?rs2:5'b0)|
    (((exeb&_net_140))?rs2:5'b0)|
    (((exeb&_net_140))?rs2:5'b0)|
    (((exeb&_net_140))?rs2:5'b0)|
    ((((exeb&_net_133)&_net_137))?rs2:5'b0)|
    (((exeb&_net_133))?rs2:5'b0)|
    (((exeb&_net_133))?rs2:5'b0)|
    (((exeb&_net_133))?rs2:5'b0)|
    ((((exes&_net_128)&_net_132))?rs2:5'b0)|
    ((((exes&_net_128)&_net_131))?rs2:5'b0)|
    ((((exes&_net_128)&_net_130))?rs2:5'b0)|
    ((((exes&_net_128)&_net_129))?rs2:5'b0)|
    ((((exes&_net_123)&_net_127))?rs2:5'b0)|
    ((((exes&_net_123)&_net_126))?rs2:5'b0)|
    ((((exes&_net_123)&_net_125))?rs2:5'b0)|
    ((((exes&_net_123)&_net_124))?rs2:5'b0)|
    ((((exes&_net_118)&_net_122))?rs2:5'b0)|
    ((((exes&_net_118)&_net_121))?rs2:5'b0)|
    ((((exes&_net_118)&_net_120))?rs2:5'b0)|
    ((((exes&_net_118)&_net_119))?rs2:5'b0)|
    (((exer&_net_75))?rs2:5'b0)|
    (((exer&_net_74))?rs2:5'b0)|
    (((exer&_net_73))?rs2:5'b0)|
    (((exer&_net_72))?rs2:5'b0)|
    (((exer&_net_71))?rs2:5'b0)|
    (((exer&_net_70))?rs2:5'b0)|
    ((((exer&_net_65)&_net_68))?rs2:5'b0)|
    (((exer&_net_65))?rs2:5'b0)|
    (((exer&_net_65))?rs2:5'b0)|
    (((exer&_net_65))?rs2:5'b0)|
    (((exer&_net_63))?rs2:5'b0)|
    (((exer&_net_62))?rs2:5'b0)|
    ((((exer&_net_58)&_net_61))?rs2:5'b0)|
    ((((exer&_net_58)&_net_59))?rs2:5'b0);
   assign  _gr_rd_n = (((meml_last&_net_208))?dst:5'b0)|
    ((((meml_last&_net_204)&_net_207))?dst:5'b0)|
    ((((meml_last&_net_204)&_net_206))?dst:5'b0)|
    ((((meml_last&_net_204)&_net_205))?dst:5'b0)|
    (((meml_last&_net_202))?dst:5'b0)|
    ((((meml_1&_net_187)&_net_194))?dest:5'b0)|
    ((((meml_1&_net_187)&_net_192))?dest:5'b0)|
    ((((meml_1&_net_187)&_net_190))?dest:5'b0)|
    ((((meml_1&_net_187)&_net_188))?dest:5'b0)|
    ((((meml_1&_net_180)&_net_185))?dest:5'b0)|
    ((((meml_1&_net_180)&_net_183))?dest:5'b0)|
    ((((meml_1&_net_180)&_net_181))?dest:5'b0)|
    (((meml_1&_net_179))?dest:5'b0)|
    ((((meml_1&_net_170)&_net_177))?dest:5'b0)|
    ((((meml_1&_net_170)&_net_175))?dest:5'b0)|
    ((((meml_1&_net_170)&_net_173))?dest:5'b0)|
    ((((meml_1&_net_170)&_net_171))?dest:5'b0)|
    ((((meml_1&_net_163)&_net_168))?dest:5'b0)|
    ((((meml_1&_net_163)&_net_166))?dest:5'b0)|
    ((((meml_1&_net_163)&_net_164))?dest:5'b0)|
    (((exej&_net_161))?rd:5'b0)|
    (((exeu&_net_160))?rd:5'b0)|
    (((exeu&_net_159))?rd:5'b0)|
    (((exei_2&_net_107))?rd:5'b0)|
    (((exei_2&_net_106))?rd:5'b0)|
    (((exei_2&_net_105))?rd:5'b0)|
    (((exei_2&_net_104))?rd:5'b0)|
    (((exei_2&_net_103))?rd:5'b0)|
    (((exei_2&_net_102))?rd:5'b0)|
    ((exei_jalr)?rd:5'b0)|
    (((exei_1&_net_96))?rd:5'b0)|
    (((exei_1&_net_93))?rd:5'b0)|
    ((((exei_1&_net_85)&_net_90))?rd:5'b0)|
    ((((exei_1&_net_85)&_net_89))?rd:5'b0)|
    ((((exei_1&_net_85)&_net_88))?rd:5'b0)|
    ((((exei_1&_net_85)&_net_86))?rd:5'b0)|
    (((exei_1&_net_83))?rd:5'b0)|
    (((exei_1&_net_82))?rd:5'b0)|
    (((exei_1&_net_80))?rd:5'b0)|
    (((exei_1&_net_78))?rd:5'b0)|
    (((exei_1&_net_77))?rd:5'b0)|
    (((exei_1&_net_76))?rd:5'b0)|
    (((exer&_net_75))?rd:5'b0)|
    (((exer&_net_74))?rd:5'b0)|
    (((exer&_net_73))?rd:5'b0)|
    (((exer&_net_72))?rd:5'b0)|
    (((exer&_net_71))?rd:5'b0)|
    (((exer&_net_70))?rd:5'b0)|
    ((((exer&_net_65)&_net_68))?rd:5'b0)|
    ((((exer&_net_65)&_net_67))?rd:5'b0)|
    ((((exer&_net_65)&_net_66))?rd:5'b0)|
    (((exer&_net_63))?rd:5'b0)|
    (((exer&_net_62))?rd:5'b0)|
    ((((exer&_net_58)&_net_61))?rd:5'b0)|
    ((((exer&_net_58)&_net_59))?rd:5'b0);
   assign  _gr_wd = (((meml_last&_net_208))?({({(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17]),(_net_209[17])}),_net_209}):32'b0)|
    ((((meml_last&_net_204)&_net_207))?({(rdata[7:0]),(rd_tmp[23:0])}):32'b0)|
    ((((meml_last&_net_204)&_net_206))?({(rdata[15:0]),(rd_tmp[15:0])}):32'b0)|
    ((((meml_last&_net_204)&_net_205))?({(rdata[23:0]),(rd_tmp[7:0])}):32'b0)|
    (((meml_last&_net_202))?({14'b00000000000000,_net_203}):32'b0)|
    ((((meml_1&_net_187)&_net_194))?({({(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7]),(_net_195[7])}),(rdata[7:0])}):32'b0)|
    ((((meml_1&_net_187)&_net_192))?({({(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7]),(_net_193[7])}),(rdata[15:8])}):32'b0)|
    ((((meml_1&_net_187)&_net_190))?({({(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7]),(_net_191[7])}),(rdata[23:16])}):32'b0)|
    ((((meml_1&_net_187)&_net_188))?({({(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7]),(_net_189[7])}),(rdata[31:24])}):32'b0)|
    ((((meml_1&_net_180)&_net_185))?({({(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15]),(_net_186[15])}),(rdata[15:0])}):32'b0)|
    ((((meml_1&_net_180)&_net_183))?({({(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15]),(_net_184[15])}),(rdata[23:8])}):32'b0)|
    ((((meml_1&_net_180)&_net_181))?({({(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15]),(_net_182[15])}),(rdata[31:16])}):32'b0)|
    (((meml_1&_net_179))?rdata:32'b0)|
    ((((meml_1&_net_170)&_net_177))?({24'b000000000000000000000000,_net_178}):32'b0)|
    ((((meml_1&_net_170)&_net_175))?({24'b000000000000000000000000,_net_176}):32'b0)|
    ((((meml_1&_net_170)&_net_173))?({24'b000000000000000000000000,_net_174}):32'b0)|
    ((((meml_1&_net_170)&_net_171))?({24'b000000000000000000000000,_net_172}):32'b0)|
    ((((meml_1&_net_163)&_net_168))?({16'b0000000000000000,_net_169}):32'b0)|
    ((((meml_1&_net_163)&_net_166))?({16'b0000000000000000,_net_167}):32'b0)|
    ((((meml_1&_net_163)&_net_164))?({16'b0000000000000000,_net_165}):32'b0)|
    (((exej&_net_161))?(pc+32'b00000000000000000000000000000100):32'b0)|
    (((exeu&_net_160))?(pc+({imm,12'b000000000000})):32'b0)|
    (((exeu&_net_159))?({imm,12'b000000000000}):32'b0)|
    (((exei_2&_net_107))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_106))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_105))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_104))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_103))?32'b00000000000000000000000000000000:32'b0)|
    (((exei_2&_net_102))?32'b00000000000000000000000000000000:32'b0)|
    ((exei_jalr)?(pc+32'b00000000000000000000000000000100):32'b0)|
    (((exei_1&_net_96))?(_net_97[31:0]):32'b0)|
    (((exei_1&_net_93))?(_net_95[31:0]):32'b0)|
    ((((exei_1&_net_85)&_net_90))?({31'b0000000000000000000000000000000,_net_92}):32'b0)|
    ((((exei_1&_net_85)&_net_89))?32'b00000000000000000000000000000000:32'b0)|
    ((((exei_1&_net_85)&_net_88))?32'b00000000000000000000000000000001:32'b0)|
    ((((exei_1&_net_85)&_net_86))?({31'b0000000000000000000000000000000,_net_87}):32'b0)|
    (((exei_1&_net_83))?({31'b0000000000000000000000000000000,_net_84}):32'b0)|
    (((exei_1&_net_82))?(_gr_s1_rd^({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_1&_net_80))?_net_81:32'b0)|
    (((exei_1&_net_78))?(_net_79[31:0]):32'b0)|
    (((exei_1&_net_77))?(_gr_s1_rd|({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_1&_net_76))?(_gr_s1_rd&({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exer&_net_75))?(_gr_s1_rd+_gr_s2_rd):32'b0)|
    (((exer&_net_74))?(_gr_s1_rd-_gr_s2_rd):32'b0)|
    (((exer&_net_73))?(_gr_s1_rd&_gr_s2_rd):32'b0)|
    (((exer&_net_72))?(_gr_s1_rd|_gr_s2_rd):32'b0)|
    (((exer&_net_71))?(_gr_s1_rd^_gr_s2_rd):32'b0)|
    (((exer&_net_70))?(_gr_s1_rd<<(_gr_s2_rd[4:0])):32'b0)|
    ((((exer&_net_65)&_net_68))?({31'b0000000000000000000000000000000,_net_69}):32'b0)|
    ((((exer&_net_65)&_net_67))?32'b00000000000000000000000000000000:32'b0)|
    ((((exer&_net_65)&_net_66))?32'b00000000000000000000000000000001:32'b0)|
    (((exer&_net_63))?({31'b0000000000000000000000000000000,_net_64}):32'b0)|
    (((exer&_net_62))?(_gr_s1_rd>>(_gr_s2_rd[4:0])):32'b0)|
    ((((exer&_net_58)&_net_61))?(_gr_s1_rd>>(_gr_s2_rd[4:0])):32'b0)|
    ((((exer&_net_58)&_net_59))?(_net_60[31:0]):32'b0);
   assign  _gr_rs1 = (exeb&_net_156)|
    (exeb&_net_153)|
    (exeb&_net_150)|
    (exeb&_net_147)|
    ((exeb&_net_140)&_net_144)|
    (exeb&_net_140)|
    (exeb&_net_140)|
    (exeb&_net_140)|
    ((exeb&_net_133)&_net_137)|
    (exeb&_net_133)|
    (exeb&_net_133)|
    (exeb&_net_133)|
    (exes&_net_128)|
    (exes&_net_123)|
    (exes&_net_118)|
    (exei_2&_net_117)|
    (exei_2&_net_115)|
    (exei_2&_net_113)|
    (exei_2&_net_111)|
    (exei_2&_net_108)|
    exei_jalr|
    (exei_1&_net_96)|
    (exei_1&_net_93)|
    ((exei_1&_net_85)&_net_90)|
    (exei_1&_net_85)|
    (exei_1&_net_85)|
    (exei_1&_net_85)|
    ((exei_1&_net_85)&_net_86)|
    (exei_1&_net_85)|
    (exei_1&_net_83)|
    (exei_1&_net_82)|
    (exei_1&_net_80)|
    (exei_1&_net_78)|
    (exei_1&_net_77)|
    (exei_1&_net_76)|
    (exer&_net_75)|
    (exer&_net_74)|
    (exer&_net_73)|
    (exer&_net_72)|
    (exer&_net_71)|
    (exer&_net_70)|
    ((exer&_net_65)&_net_68)|
    (exer&_net_65)|
    (exer&_net_65)|
    (exer&_net_65)|
    (exer&_net_63)|
    (exer&_net_62)|
    ((exer&_net_58)&_net_61)|
    (exer&_net_58)|
    ((exer&_net_58)&_net_59)|
    (exer&_net_58);
   assign  _gr_rs2 = (exeb&_net_156)|
    (exeb&_net_153)|
    (exeb&_net_150)|
    (exeb&_net_147)|
    ((exeb&_net_140)&_net_144)|
    (exeb&_net_140)|
    (exeb&_net_140)|
    (exeb&_net_140)|
    ((exeb&_net_133)&_net_137)|
    (exeb&_net_133)|
    (exeb&_net_133)|
    (exeb&_net_133)|
    ((exes&_net_128)&_net_132)|
    ((exes&_net_128)&_net_131)|
    ((exes&_net_128)&_net_130)|
    ((exes&_net_128)&_net_129)|
    ((exes&_net_123)&_net_127)|
    ((exes&_net_123)&_net_126)|
    ((exes&_net_123)&_net_125)|
    ((exes&_net_123)&_net_124)|
    ((exes&_net_118)&_net_122)|
    ((exes&_net_118)&_net_121)|
    ((exes&_net_118)&_net_120)|
    ((exes&_net_118)&_net_119)|
    (exer&_net_75)|
    (exer&_net_74)|
    (exer&_net_73)|
    (exer&_net_72)|
    (exer&_net_71)|
    (exer&_net_70)|
    ((exer&_net_65)&_net_68)|
    (exer&_net_65)|
    (exer&_net_65)|
    (exer&_net_65)|
    (exer&_net_63)|
    (exer&_net_62)|
    ((exer&_net_58)&_net_61)|
    ((exer&_net_58)&_net_59);
   assign  _gr_rd = (meml_last&_net_208)|
    ((meml_last&_net_204)&_net_207)|
    ((meml_last&_net_204)&_net_206)|
    ((meml_last&_net_204)&_net_205)|
    (meml_last&_net_202)|
    ((meml_1&_net_187)&_net_194)|
    ((meml_1&_net_187)&_net_192)|
    ((meml_1&_net_187)&_net_190)|
    ((meml_1&_net_187)&_net_188)|
    ((meml_1&_net_180)&_net_185)|
    ((meml_1&_net_180)&_net_183)|
    ((meml_1&_net_180)&_net_181)|
    (meml_1&_net_179)|
    ((meml_1&_net_170)&_net_177)|
    ((meml_1&_net_170)&_net_175)|
    ((meml_1&_net_170)&_net_173)|
    ((meml_1&_net_170)&_net_171)|
    ((meml_1&_net_163)&_net_168)|
    ((meml_1&_net_163)&_net_166)|
    ((meml_1&_net_163)&_net_164)|
    (exej&_net_161)|
    (exeu&_net_160)|
    (exeu&_net_159)|
    (exei_2&_net_107)|
    (exei_2&_net_106)|
    (exei_2&_net_105)|
    (exei_2&_net_104)|
    (exei_2&_net_103)|
    (exei_2&_net_102)|
    exei_jalr|
    (exei_1&_net_96)|
    (exei_1&_net_93)|
    ((exei_1&_net_85)&_net_90)|
    ((exei_1&_net_85)&_net_89)|
    ((exei_1&_net_85)&_net_88)|
    ((exei_1&_net_85)&_net_86)|
    (exei_1&_net_83)|
    (exei_1&_net_82)|
    (exei_1&_net_80)|
    (exei_1&_net_78)|
    (exei_1&_net_77)|
    (exei_1&_net_76)|
    (exer&_net_75)|
    (exer&_net_74)|
    (exer&_net_73)|
    (exer&_net_72)|
    (exer&_net_71)|
    (exer&_net_70)|
    ((exer&_net_65)&_net_68)|
    ((exer&_net_65)&_net_67)|
    ((exer&_net_65)&_net_66)|
    (exer&_net_63)|
    (exer&_net_62)|
    ((exer&_net_58)&_net_61)|
    ((exer&_net_58)&_net_59);
   assign  _gr_rst_n = rst_n;
   assign  _gr_m_clock = m_clock;
   assign  _proc_meml_last_set = meml_2;
   assign  _proc_meml_last_reset = meml_last;
   assign  _proc_meml_2_set = ((exei_2&_net_115)&_net_116)|
    ((exei_2&_net_113)&(~_net_114))|
    ((exei_2&_net_108)&(~_net_110));
   assign  _proc_meml_2_reset = meml_2;
   assign  _proc_meml_1_set = (exei_2&_net_117)|
    ((exei_2&_net_115)&(~_net_116))|
    ((exei_2&_net_113)&_net_114)|
    (exei_2&_net_111)|
    ((exei_2&_net_108)&_net_110);
   assign  _proc_meml_1_reset = meml_1;
   assign  _proc_exej_set = (dec&_net_12);
   assign  _proc_exej_reset = (exej&_net_161);
   assign  _proc_exeu_set = (dec&_net_40)|
    (dec&_net_21);
   assign  _proc_exeu_reset = exeu;
   assign  _proc_exeb_set = ((dec&_net_14)&_net_20)|
    ((dec&_net_14)&_net_19)|
    ((dec&_net_14)&_net_18)|
    ((dec&_net_14)&_net_17)|
    ((dec&_net_14)&_net_16)|
    ((dec&_net_14)&_net_15);
   assign  _proc_exeb_reset = ((exeb&_net_156)&(~_net_157))|
    ((exeb&_net_156)&_net_157)|
    ((exeb&_net_153)&(~_net_154))|
    ((exeb&_net_153)&_net_154)|
    ((exeb&_net_150)&(~_net_151))|
    ((exeb&_net_150)&_net_151)|
    ((exeb&_net_147)&(~_net_148))|
    ((exeb&_net_147)&_net_148)|
    (((exeb&_net_140)&_net_144)&(~_net_145))|
    (((exeb&_net_140)&_net_144)&_net_145)|
    ((exeb&_net_140)&_net_143)|
    ((exeb&_net_140)&_net_141)|
    (((exeb&_net_133)&_net_137)&(~_net_138))|
    (((exeb&_net_133)&_net_137)&_net_138)|
    ((exeb&_net_133)&_net_135)|
    ((exeb&_net_133)&_net_134);
   assign  _proc_exes_set = ((dec&_net_36)&_net_39)|
    ((dec&_net_36)&_net_38)|
    ((dec&_net_36)&_net_37);
   assign  _proc_exes_reset = exes;
   assign  _proc_exei_jalr_set = (dec&_net_13);
   assign  _proc_exei_jalr_reset = exei_jalr;
   assign  _proc_exei_2_set = ((dec&_net_52)&_net_57)|
    ((dec&_net_52)&_net_56)|
    ((dec&_net_52)&_net_55)|
    ((dec&_net_52)&_net_54)|
    ((dec&_net_52)&_net_53)|
    (dec&_net_51)|
    ((((dec&_net_2)&_net_9)&(~_net_10))&(~_net_11))|
    ((((dec&_net_2)&_net_9)&(~_net_10))&_net_11)|
    (((dec&_net_2)&_net_9)&_net_10)|
    ((dec&_net_2)&_net_8)|
    ((dec&_net_2)&_net_7)|
    ((dec&_net_2)&_net_6)|
    ((dec&_net_2)&_net_5)|
    ((dec&_net_2)&_net_4)|
    ((dec&_net_2)&_net_3);
   assign  _proc_exei_2_reset = (exei_2&_net_117)|
    ((exei_2&_net_115)&(~_net_116))|
    ((exei_2&_net_115)&_net_116)|
    ((exei_2&_net_113)&(~_net_114))|
    ((exei_2&_net_113)&_net_114)|
    (exei_2&_net_111)|
    ((exei_2&_net_108)&(~_net_110))|
    ((exei_2&_net_108)&_net_110)|
    (exei_2&_net_107)|
    (exei_2&_net_106)|
    (exei_2&_net_105)|
    (exei_2&_net_104)|
    (exei_2&_net_103)|
    (exei_2&_net_102)|
    (exei_2&_net_101)|
    (exei_2&_net_100)|
    (exei_2&_net_99);
   assign  _proc_exei_1_set = ((dec&_net_41)&_net_50)|
    ((dec&_net_41)&_net_49)|
    ((dec&_net_41)&_net_48)|
    ((dec&_net_41)&_net_47)|
    ((dec&_net_41)&_net_46)|
    (((dec&_net_41)&_net_44)&(~_net_45))|
    (((dec&_net_41)&_net_44)&_net_45)|
    ((dec&_net_41)&_net_43)|
    ((dec&_net_41)&_net_42);
   assign  _proc_exei_1_reset = exei_1;
   assign  _proc_exer_set = ((((dec&_net_22)&_net_23)&_net_33)&_net_35)|
    ((((dec&_net_22)&_net_23)&_net_33)&_net_34)|
    (((dec&_net_22)&_net_23)&_net_32)|
    (((dec&_net_22)&_net_23)&_net_31)|
    (((dec&_net_22)&_net_23)&_net_30)|
    (((dec&_net_22)&_net_23)&_net_29)|
    ((((dec&_net_22)&_net_23)&_net_26)&_net_28)|
    ((((dec&_net_22)&_net_23)&_net_26)&_net_27)|
    (((dec&_net_22)&_net_23)&_net_25)|
    (((dec&_net_22)&_net_23)&_net_24);
   assign  _proc_exer_reset = exer;
   assign  _proc_dec_set = ift;
   assign  _proc_dec_reset = ((dec&_net_52)&_net_57)|
    ((dec&_net_52)&_net_56)|
    ((dec&_net_52)&_net_55)|
    ((dec&_net_52)&_net_54)|
    ((dec&_net_52)&_net_53)|
    (dec&_net_51)|
    ((dec&_net_41)&_net_50)|
    ((dec&_net_41)&_net_49)|
    ((dec&_net_41)&_net_48)|
    ((dec&_net_41)&_net_47)|
    ((dec&_net_41)&_net_46)|
    (((dec&_net_41)&_net_44)&(~_net_45))|
    (((dec&_net_41)&_net_44)&_net_45)|
    ((dec&_net_41)&_net_43)|
    ((dec&_net_41)&_net_42)|
    (dec&_net_40)|
    ((dec&_net_36)&_net_39)|
    ((dec&_net_36)&_net_38)|
    ((dec&_net_36)&_net_37)|
    ((((dec&_net_22)&_net_23)&_net_33)&_net_35)|
    ((((dec&_net_22)&_net_23)&_net_33)&_net_34)|
    (((dec&_net_22)&_net_23)&_net_32)|
    (((dec&_net_22)&_net_23)&_net_31)|
    (((dec&_net_22)&_net_23)&_net_30)|
    (((dec&_net_22)&_net_23)&_net_29)|
    ((((dec&_net_22)&_net_23)&_net_26)&_net_28)|
    ((((dec&_net_22)&_net_23)&_net_26)&_net_27)|
    (((dec&_net_22)&_net_23)&_net_25)|
    (((dec&_net_22)&_net_23)&_net_24)|
    (dec&_net_21)|
    ((dec&_net_14)&_net_20)|
    ((dec&_net_14)&_net_19)|
    ((dec&_net_14)&_net_18)|
    ((dec&_net_14)&_net_17)|
    ((dec&_net_14)&_net_16)|
    ((dec&_net_14)&_net_15)|
    (dec&_net_13)|
    (dec&_net_12)|
    ((((dec&_net_2)&_net_9)&(~_net_10))&(~_net_11))|
    ((((dec&_net_2)&_net_9)&(~_net_10))&_net_11)|
    (((dec&_net_2)&_net_9)&_net_10)|
    ((dec&_net_2)&_net_8)|
    ((dec&_net_2)&_net_7)|
    ((dec&_net_2)&_net_6)|
    ((dec&_net_2)&_net_5)|
    ((dec&_net_2)&_net_4)|
    ((dec&_net_2)&_net_3);
   assign  _proc_ift_set = meml_last|
    meml_1|
    (exej&_net_161)|
    exeu|
    ((exeb&_net_156)&(~_net_157))|
    ((exeb&_net_156)&_net_157)|
    ((exeb&_net_153)&(~_net_154))|
    ((exeb&_net_153)&_net_154)|
    ((exeb&_net_150)&(~_net_151))|
    ((exeb&_net_150)&_net_151)|
    ((exeb&_net_147)&(~_net_148))|
    ((exeb&_net_147)&_net_148)|
    (((exeb&_net_140)&_net_144)&(~_net_145))|
    (((exeb&_net_140)&_net_144)&_net_145)|
    ((exeb&_net_140)&_net_143)|
    ((exeb&_net_140)&_net_141)|
    (((exeb&_net_133)&_net_137)&(~_net_138))|
    (((exeb&_net_133)&_net_137)&_net_138)|
    ((exeb&_net_133)&_net_135)|
    ((exeb&_net_133)&_net_134)|
    exes|
    (exei_2&_net_107)|
    (exei_2&_net_106)|
    (exei_2&_net_105)|
    (exei_2&_net_104)|
    (exei_2&_net_103)|
    (exei_2&_net_102)|
    (exei_2&_net_99)|
    exei_jalr|
    exei_1|
    exer|
    _net_0;
   assign  _proc_ift_reset = ift;
   assign  _net_0 = ((~rst_d)&rst_n);
   assign  _net_1 = (~rst_n);
   assign  _net_2 = ((dec)?((idata[6:2])==5'b11100):1'b0);
   assign  _net_3 = (((dec&_net_2))?((idata[14:12])==3'b111):1'b0);
   assign  _net_4 = (((dec&_net_2))?((idata[14:12])==3'b110):1'b0);
   assign  _net_5 = (((dec&_net_2))?((idata[14:12])==3'b101):1'b0);
   assign  _net_6 = (((dec&_net_2))?((idata[14:12])==3'b011):1'b0);
   assign  _net_7 = (((dec&_net_2))?((idata[14:12])==3'b010):1'b0);
   assign  _net_8 = (((dec&_net_2))?((idata[14:12])==3'b001):1'b0);
   assign  _net_9 = (((dec&_net_2))?((idata[14:12])==3'b000):1'b0);
   assign  _net_10 = ((((dec&_net_2)&_net_9))?((idata[31:20])==12'b001100000010):1'b0);
   assign  _net_11 = (((((dec&_net_2)&_net_9)&(~_net_10)))?(~(idata[20])):1'b0);
   assign  _net_12 = ((dec)?((idata[6:2])==5'b11011):1'b0);
   assign  _net_13 = ((dec)?((idata[6:2])==5'b11001):1'b0);
   assign  _net_14 = ((dec)?((idata[6:2])==5'b11000):1'b0);
   assign  _net_15 = (((dec&_net_14))?((idata[14:12])==3'b111):1'b0);
   assign  _net_16 = (((dec&_net_14))?((idata[14:12])==3'b110):1'b0);
   assign  _net_17 = (((dec&_net_14))?((idata[14:12])==3'b101):1'b0);
   assign  _net_18 = (((dec&_net_14))?((idata[14:12])==3'b100):1'b0);
   assign  _net_19 = (((dec&_net_14))?((idata[14:12])==3'b001):1'b0);
   assign  _net_20 = (((dec&_net_14))?((idata[14:12])==3'b000):1'b0);
   assign  _net_21 = ((dec)?((idata[6:2])==5'b01101):1'b0);
   assign  _net_22 = ((dec)?((idata[6:2])==5'b01100):1'b0);
   assign  _net_23 = (((dec&_net_22))?(~(idata[25])):1'b0);
   assign  _net_24 = ((((dec&_net_22)&_net_23))?((idata[14:12])==3'b111):1'b0);
   assign  _net_25 = ((((dec&_net_22)&_net_23))?((idata[14:12])==3'b110):1'b0);
   assign  _net_26 = ((((dec&_net_22)&_net_23))?((idata[14:12])==3'b101):1'b0);
   assign  _net_27 = (((((dec&_net_22)&_net_23)&_net_26))?(idata[30]):1'b0);
   assign  _net_28 = (((((dec&_net_22)&_net_23)&_net_26))?(~(idata[30])):1'b0);
   assign  _net_29 = ((((dec&_net_22)&_net_23))?((idata[14:12])==3'b100):1'b0);
   assign  _net_30 = ((((dec&_net_22)&_net_23))?((idata[14:12])==3'b011):1'b0);
   assign  _net_31 = ((((dec&_net_22)&_net_23))?((idata[14:12])==3'b010):1'b0);
   assign  _net_32 = ((((dec&_net_22)&_net_23))?((idata[14:12])==3'b001):1'b0);
   assign  _net_33 = ((((dec&_net_22)&_net_23))?((idata[14:12])==3'b000):1'b0);
   assign  _net_34 = (((((dec&_net_22)&_net_23)&_net_33))?(idata[30]):1'b0);
   assign  _net_35 = (((((dec&_net_22)&_net_23)&_net_33))?(~(idata[30])):1'b0);
   assign  _net_36 = ((dec)?((idata[6:2])==5'b01000):1'b0);
   assign  _net_37 = (((dec&_net_36))?((idata[14:12])==3'b010):1'b0);
   assign  _net_38 = (((dec&_net_36))?((idata[14:12])==3'b001):1'b0);
   assign  _net_39 = (((dec&_net_36))?((idata[14:12])==3'b000):1'b0);
   assign  _net_40 = ((dec)?((idata[6:2])==5'b00101):1'b0);
   assign  _net_41 = ((dec)?((idata[6:2])==5'b00100):1'b0);
   assign  _net_42 = (((dec&_net_41))?((idata[14:12])==3'b111):1'b0);
   assign  _net_43 = (((dec&_net_41))?((idata[14:12])==3'b110):1'b0);
   assign  _net_44 = (((dec&_net_41))?((idata[14:12])==3'b101):1'b0);
   assign  _net_45 = ((((dec&_net_41)&_net_44))?((idata[31:25])==7'b0000000):1'b0);
   assign  _net_46 = (((dec&_net_41))?((idata[14:12])==3'b100):1'b0);
   assign  _net_47 = (((dec&_net_41))?((idata[14:12])==3'b011):1'b0);
   assign  _net_48 = (((dec&_net_41))?((idata[14:12])==3'b010):1'b0);
   assign  _net_49 = (((dec&_net_41))?((idata[14:12])==3'b001):1'b0);
   assign  _net_50 = (((dec&_net_41))?((idata[14:12])==3'b000):1'b0);
   assign  _net_51 = ((dec)?((idata[6:2])==5'b00011):1'b0);
   assign  _net_52 = ((dec)?((idata[6:2])==5'b00000):1'b0);
   assign  _net_53 = (((dec&_net_52))?((idata[14:12])==3'b101):1'b0);
   assign  _net_54 = (((dec&_net_52))?((idata[14:12])==3'b100):1'b0);
   assign  _net_55 = (((dec&_net_52))?((idata[14:12])==3'b010):1'b0);
   assign  _net_56 = (((dec&_net_52))?((idata[14:12])==3'b001):1'b0);
   assign  _net_57 = (((dec&_net_52))?((idata[14:12])==3'b000):1'b0);
   assign  _net_58 = ((exer)?(order==8'b01101100):1'b0);
   assign  _net_59 = (((exer&_net_58))?(_gr_s1_rd[31]):1'b0);
   assign  _net_60 = (({({(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31])}),_gr_s1_rd})>>(_gr_s2_rd[4:0]));
   assign  _net_61 = (((exer&_net_58))?(~(_gr_s1_rd[31])):1'b0);
   assign  _net_62 = ((exer)?(order==8'b01101110):1'b0);
   assign  _net_63 = ((exer)?(order==8'b01101011):1'b0);
   assign  _net_64 = (_gr_s1_rd < _gr_s2_rd);
   assign  _net_65 = ((exer)?(order==8'b01101000):1'b0);
   assign  _net_66 = (((exer&_net_65))?((_gr_s1_rd[31])&(~(_gr_s2_rd[31]))):1'b0);
   assign  _net_67 = (((exer&_net_65))?((~(_gr_s1_rd[31]))&(_gr_s2_rd[31])):1'b0);
   assign  _net_68 = (((exer&_net_65))?((_gr_s1_rd[31])==(_gr_s2_rd[31])):1'b0);
   assign  _net_69 = (_gr_s1_rd < _gr_s2_rd);
   assign  _net_70 = ((exer)?(order==8'b01100110):1'b0);
   assign  _net_71 = ((exer)?(order==8'b01110010):1'b0);
   assign  _net_72 = ((exer)?(order==8'b01011111):1'b0);
   assign  _net_73 = ((exer)?(order==8'b00001011):1'b0);
   assign  _net_74 = ((exer)?(order==8'b01110000):1'b0);
   assign  _net_75 = ((exer)?(order==8'b00000000):1'b0);
   assign  _net_76 = ((exei_1)?(order==8'b00001100):1'b0);
   assign  _net_77 = ((exei_1)?(order==8'b01100000):1'b0);
   assign  _net_78 = ((exei_1)?(order==8'b01101101):1'b0);
   assign  _net_79 = (({({(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31]),(_gr_s1_rd[31])}),_gr_s1_rd})>>(imm12[4:0]));
   assign  _net_80 = ((exei_1)?(order==8'b01101111):1'b0);
   assign  _net_81 = (_gr_s1_rd>>imm12);
   assign  _net_82 = ((exei_1)?(order==8'b01110011):1'b0);
   assign  _net_83 = ((exei_1)?(order==8'b01101010):1'b0);
   assign  _net_84 = (_gr_s1_rd < ({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_85 = ((exei_1)?(order==8'b01101001):1'b0);
   assign  _net_86 = (((exei_1&_net_85))?((_gr_s1_rd[31])&(imm12[11])):1'b0);
   assign  _net_87 = ((_gr_s1_rd[30:0]) < ({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_88 = (((exei_1&_net_85))?((_gr_s1_rd[31])&(~(imm12[11]))):1'b0);
   assign  _net_89 = (((exei_1&_net_85))?((~(_gr_s1_rd[31]))&(imm12[11])):1'b0);
   assign  _net_90 = (((exei_1&_net_85))?((~(_gr_s1_rd[31]))&(~(imm12[11]))):1'b0);
   assign  _net_91 = imm12;
   assign  _net_92 = (_gr_s1_rd < ({20'b00000000000000000000,_net_91}));
   assign  _net_93 = ((exei_1)?(order==8'b01100111):1'b0);
   assign  _net_94 = imm12;
   assign  _net_95 = (_gr_s1_rd<<({20'b00000000000000000000,_net_94}));
   assign  _net_96 = ((exei_1)?(order==8'b00000001):1'b0);
   assign  _net_97 = (_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_98 = (_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_99 = ((exei_2)?(order==8'b01110100):1'b0);
   assign  _net_100 = ((exei_2)?(order==8'b00011100):1'b0);
   assign  _net_101 = ((exei_2)?(order==8'b00011101):1'b0);
   assign  _net_102 = ((exei_2)?(order==8'b00010101):1'b0);
   assign  _net_103 = ((exei_2)?(order==8'b00010111):1'b0);
   assign  _net_104 = ((exei_2)?(order==8'b00011001):1'b0);
   assign  _net_105 = ((exei_2)?(order==8'b00010100):1'b0);
   assign  _net_106 = ((exei_2)?(order==8'b00010110):1'b0);
   assign  _net_107 = ((exei_2)?(order==8'b00011000):1'b0);
   assign  _net_108 = ((exei_2)?(order==8'b01010111):1'b0);
   assign  _net_109 = imm12;
   assign  _net_110 = (((exei_2&_net_108))?((daddr[1:0])==2'b00):1'b0);
   assign  _net_111 = ((exei_2)?(order==8'b01010101):1'b0);
   assign  _net_112 = imm12;
   assign  _net_113 = ((exei_2)?(order==8'b01011010):1'b0);
   assign  _net_114 = (((exei_2&_net_113))?((daddr[1:0])==2'b00):1'b0);
   assign  _net_115 = ((exei_2)?(order==8'b01010110):1'b0);
   assign  _net_116 = (((exei_2&_net_115))?((daddr[1:0])==2'b11):1'b0);
   assign  _net_117 = ((exei_2)?(order==8'b01010100):1'b0);
   assign  _net_118 = ((exes)?(order==8'b01110001):1'b0);
   assign  _net_119 = (((exes&_net_118))?((daddr[1:0])==2'b11):1'b0);
   assign  _net_120 = (((exes&_net_118))?((daddr[1:0])==2'b10):1'b0);
   assign  _net_121 = (((exes&_net_118))?((daddr[1:0])==2'b01):1'b0);
   assign  _net_122 = (((exes&_net_118))?((daddr[1:0])==2'b00):1'b0);
   assign  _net_123 = ((exes)?(order==8'b01100101):1'b0);
   assign  _net_124 = (((exes&_net_123))?((daddr[1:0])==2'b11):1'b0);
   assign  _net_125 = (((exes&_net_123))?((daddr[1:0])==2'b10):1'b0);
   assign  _net_126 = (((exes&_net_123))?((daddr[1:0])==2'b01):1'b0);
   assign  _net_127 = (((exes&_net_123))?((daddr[1:0])==2'b00):1'b0);
   assign  _net_128 = ((exes)?(order==8'b01100011):1'b0);
   assign  _net_129 = (((exes&_net_128))?((daddr[1:0])==2'b11):1'b0);
   assign  _net_130 = (((exes&_net_128))?((daddr[1:0])==2'b10):1'b0);
   assign  _net_131 = (((exes&_net_128))?((daddr[1:0])==2'b01):1'b0);
   assign  _net_132 = (((exes&_net_128))?((daddr[1:0])==2'b00):1'b0);
   assign  _net_133 = ((exeb)?(order==8'b00001111):1'b0);
   assign  _net_134 = (((exeb&_net_133))?((_gr_s1_rd[31])&(~(_gr_s2_rd[31]))):1'b0);
   assign  _net_135 = (((exeb&_net_133))?((~(_gr_s1_rd[31]))&(_gr_s2_rd[31])):1'b0);
   assign  _net_136 = ({imm12,1'b0});
   assign  _net_137 = (((exeb&_net_133))?((_gr_s1_rd[31])==(_gr_s2_rd[31])):1'b0);
   assign  _net_138 = ((((exeb&_net_133)&_net_137))?((_gr_s1_rd[30:0]) >= (_gr_s2_rd[30:0])):1'b0);
   assign  _net_139 = ({imm12,1'b0});
   assign  _net_140 = ((exeb)?(order==8'b00010001):1'b0);
   assign  _net_141 = (((exeb&_net_140))?((_gr_s1_rd[31])&(~(_gr_s2_rd[31]))):1'b0);
   assign  _net_142 = ({imm12,1'b0});
   assign  _net_143 = (((exeb&_net_140))?((~(_gr_s1_rd[31]))&(_gr_s2_rd[31])):1'b0);
   assign  _net_144 = (((exeb&_net_140))?((_gr_s1_rd[31])==(_gr_s2_rd[31])):1'b0);
   assign  _net_145 = ((((exeb&_net_140)&_net_144))?((_gr_s1_rd[30:0]) < (_gr_s2_rd[30:0])):1'b0);
   assign  _net_146 = ({imm12,1'b0});
   assign  _net_147 = ((exeb)?(order==8'b00010000):1'b0);
   assign  _net_148 = (((exeb&_net_147))?(_gr_s1_rd >= _gr_s2_rd):1'b0);
   assign  _net_149 = ({imm12,1'b0});
   assign  _net_150 = ((exeb)?(order==8'b00010010):1'b0);
   assign  _net_151 = (((exeb&_net_150))?(_gr_s1_rd < _gr_s2_rd):1'b0);
   assign  _net_152 = ({imm12,1'b0});
   assign  _net_153 = ((exeb)?(order==8'b00010011):1'b0);
   assign  _net_154 = (((exeb&_net_153))?(_gr_s1_rd != _gr_s2_rd):1'b0);
   assign  _net_155 = ({imm12,1'b0});
   assign  _net_156 = ((exeb)?(order==8'b00001110):1'b0);
   assign  _net_157 = (((exeb&_net_156))?(_gr_s1_rd==_gr_s2_rd):1'b0);
   assign  _net_158 = ({imm12,1'b0});
   assign  _net_159 = ((exeu)?(order==8'b01011001):1'b0);
   assign  _net_160 = ((exeu)?(order==8'b00001101):1'b0);
   assign  _net_161 = ((exej)?(order==8'b01010010):1'b0);
   assign  _net_162 = ({imm,1'b0});
   assign  _net_163 = ((meml_1)?(ord==8'b01010111):1'b0);
   assign  _net_164 = (((meml_1&_net_163))?(en==2'b10):1'b0);
   assign  _net_165 = (rdata[31:16]);
   assign  _net_166 = (((meml_1&_net_163))?(en==2'b01):1'b0);
   assign  _net_167 = (rdata[23:8]);
   assign  _net_168 = (((meml_1&_net_163))?(en==2'b00):1'b0);
   assign  _net_169 = (rdata[15:0]);
   assign  _net_170 = ((meml_1)?(ord==8'b01010101):1'b0);
   assign  _net_171 = (((meml_1&_net_170))?(en==2'b11):1'b0);
   assign  _net_172 = (rdata[31:24]);
   assign  _net_173 = (((meml_1&_net_170))?(en==2'b10):1'b0);
   assign  _net_174 = (rdata[23:16]);
   assign  _net_175 = (((meml_1&_net_170))?(en==2'b01):1'b0);
   assign  _net_176 = (rdata[15:8]);
   assign  _net_177 = (((meml_1&_net_170))?(en==2'b00):1'b0);
   assign  _net_178 = (rdata[7:0]);
   assign  _net_179 = ((meml_1)?(ord==8'b01011010):1'b0);
   assign  _net_180 = ((meml_1)?(ord==8'b01010110):1'b0);
   assign  _net_181 = (((meml_1&_net_180))?(en==2'b10):1'b0);
   assign  _net_182 = (rdata[31:16]);
   assign  _net_183 = (((meml_1&_net_180))?(en==2'b01):1'b0);
   assign  _net_184 = (rdata[23:8]);
   assign  _net_185 = (((meml_1&_net_180))?(en==2'b00):1'b0);
   assign  _net_186 = (rdata[15:0]);
   assign  _net_187 = ((meml_1)?(ord==8'b01010100):1'b0);
   assign  _net_188 = (((meml_1&_net_187))?(en==2'b11):1'b0);
   assign  _net_189 = (rdata[31:24]);
   assign  _net_190 = (((meml_1&_net_187))?(en==2'b10):1'b0);
   assign  _net_191 = (rdata[23:16]);
   assign  _net_192 = (((meml_1&_net_187))?(en==2'b01):1'b0);
   assign  _net_193 = (rdata[15:8]);
   assign  _net_194 = (((meml_1&_net_187))?(en==2'b00):1'b0);
   assign  _net_195 = (rdata[7:0]);
   assign  _net_196 = ((meml_2)?(ord==8'b01010111):1'b0);
   assign  _net_197 = ((meml_2)?(ord==8'b01011010):1'b0);
   assign  _net_198 = (((meml_2&_net_197))?((adr[1:0])==2'b11):1'b0);
   assign  _net_199 = (((meml_2&_net_197))?((adr[1:0])==2'b10):1'b0);
   assign  _net_200 = (((meml_2&_net_197))?((adr[1:0])==2'b01):1'b0);
   assign  _net_201 = ((meml_2)?(ord==8'b01010110):1'b0);
   assign  _net_202 = ((meml_last)?(odr==8'b01010111):1'b0);
   assign  _net_203 = ({(rdata[8:0]),(rd_tmp[8:0])});
   assign  _net_204 = ((meml_last)?(odr==8'b01011010):1'b0);
   assign  _net_205 = (((meml_last&_net_204))?((ben[1:0])==2'b11):1'b0);
   assign  _net_206 = (((meml_last&_net_204))?((ben[1:0])==2'b10):1'b0);
   assign  _net_207 = (((meml_last&_net_204))?((ben[1:0])==2'b01):1'b0);
   assign  _net_208 = ((meml_last)?(odr==8'b01010110):1'b0);
   assign  _net_209 = ({(rdata[8:0]),(tmp[8:0])});
   assign  iaddr = ((ift)?pc:32'b0);
   assign  daddr = (((meml_2&_net_201))?(adr+32'b00000000000000000000000000000100):32'b0)|
    (((meml_2&_net_197))?(adr+32'b00000000000000000000000000000100):32'b0)|
    (((meml_2&_net_196))?(adr+32'b00000000000000000000000000000100):32'b0)|
    (((exes&_net_128))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exes&_net_123))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exes&_net_118))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_117))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_115))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_113))?(_gr_s1_rd+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    (((exei_2&_net_111))?(_gr_s1_rd+({20'b00000000000000000000,_net_112})):32'b0)|
    (((exei_2&_net_108))?(_gr_s1_rd+({20'b00000000000000000000,_net_109})):32'b0);
   assign  wdata = ((((exes&_net_128)&_net_132))?({24'b000000000000000000000000,(_gr_s2_rd[7:0])}):32'b0)|
    ((((exes&_net_128)&_net_131))?({16'b0000000000000000,(_gr_s2_rd[7:0]),8'b00000000}):32'b0)|
    ((((exes&_net_128)&_net_130))?({8'b00000000,(_gr_s2_rd[7:0]),16'b0000000000000000}):32'b0)|
    ((((exes&_net_128)&_net_129))?({(_gr_s2_rd[7:0]),24'b000000000000000000000000}):32'b0)|
    ((((exes&_net_123)&_net_127))?({16'b0000000000000000,(_gr_s2_rd[15:0])}):32'b0)|
    ((((exes&_net_123)&_net_126))?({8'b00000000,(_gr_s2_rd[15:0]),8'b00000000}):32'b0)|
    ((((exes&_net_123)&_net_125))?({(_gr_s2_rd[15:0]),16'b0000000000000000}):32'b0)|
    ((((exes&_net_123)&_net_124))?({(_gr_s2_rd[7:0]),24'b000000000000000000000000}):32'b0)|
    ((((exes&_net_118)&_net_122))?_gr_s2_rd:32'b0)|
    ((((exes&_net_118)&_net_121))?({(_gr_s2_rd[23:0]),8'b00000000}):32'b0)|
    ((((exes&_net_118)&_net_120))?({(_gr_s2_rd[15:0]),16'b0000000000000000}):32'b0)|
    ((((exes&_net_118)&_net_119))?({(_gr_s2_rd[7:0]),24'b000000000000000000000000}):32'b0);
   assign  ecall_led = (((~_net_1))?ecall:1'b0);
   assign  ebreak_led = (((~_net_1))?ebreak:1'b0);
   assign  dmem_r = (exei_2&_net_117)|
    (exei_2&_net_115)|
    (exei_2&_net_113)|
    (exei_2&_net_111)|
    (exei_2&_net_108);
   assign  dmem_w = (exes&_net_128)|
    (exes&_net_123)|
    (exes&_net_118);
always @(posedge m_clock)
  begin
if (meml_last)
      pc <= (pc+32'b00000000000000000000000000000100);
else if (meml_1)
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exej&_net_161))
      pc <= (pc+({({(_net_162[20]),(_net_162[20]),(_net_162[20]),(_net_162[20]),(_net_162[20]),(_net_162[20]),(_net_162[20]),(_net_162[20]),(_net_162[20]),(_net_162[20]),(_net_162[20])}),_net_162}));
else if (exeu)
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_156)&(~_net_157)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_156)&_net_157))
      pc <= (pc+({({(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12]),(_net_158[12])}),_net_158}));
else if (((exeb&_net_153)&(~_net_154)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_153)&_net_154))
      pc <= (pc+({({(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12]),(_net_155[12])}),_net_155}));
else if (((exeb&_net_150)&(~_net_151)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_150)&_net_151))
      pc <= (pc+({({(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12]),(_net_152[12])}),_net_152}));
else if (((exeb&_net_147)&(~_net_148)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_147)&_net_148))
      pc <= (pc+({({(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12]),(_net_149[12])}),_net_149}));
else if ((((exeb&_net_140)&_net_144)&(~_net_145)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((((exeb&_net_140)&_net_144)&_net_145))
      pc <= (pc+({({(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12])}),_net_146}));
else if (((exeb&_net_140)&_net_143))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (((exeb&_net_140)&_net_141))
      pc <= (pc+({({(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12]),(_net_142[12])}),_net_142}));
else if ((((exeb&_net_133)&_net_137)&(~_net_138)))
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((((exeb&_net_133)&_net_137)&_net_138))
      pc <= (pc+({({(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12]),(_net_139[12])}),_net_139}));
else if (((exeb&_net_133)&_net_135))
      pc <= (pc+({({(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12]),(_net_136[12])}),_net_136}));
else if (((exeb&_net_133)&_net_134))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (exes)
      pc <= (pc+32'b00000000000000000000000000000100);
else if ((exei_2&_net_107))
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
else if ((exei_2&_net_99))
      pc <= (pc+32'b00000000000000000000000000000100);
else if (exei_jalr)
      pc <= ({(_net_98[31:1]),1'b0});
else if (exei_1)
      pc <= (pc+32'b00000000000000000000000000000100);
else if (exer)
      pc <= (pc+32'b00000000000000000000000000000100);
else if (_net_0)
      pc <= 32'b00000000000000000000000000000000;
end
always @(posedge m_clock)
  begin
  rst_d <= rst_n;
end
always @(posedge m_clock)
  begin
if (((dec&_net_52)&_net_57))
      rs1 <= (idata[19:15]);
else if (((dec&_net_52)&_net_56))
      rs1 <= (idata[19:15]);
else if (((dec&_net_52)&_net_55))
      rs1 <= (idata[19:15]);
else if (((dec&_net_52)&_net_54))
      rs1 <= (idata[19:15]);
else if (((dec&_net_52)&_net_53))
      rs1 <= (idata[19:15]);
else if ((dec&_net_51))
      rs1 <= (idata[19:15]);
else if (((dec&_net_41)&_net_50))
      rs1 <= (idata[19:15]);
else if (((dec&_net_41)&_net_49))
      rs1 <= (idata[19:15]);
else if (((dec&_net_41)&_net_48))
      rs1 <= (idata[19:15]);
else if (((dec&_net_41)&_net_47))
      rs1 <= (idata[19:15]);
else if (((dec&_net_41)&_net_46))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_41)&_net_44)&(~_net_45)))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_41)&_net_44)&_net_45))
      rs1 <= (idata[19:15]);
else if (((dec&_net_41)&_net_43))
      rs1 <= (idata[19:15]);
else if (((dec&_net_41)&_net_42))
      rs1 <= (idata[19:15]);
else if (((dec&_net_36)&_net_39))
      rs1 <= (idata[19:15]);
else if (((dec&_net_36)&_net_38))
      rs1 <= (idata[19:15]);
else if (((dec&_net_36)&_net_37))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_22)&_net_23)&_net_33)&_net_35))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_22)&_net_23)&_net_33)&_net_34))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_22)&_net_23)&_net_32))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_22)&_net_23)&_net_31))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_22)&_net_23)&_net_30))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_22)&_net_23)&_net_29))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_22)&_net_23)&_net_26)&_net_28))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_22)&_net_23)&_net_26)&_net_27))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_22)&_net_23)&_net_25))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_22)&_net_23)&_net_24))
      rs1 <= (idata[19:15]);
else if (((dec&_net_14)&_net_20))
      rs1 <= (idata[19:15]);
else if (((dec&_net_14)&_net_19))
      rs1 <= (idata[19:15]);
else if (((dec&_net_14)&_net_18))
      rs1 <= (idata[19:15]);
else if (((dec&_net_14)&_net_17))
      rs1 <= (idata[19:15]);
else if (((dec&_net_14)&_net_16))
      rs1 <= (idata[19:15]);
else if (((dec&_net_14)&_net_15))
      rs1 <= (idata[19:15]);
else if ((dec&_net_13))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_2)&_net_9)&(~_net_10))&(~_net_11)))
      rs1 <= (idata[19:15]);
else if (((((dec&_net_2)&_net_9)&(~_net_10))&_net_11))
      rs1 <= (idata[19:15]);
else if ((((dec&_net_2)&_net_9)&_net_10))
      rs1 <= (idata[19:15]);
else if (((dec&_net_2)&_net_8))
      rs1 <= (idata[19:15]);
else if (((dec&_net_2)&_net_7))
      rs1 <= (idata[19:15]);
else if (((dec&_net_2)&_net_6))
      rs1 <= (idata[19:15]);
else if (((dec&_net_2)&_net_5))
      rs1 <= (idata[19:15]);
else if (((dec&_net_2)&_net_4))
      rs1 <= (idata[19:15]);
else if (((dec&_net_2)&_net_3))
      rs1 <= (idata[19:15]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_36)&_net_39))
      rs2 <= (idata[24:20]);
else if (((dec&_net_36)&_net_38))
      rs2 <= (idata[24:20]);
else if (((dec&_net_36)&_net_37))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_22)&_net_23)&_net_33)&_net_35))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_22)&_net_23)&_net_33)&_net_34))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_22)&_net_23)&_net_32))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_22)&_net_23)&_net_31))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_22)&_net_23)&_net_30))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_22)&_net_23)&_net_29))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_22)&_net_23)&_net_26)&_net_28))
      rs2 <= (idata[24:20]);
else if (((((dec&_net_22)&_net_23)&_net_26)&_net_27))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_22)&_net_23)&_net_25))
      rs2 <= (idata[24:20]);
else if ((((dec&_net_22)&_net_23)&_net_24))
      rs2 <= (idata[24:20]);
else if (((dec&_net_14)&_net_20))
      rs2 <= (idata[24:20]);
else if (((dec&_net_14)&_net_19))
      rs2 <= (idata[24:20]);
else if (((dec&_net_14)&_net_18))
      rs2 <= (idata[24:20]);
else if (((dec&_net_14)&_net_17))
      rs2 <= (idata[24:20]);
else if (((dec&_net_14)&_net_16))
      rs2 <= (idata[24:20]);
else if (((dec&_net_14)&_net_15))
      rs2 <= (idata[24:20]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_52)&_net_57))
      rd <= (idata[11:7]);
else if (((dec&_net_52)&_net_56))
      rd <= (idata[11:7]);
else if (((dec&_net_52)&_net_55))
      rd <= (idata[11:7]);
else if (((dec&_net_52)&_net_54))
      rd <= (idata[11:7]);
else if (((dec&_net_52)&_net_53))
      rd <= (idata[11:7]);
else if ((dec&_net_51))
      rd <= (idata[11:7]);
else if (((dec&_net_41)&_net_50))
      rd <= (idata[11:7]);
else if (((dec&_net_41)&_net_49))
      rd <= (idata[11:7]);
else if (((dec&_net_41)&_net_48))
      rd <= (idata[11:7]);
else if (((dec&_net_41)&_net_47))
      rd <= (idata[11:7]);
else if (((dec&_net_41)&_net_46))
      rd <= (idata[11:7]);
else if ((((dec&_net_41)&_net_44)&(~_net_45)))
      rd <= (idata[11:7]);
else if ((((dec&_net_41)&_net_44)&_net_45))
      rd <= (idata[11:7]);
else if (((dec&_net_41)&_net_43))
      rd <= (idata[11:7]);
else if (((dec&_net_41)&_net_42))
      rd <= (idata[11:7]);
else if ((dec&_net_40))
      rd <= (idata[11:7]);
else if (((((dec&_net_22)&_net_23)&_net_33)&_net_35))
      rd <= (idata[11:7]);
else if (((((dec&_net_22)&_net_23)&_net_33)&_net_34))
      rd <= (idata[11:7]);
else if ((((dec&_net_22)&_net_23)&_net_32))
      rd <= (idata[11:7]);
else if ((((dec&_net_22)&_net_23)&_net_31))
      rd <= (idata[11:7]);
else if ((((dec&_net_22)&_net_23)&_net_30))
      rd <= (idata[11:7]);
else if ((((dec&_net_22)&_net_23)&_net_29))
      rd <= (idata[11:7]);
else if (((((dec&_net_22)&_net_23)&_net_26)&_net_28))
      rd <= (idata[11:7]);
else if (((((dec&_net_22)&_net_23)&_net_26)&_net_27))
      rd <= (idata[11:7]);
else if ((((dec&_net_22)&_net_23)&_net_25))
      rd <= (idata[11:7]);
else if ((((dec&_net_22)&_net_23)&_net_24))
      rd <= (idata[11:7]);
else if ((dec&_net_21))
      rd <= (idata[11:7]);
else if ((dec&_net_13))
      rd <= (idata[11:7]);
else if ((dec&_net_12))
      rd <= (idata[11:7]);
else if (((((dec&_net_2)&_net_9)&(~_net_10))&(~_net_11)))
      rd <= (idata[11:7]);
else if (((((dec&_net_2)&_net_9)&(~_net_10))&_net_11))
      rd <= (idata[11:7]);
else if ((((dec&_net_2)&_net_9)&_net_10))
      rd <= (idata[11:7]);
else if (((dec&_net_2)&_net_8))
      rd <= (idata[11:7]);
else if (((dec&_net_2)&_net_7))
      rd <= (idata[11:7]);
else if (((dec&_net_2)&_net_6))
      rd <= (idata[11:7]);
else if (((dec&_net_2)&_net_5))
      rd <= (idata[11:7]);
else if (((dec&_net_2)&_net_4))
      rd <= (idata[11:7]);
else if (((dec&_net_2)&_net_3))
      rd <= (idata[11:7]);
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_117))
      en <= (daddr[1:0]);
else if (((exei_2&_net_115)&(~_net_116)))
      en <= (daddr[1:0]);
else if (((exei_2&_net_113)&_net_114))
      en <= (daddr[1:0]);
else if ((exei_2&_net_111))
      en <= (daddr[1:0]);
else if (((exei_2&_net_108)&_net_110))
      en <= (daddr[1:0]);
end
always @(posedge m_clock)
  begin
if (((dec&_net_52)&_net_57))
      imm12 <= (idata[31:20]);
else if (((dec&_net_52)&_net_56))
      imm12 <= (idata[31:20]);
else if (((dec&_net_52)&_net_55))
      imm12 <= (idata[31:20]);
else if (((dec&_net_52)&_net_54))
      imm12 <= (idata[31:20]);
else if (((dec&_net_52)&_net_53))
      imm12 <= (idata[31:20]);
else if ((dec&_net_51))
      imm12 <= (idata[31:20]);
else if (((dec&_net_41)&_net_50))
      imm12 <= (idata[31:20]);
else if (((dec&_net_41)&_net_49))
      imm12 <= ({6'b000000,(idata[25:20])});
else if (((dec&_net_41)&_net_48))
      imm12 <= (idata[31:20]);
else if (((dec&_net_41)&_net_47))
      imm12 <= (idata[31:20]);
else if (((dec&_net_41)&_net_46))
      imm12 <= (idata[31:20]);
else if ((((dec&_net_41)&_net_44)&(~_net_45)))
      imm12 <= (idata[31:20]);
else if ((((dec&_net_41)&_net_44)&_net_45))
      imm12 <= (idata[31:20]);
else if (((dec&_net_41)&_net_43))
      imm12 <= (idata[31:20]);
else if (((dec&_net_41)&_net_42))
      imm12 <= (idata[31:20]);
else if (((dec&_net_36)&_net_39))
      imm12 <= ({(idata[31:25]),(idata[11:7])});
else if (((dec&_net_36)&_net_38))
      imm12 <= ({(idata[31:25]),(idata[11:7])});
else if (((dec&_net_36)&_net_37))
      imm12 <= ({(idata[31:25]),(idata[11:7])});
else if (((dec&_net_14)&_net_20))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_14)&_net_19))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_14)&_net_18))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_14)&_net_17))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_14)&_net_16))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if (((dec&_net_14)&_net_15))
      imm12 <= ({(idata[31]),(idata[7]),(idata[30:25]),(idata[11:8])});
else if ((dec&_net_13))
      imm12 <= (idata[31:20]);
else if (((((dec&_net_2)&_net_9)&(~_net_10))&(~_net_11)))
      imm12 <= (idata[31:20]);
else if (((((dec&_net_2)&_net_9)&(~_net_10))&_net_11))
      imm12 <= (idata[31:20]);
else if ((((dec&_net_2)&_net_9)&_net_10))
      imm12 <= (idata[31:20]);
else if (((dec&_net_2)&_net_8))
      imm12 <= (idata[31:20]);
else if (((dec&_net_2)&_net_7))
      imm12 <= (idata[31:20]);
else if (((dec&_net_2)&_net_6))
      imm12 <= (idata[31:20]);
else if (((dec&_net_2)&_net_5))
      imm12 <= (idata[31:20]);
else if (((dec&_net_2)&_net_4))
      imm12 <= (idata[31:20]);
else if (((dec&_net_2)&_net_3))
      imm12 <= (idata[31:20]);
end
always @(posedge m_clock)
  begin
if ((dec&_net_40))
      imm <= (idata[31:12]);
else if ((dec&_net_21))
      imm <= (idata[31:12]);
else if ((dec&_net_12))
      imm <= ({(idata[31]),(idata[19:12]),(idata[20]),(idata[30:21])});
end
always @(posedge m_clock)
  begin
if (((dec&_net_52)&_net_57))
      order <= 8'b01010100;
else if (((dec&_net_52)&_net_56))
      order <= 8'b01010110;
else if (((dec&_net_52)&_net_55))
      order <= 8'b01011010;
else if (((dec&_net_52)&_net_54))
      order <= 8'b01010101;
else if (((dec&_net_52)&_net_53))
      order <= 8'b01010111;
else if ((dec&_net_51))
      order <= 8'b01110100;
else if (((dec&_net_41)&_net_50))
      order <= 8'b00000001;
else if (((dec&_net_41)&_net_49))
      order <= 8'b01100111;
else if (((dec&_net_41)&_net_48))
      order <= 8'b01101001;
else if (((dec&_net_41)&_net_47))
      order <= 8'b01101010;
else if (((dec&_net_41)&_net_46))
      order <= 8'b01110011;
else if ((((dec&_net_41)&_net_44)&(~_net_45)))
      order <= 8'b01101101;
else if ((((dec&_net_41)&_net_44)&_net_45))
      order <= 8'b01101111;
else if (((dec&_net_41)&_net_43))
      order <= 8'b01100000;
else if (((dec&_net_41)&_net_42))
      order <= 8'b00001100;
else if ((dec&_net_40))
      order <= 8'b00001101;
else if (((dec&_net_36)&_net_39))
      order <= 8'b01100011;
else if (((dec&_net_36)&_net_38))
      order <= 8'b01100101;
else if (((dec&_net_36)&_net_37))
      order <= 8'b01110001;
else if (((((dec&_net_22)&_net_23)&_net_33)&_net_35))
      order <= 8'b00000000;
else if (((((dec&_net_22)&_net_23)&_net_33)&_net_34))
      order <= 8'b01110000;
else if ((((dec&_net_22)&_net_23)&_net_32))
      order <= 8'b01100110;
else if ((((dec&_net_22)&_net_23)&_net_31))
      order <= 8'b01101000;
else if ((((dec&_net_22)&_net_23)&_net_30))
      order <= 8'b01101011;
else if ((((dec&_net_22)&_net_23)&_net_29))
      order <= 8'b01110010;
else if (((((dec&_net_22)&_net_23)&_net_26)&_net_28))
      order <= 8'b01101110;
else if (((((dec&_net_22)&_net_23)&_net_26)&_net_27))
      order <= 8'b01101100;
else if ((((dec&_net_22)&_net_23)&_net_25))
      order <= 8'b01011111;
else if ((((dec&_net_22)&_net_23)&_net_24))
      order <= 8'b00001011;
else if ((dec&_net_21))
      order <= 8'b01011001;
else if (((dec&_net_14)&_net_20))
      order <= 8'b00001110;
else if (((dec&_net_14)&_net_19))
      order <= 8'b00010011;
else if (((dec&_net_14)&_net_18))
      order <= 8'b00010001;
else if (((dec&_net_14)&_net_17))
      order <= 8'b00001111;
else if (((dec&_net_14)&_net_16))
      order <= 8'b00010010;
else if (((dec&_net_14)&_net_15))
      order <= 8'b00010000;
else if ((dec&_net_13))
      order <= 8'b01010011;
else if ((dec&_net_12))
      order <= 8'b01010010;
else if (((((dec&_net_2)&_net_9)&(~_net_10))&(~_net_11)))
      order <= 8'b00011100;
else if (((((dec&_net_2)&_net_9)&(~_net_10))&_net_11))
      order <= 8'b00011101;
else if ((((dec&_net_2)&_net_9)&_net_10))
      order <= 8'b01110100;
else if (((dec&_net_2)&_net_8))
      order <= 8'b00011000;
else if (((dec&_net_2)&_net_7))
      order <= 8'b00010110;
else if (((dec&_net_2)&_net_6))
      order <= 8'b00010100;
else if (((dec&_net_2)&_net_5))
      order <= 8'b00011001;
else if (((dec&_net_2)&_net_4))
      order <= 8'b00010111;
else if (((dec&_net_2)&_net_3))
      order <= 8'b00010101;
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_117))
      ord <= order;
else if (((exei_2&_net_115)&(~_net_116)))
      ord <= order;
else if (((exei_2&_net_115)&_net_116))
      ord <= order;
else if (((exei_2&_net_113)&(~_net_114)))
      ord <= order;
else if (((exei_2&_net_113)&_net_114))
      ord <= order;
else if ((exei_2&_net_111))
      ord <= order;
else if (((exei_2&_net_108)&(~_net_110)))
      ord <= order;
else if (((exei_2&_net_108)&_net_110))
      ord <= order;
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_117))
      dest <= rd;
else if (((exei_2&_net_115)&(~_net_116)))
      dest <= rd;
else if (((exei_2&_net_115)&_net_116))
      dest <= rd;
else if (((exei_2&_net_113)&(~_net_114)))
      dest <= rd;
else if (((exei_2&_net_113)&_net_114))
      dest <= rd;
else if ((exei_2&_net_111))
      dest <= rd;
else if (((exei_2&_net_108)&(~_net_110)))
      dest <= rd;
else if (((exei_2&_net_108)&_net_110))
      dest <= rd;
end
always @(posedge m_clock)
  begin
if (((exei_2&_net_115)&_net_116))
      adr <= daddr;
else if (((exei_2&_net_113)&(~_net_114)))
      adr <= daddr;
else if (((exei_2&_net_108)&(~_net_110)))
      adr <= daddr;
end
always @(posedge m_clock)
  begin
if ((meml_2&_net_201))
      rd_tmp <= ({24'b000000000000000000000000,(rdata[31:24])});
else if (((meml_2&_net_197)&_net_200))
      rd_tmp <= ({8'b00000000,(rdata[31:8])});
else if (((meml_2&_net_197)&_net_199))
      rd_tmp <= ({16'b0000000000000000,(rdata[31:16])});
else if (((meml_2&_net_197)&_net_198))
      rd_tmp <= ({24'b000000000000000000000000,(rdata[31:24])});
else if ((meml_2&_net_196))
      rd_tmp <= ({24'b000000000000000000000000,(rdata[31:24])});
end
always @(posedge m_clock)
  begin
if (meml_2)
      dst <= dest;
end
always @(posedge m_clock)
  begin
if (meml_2)
      tmp <= rd_tmp;
end
always @(posedge m_clock)
  begin
if (meml_2)
      ben <= (adr[1:0]);
end
always @(posedge m_clock)
  begin
if (meml_2)
      odr <= ord;
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_101))
      ecall <= 1'b1;
else if (_net_1)
      ecall <= 1'b0;
end
always @(posedge m_clock)
  begin
if ((exei_2&_net_100))
      ebreak <= 1'b1;
else if (_net_1)
      ebreak <= 1'b0;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     ift <= 1'b0;
else if ((_proc_ift_set|_proc_ift_reset))
      ift <= _proc_ift_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     dec <= 1'b0;
else if ((_proc_dec_set|_proc_dec_reset))
      dec <= _proc_dec_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     exer <= 1'b0;
else if ((_proc_exer_set|_proc_exer_reset))
      exer <= _proc_exer_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     exei_1 <= 1'b0;
else if ((_proc_exei_1_set|_proc_exei_1_reset))
      exei_1 <= _proc_exei_1_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     exei_2 <= 1'b0;
else if ((_proc_exei_2_set|_proc_exei_2_reset))
      exei_2 <= _proc_exei_2_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     exei_jalr <= 1'b0;
else if ((_proc_exei_jalr_set|_proc_exei_jalr_reset))
      exei_jalr <= _proc_exei_jalr_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     exes <= 1'b0;
else if ((_proc_exes_set|_proc_exes_reset))
      exes <= _proc_exes_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     exeb <= 1'b0;
else if ((_proc_exeb_set|_proc_exeb_reset))
      exeb <= _proc_exeb_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     exeu <= 1'b0;
else if ((_proc_exeu_set|_proc_exeu_reset))
      exeu <= _proc_exeu_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     exej <= 1'b0;
else if ((_proc_exej_set|_proc_exej_reset))
      exej <= _proc_exej_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     meml_1 <= 1'b0;
else if ((_proc_meml_1_set|_proc_meml_1_reset))
      meml_1 <= _proc_meml_1_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     meml_2 <= 1'b0;
else if ((_proc_meml_2_set|_proc_meml_2_reset))
      meml_2 <= _proc_meml_2_set;
end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     meml_last <= 1'b0;
else if ((_proc_meml_last_set|_proc_meml_last_reset))
      meml_last <= _proc_meml_last_set;
end
endmodule

/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Thu Mar 15 23:58:28 2018
 Licensed to :EVALUATION USER*/
