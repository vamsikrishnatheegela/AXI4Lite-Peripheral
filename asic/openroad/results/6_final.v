module axi4lite_peripheral (aclk,
    aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_wdata,
    s_axi_wstrb);
 input aclk;
 input aresetn;
 output s_axi_arready;
 input s_axi_arvalid;
 output s_axi_awready;
 input s_axi_awvalid;
 input s_axi_bready;
 output s_axi_bvalid;
 input s_axi_rready;
 output s_axi_rvalid;
 output s_axi_wready;
 input s_axi_wvalid;
 input [31:0] s_axi_araddr;
 input [31:0] s_axi_awaddr;
 output [1:0] s_axi_bresp;
 output [31:0] s_axi_rdata;
 output [1:0] s_axi_rresp;
 input [31:0] s_axi_wdata;
 input [3:0] s_axi_wstrb;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0250_;
 wire _0251_;
 wire _0254_;
 wire _0255_;
 wire _0257_;
 wire _0258_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0337_;
 wire _0339_;
 wire _0340_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0411_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0479_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0613_;
 wire _0616_;
 wire _0617_;
 wire _0619_;
 wire _0621_;
 wire _0622_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0642_;
 wire _0643_;
 wire _0645_;
 wire _0646_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire net1;
 wire aw_pending;
 wire \awaddr_q[0] ;
 wire \awaddr_q[10] ;
 wire \awaddr_q[11] ;
 wire \awaddr_q[12] ;
 wire \awaddr_q[13] ;
 wire \awaddr_q[14] ;
 wire \awaddr_q[15] ;
 wire \awaddr_q[16] ;
 wire \awaddr_q[17] ;
 wire \awaddr_q[18] ;
 wire \awaddr_q[19] ;
 wire \awaddr_q[1] ;
 wire \awaddr_q[20] ;
 wire \awaddr_q[21] ;
 wire \awaddr_q[22] ;
 wire \awaddr_q[23] ;
 wire \awaddr_q[24] ;
 wire \awaddr_q[25] ;
 wire \awaddr_q[26] ;
 wire \awaddr_q[27] ;
 wire \awaddr_q[28] ;
 wire \awaddr_q[29] ;
 wire \awaddr_q[2] ;
 wire \awaddr_q[30] ;
 wire \awaddr_q[31] ;
 wire \awaddr_q[3] ;
 wire \awaddr_q[4] ;
 wire \awaddr_q[5] ;
 wire \awaddr_q[6] ;
 wire \awaddr_q[7] ;
 wire \awaddr_q[8] ;
 wire \awaddr_q[9] ;
 wire \control_reg[0] ;
 wire \control_reg[10] ;
 wire \control_reg[11] ;
 wire \control_reg[12] ;
 wire \control_reg[13] ;
 wire \control_reg[14] ;
 wire \control_reg[15] ;
 wire \control_reg[16] ;
 wire \control_reg[17] ;
 wire \control_reg[18] ;
 wire \control_reg[19] ;
 wire \control_reg[1] ;
 wire \control_reg[20] ;
 wire \control_reg[21] ;
 wire \control_reg[22] ;
 wire \control_reg[23] ;
 wire \control_reg[24] ;
 wire \control_reg[25] ;
 wire \control_reg[26] ;
 wire \control_reg[27] ;
 wire \control_reg[28] ;
 wire \control_reg[29] ;
 wire \control_reg[2] ;
 wire \control_reg[30] ;
 wire \control_reg[31] ;
 wire \control_reg[3] ;
 wire \control_reg[4] ;
 wire \control_reg[5] ;
 wire \control_reg[6] ;
 wire \control_reg[7] ;
 wire \control_reg[8] ;
 wire \control_reg[9] ;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net107;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net108;
 wire net67;
 wire net68;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire net139;
 wire net140;
 wire net141;
 wire net142;
 wire net69;
 wire net143;
 wire net144;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net145;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire \scratch_reg[0] ;
 wire \scratch_reg[10] ;
 wire \scratch_reg[11] ;
 wire \scratch_reg[12] ;
 wire \scratch_reg[13] ;
 wire \scratch_reg[14] ;
 wire \scratch_reg[15] ;
 wire \scratch_reg[16] ;
 wire \scratch_reg[17] ;
 wire \scratch_reg[18] ;
 wire \scratch_reg[19] ;
 wire \scratch_reg[1] ;
 wire \scratch_reg[20] ;
 wire \scratch_reg[21] ;
 wire \scratch_reg[22] ;
 wire \scratch_reg[23] ;
 wire \scratch_reg[24] ;
 wire \scratch_reg[25] ;
 wire \scratch_reg[26] ;
 wire \scratch_reg[27] ;
 wire \scratch_reg[28] ;
 wire \scratch_reg[29] ;
 wire \scratch_reg[2] ;
 wire \scratch_reg[30] ;
 wire \scratch_reg[31] ;
 wire \scratch_reg[3] ;
 wire \scratch_reg[4] ;
 wire \scratch_reg[5] ;
 wire \scratch_reg[6] ;
 wire \scratch_reg[7] ;
 wire \scratch_reg[8] ;
 wire \scratch_reg[9] ;
 wire w_pending;
 wire \wdata_q[0] ;
 wire \wdata_q[10] ;
 wire \wdata_q[11] ;
 wire \wdata_q[12] ;
 wire \wdata_q[13] ;
 wire \wdata_q[14] ;
 wire \wdata_q[15] ;
 wire \wdata_q[16] ;
 wire \wdata_q[17] ;
 wire \wdata_q[18] ;
 wire \wdata_q[19] ;
 wire \wdata_q[1] ;
 wire \wdata_q[20] ;
 wire \wdata_q[21] ;
 wire \wdata_q[22] ;
 wire \wdata_q[23] ;
 wire \wdata_q[24] ;
 wire \wdata_q[25] ;
 wire \wdata_q[26] ;
 wire \wdata_q[27] ;
 wire \wdata_q[28] ;
 wire \wdata_q[29] ;
 wire \wdata_q[2] ;
 wire \wdata_q[30] ;
 wire \wdata_q[31] ;
 wire \wdata_q[3] ;
 wire \wdata_q[4] ;
 wire \wdata_q[5] ;
 wire \wdata_q[6] ;
 wire \wdata_q[7] ;
 wire \wdata_q[8] ;
 wire \wdata_q[9] ;
 wire \wstrb_q[0] ;
 wire \wstrb_q[1] ;
 wire \wstrb_q[2] ;
 wire \wstrb_q[3] ;
 wire net160;
 wire net161;
 wire net167;
 wire clknet_0_aclk;
 wire net157;
 wire net159;
 wire net162;
 wire net158;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire clknet_4_0_0_aclk;
 wire clknet_4_1_0_aclk;
 wire clknet_4_2_0_aclk;
 wire clknet_4_3_0_aclk;
 wire clknet_4_4_0_aclk;
 wire clknet_4_5_0_aclk;
 wire clknet_4_6_0_aclk;
 wire clknet_4_7_0_aclk;
 wire clknet_4_8_0_aclk;
 wire clknet_4_9_0_aclk;
 wire clknet_4_10_0_aclk;
 wire clknet_4_11_0_aclk;
 wire clknet_4_12_0_aclk;
 wire clknet_4_13_0_aclk;
 wire clknet_4_14_0_aclk;
 wire clknet_4_15_0_aclk;

 sky130_fd_sc_hd__nand2b_1 _0661_ (.A_N(net110),
    .B(net1),
    .Y(_0250_));
 sky130_fd_sc_hd__nor2_1 _0662_ (.A(w_pending),
    .B(_0250_),
    .Y(net145));
 sky130_fd_sc_hd__and2_1 _0663_ (.A(net106),
    .B(net145),
    .X(_0251_));
 sky130_fd_sc_hd__nand2_1 _0666_ (.A(net104),
    .B(net160),
    .Y(_0254_));
 sky130_fd_sc_hd__nand2_1 _0667_ (.A(net106),
    .B(net145),
    .Y(_0255_));
 sky130_fd_sc_hd__nand2_1 _0669_ (.A(\wstrb_q[2] ),
    .B(net159),
    .Y(_0257_));
 sky130_fd_sc_hd__clkinv_2 _0670_ (.A(net167),
    .Y(_0258_));
 sky130_fd_sc_hd__a21oi_1 _0673_ (.A1(_0254_),
    .A2(_0257_),
    .B1(net166),
    .Y(_0000_));
 sky130_fd_sc_hd__nand2_1 _0674_ (.A(net103),
    .B(net160),
    .Y(_0261_));
 sky130_fd_sc_hd__nand2_1 _0675_ (.A(\wstrb_q[1] ),
    .B(net159),
    .Y(_0262_));
 sky130_fd_sc_hd__a21oi_1 _0676_ (.A1(_0261_),
    .A2(_0262_),
    .B1(net166),
    .Y(_0001_));
 sky130_fd_sc_hd__nand2_1 _0677_ (.A(net102),
    .B(net160),
    .Y(_0263_));
 sky130_fd_sc_hd__nand2_1 _0678_ (.A(\wstrb_q[0] ),
    .B(net159),
    .Y(_0264_));
 sky130_fd_sc_hd__a21oi_1 _0679_ (.A1(_0263_),
    .A2(_0264_),
    .B1(net166),
    .Y(_0002_));
 sky130_fd_sc_hd__nand2_1 _0680_ (.A(net93),
    .B(net160),
    .Y(_0265_));
 sky130_fd_sc_hd__nand2_1 _0681_ (.A(\wdata_q[30] ),
    .B(net159),
    .Y(_0266_));
 sky130_fd_sc_hd__a21oi_1 _0682_ (.A1(_0265_),
    .A2(_0266_),
    .B1(net166),
    .Y(_0003_));
 sky130_fd_sc_hd__nand2_1 _0683_ (.A(net91),
    .B(net160),
    .Y(_0267_));
 sky130_fd_sc_hd__nand2_1 _0684_ (.A(\wdata_q[29] ),
    .B(net159),
    .Y(_0268_));
 sky130_fd_sc_hd__a21oi_1 _0685_ (.A1(_0267_),
    .A2(_0268_),
    .B1(net166),
    .Y(_0004_));
 sky130_fd_sc_hd__nand2_1 _0686_ (.A(net90),
    .B(net160),
    .Y(_0269_));
 sky130_fd_sc_hd__nand2_1 _0687_ (.A(\wdata_q[28] ),
    .B(net159),
    .Y(_0270_));
 sky130_fd_sc_hd__a21oi_1 _0688_ (.A1(_0269_),
    .A2(_0270_),
    .B1(net166),
    .Y(_0005_));
 sky130_fd_sc_hd__nand2_1 _0689_ (.A(net89),
    .B(net160),
    .Y(_0271_));
 sky130_fd_sc_hd__nand2_1 _0690_ (.A(\wdata_q[27] ),
    .B(net159),
    .Y(_0272_));
 sky130_fd_sc_hd__a21oi_1 _0691_ (.A1(_0271_),
    .A2(_0272_),
    .B1(net166),
    .Y(_0006_));
 sky130_fd_sc_hd__nand2_1 _0692_ (.A(net88),
    .B(net160),
    .Y(_0273_));
 sky130_fd_sc_hd__nand2_1 _0693_ (.A(\wdata_q[26] ),
    .B(net159),
    .Y(_0274_));
 sky130_fd_sc_hd__a21oi_1 _0694_ (.A1(_0273_),
    .A2(_0274_),
    .B1(net166),
    .Y(_0007_));
 sky130_fd_sc_hd__nand2_1 _0695_ (.A(net87),
    .B(net160),
    .Y(_0275_));
 sky130_fd_sc_hd__nand2_1 _0696_ (.A(\wdata_q[25] ),
    .B(net159),
    .Y(_0276_));
 sky130_fd_sc_hd__a21oi_1 _0698_ (.A1(_0275_),
    .A2(_0276_),
    .B1(net166),
    .Y(_0008_));
 sky130_fd_sc_hd__nand2_1 _0700_ (.A(net86),
    .B(net160),
    .Y(_0279_));
 sky130_fd_sc_hd__nand2_1 _0701_ (.A(\wdata_q[24] ),
    .B(net159),
    .Y(_0280_));
 sky130_fd_sc_hd__a21oi_1 _0702_ (.A1(_0279_),
    .A2(_0280_),
    .B1(net166),
    .Y(_0009_));
 sky130_fd_sc_hd__nand2_1 _0703_ (.A(net85),
    .B(net160),
    .Y(_0281_));
 sky130_fd_sc_hd__nand2_1 _0705_ (.A(\wdata_q[23] ),
    .B(net159),
    .Y(_0283_));
 sky130_fd_sc_hd__a21oi_1 _0706_ (.A1(_0281_),
    .A2(_0283_),
    .B1(net166),
    .Y(_0010_));
 sky130_fd_sc_hd__nand2_1 _0707_ (.A(net84),
    .B(net160),
    .Y(_0284_));
 sky130_fd_sc_hd__nand2_1 _0708_ (.A(\wdata_q[22] ),
    .B(net159),
    .Y(_0285_));
 sky130_fd_sc_hd__a21oi_1 _0709_ (.A1(_0284_),
    .A2(_0285_),
    .B1(net166),
    .Y(_0011_));
 sky130_fd_sc_hd__nand2_1 _0710_ (.A(net83),
    .B(net160),
    .Y(_0286_));
 sky130_fd_sc_hd__nand2_1 _0711_ (.A(\wdata_q[21] ),
    .B(net159),
    .Y(_0287_));
 sky130_fd_sc_hd__a21oi_1 _0712_ (.A1(_0286_),
    .A2(_0287_),
    .B1(net166),
    .Y(_0012_));
 sky130_fd_sc_hd__nand2_1 _0713_ (.A(net82),
    .B(net160),
    .Y(_0288_));
 sky130_fd_sc_hd__nand2_1 _0714_ (.A(\wdata_q[20] ),
    .B(net159),
    .Y(_0289_));
 sky130_fd_sc_hd__a21oi_1 _0715_ (.A1(_0288_),
    .A2(_0289_),
    .B1(net166),
    .Y(_0013_));
 sky130_fd_sc_hd__nand2_1 _0716_ (.A(net80),
    .B(net160),
    .Y(_0290_));
 sky130_fd_sc_hd__nand2_1 _0717_ (.A(\wdata_q[19] ),
    .B(net159),
    .Y(_0291_));
 sky130_fd_sc_hd__a21oi_1 _0718_ (.A1(_0290_),
    .A2(_0291_),
    .B1(net166),
    .Y(_0014_));
 sky130_fd_sc_hd__nand2_1 _0719_ (.A(net79),
    .B(net160),
    .Y(_0292_));
 sky130_fd_sc_hd__nand2_1 _0720_ (.A(\wdata_q[18] ),
    .B(net159),
    .Y(_0293_));
 sky130_fd_sc_hd__a21oi_1 _0721_ (.A1(_0292_),
    .A2(_0293_),
    .B1(net166),
    .Y(_0015_));
 sky130_fd_sc_hd__nand2_1 _0722_ (.A(net78),
    .B(net160),
    .Y(_0294_));
 sky130_fd_sc_hd__nand2_1 _0723_ (.A(\wdata_q[17] ),
    .B(net159),
    .Y(_0295_));
 sky130_fd_sc_hd__a21oi_1 _0724_ (.A1(_0294_),
    .A2(_0295_),
    .B1(net166),
    .Y(_0016_));
 sky130_fd_sc_hd__nand2_1 _0725_ (.A(net77),
    .B(net160),
    .Y(_0296_));
 sky130_fd_sc_hd__nand2_1 _0726_ (.A(\wdata_q[16] ),
    .B(net159),
    .Y(_0297_));
 sky130_fd_sc_hd__a21oi_1 _0727_ (.A1(_0296_),
    .A2(_0297_),
    .B1(net166),
    .Y(_0017_));
 sky130_fd_sc_hd__nand2_1 _0728_ (.A(net76),
    .B(net160),
    .Y(_0298_));
 sky130_fd_sc_hd__nand2_1 _0729_ (.A(\wdata_q[15] ),
    .B(net159),
    .Y(_0299_));
 sky130_fd_sc_hd__a21oi_1 _0731_ (.A1(_0298_),
    .A2(_0299_),
    .B1(net166),
    .Y(_0018_));
 sky130_fd_sc_hd__nand2_1 _0733_ (.A(net75),
    .B(net160),
    .Y(_0302_));
 sky130_fd_sc_hd__nand2_1 _0734_ (.A(\wdata_q[14] ),
    .B(net159),
    .Y(_0303_));
 sky130_fd_sc_hd__a21oi_1 _0735_ (.A1(_0302_),
    .A2(_0303_),
    .B1(net166),
    .Y(_0019_));
 sky130_fd_sc_hd__nand2_1 _0736_ (.A(net74),
    .B(net160),
    .Y(_0304_));
 sky130_fd_sc_hd__nand2_1 _0738_ (.A(\wdata_q[13] ),
    .B(net159),
    .Y(_0306_));
 sky130_fd_sc_hd__a21oi_1 _0739_ (.A1(_0304_),
    .A2(_0306_),
    .B1(net166),
    .Y(_0020_));
 sky130_fd_sc_hd__nand2_1 _0740_ (.A(net73),
    .B(net160),
    .Y(_0307_));
 sky130_fd_sc_hd__nand2_1 _0741_ (.A(\wdata_q[12] ),
    .B(net159),
    .Y(_0308_));
 sky130_fd_sc_hd__a21oi_1 _0742_ (.A1(_0307_),
    .A2(_0308_),
    .B1(_0258_),
    .Y(_0021_));
 sky130_fd_sc_hd__nand2_1 _0743_ (.A(net72),
    .B(net160),
    .Y(_0309_));
 sky130_fd_sc_hd__nand2_1 _0744_ (.A(\wdata_q[11] ),
    .B(net159),
    .Y(_0310_));
 sky130_fd_sc_hd__a21oi_1 _0745_ (.A1(_0309_),
    .A2(_0310_),
    .B1(_0258_),
    .Y(_0022_));
 sky130_fd_sc_hd__nand2_1 _0746_ (.A(net71),
    .B(net160),
    .Y(_0311_));
 sky130_fd_sc_hd__nand2_1 _0747_ (.A(\wdata_q[10] ),
    .B(net159),
    .Y(_0312_));
 sky130_fd_sc_hd__a21oi_1 _0748_ (.A1(_0311_),
    .A2(_0312_),
    .B1(_0258_),
    .Y(_0023_));
 sky130_fd_sc_hd__nand2_1 _0749_ (.A(net101),
    .B(net160),
    .Y(_0313_));
 sky130_fd_sc_hd__nand2_1 _0750_ (.A(\wdata_q[9] ),
    .B(net159),
    .Y(_0314_));
 sky130_fd_sc_hd__a21oi_1 _0751_ (.A1(_0313_),
    .A2(_0314_),
    .B1(_0258_),
    .Y(_0024_));
 sky130_fd_sc_hd__nand2_1 _0752_ (.A(net100),
    .B(net160),
    .Y(_0315_));
 sky130_fd_sc_hd__nand2_1 _0753_ (.A(\wdata_q[8] ),
    .B(net159),
    .Y(_0316_));
 sky130_fd_sc_hd__a21oi_1 _0754_ (.A1(_0315_),
    .A2(_0316_),
    .B1(_0258_),
    .Y(_0025_));
 sky130_fd_sc_hd__nand2_1 _0755_ (.A(net99),
    .B(net160),
    .Y(_0317_));
 sky130_fd_sc_hd__nand2_1 _0756_ (.A(\wdata_q[7] ),
    .B(net159),
    .Y(_0318_));
 sky130_fd_sc_hd__a21oi_1 _0757_ (.A1(_0317_),
    .A2(_0318_),
    .B1(_0258_),
    .Y(_0026_));
 sky130_fd_sc_hd__nand2_1 _0758_ (.A(net98),
    .B(net160),
    .Y(_0319_));
 sky130_fd_sc_hd__nand2_1 _0759_ (.A(\wdata_q[6] ),
    .B(net159),
    .Y(_0320_));
 sky130_fd_sc_hd__a21oi_1 _0760_ (.A1(_0319_),
    .A2(_0320_),
    .B1(_0258_),
    .Y(_0027_));
 sky130_fd_sc_hd__nand2_1 _0761_ (.A(net97),
    .B(net160),
    .Y(_0321_));
 sky130_fd_sc_hd__nand2_1 _0762_ (.A(\wdata_q[5] ),
    .B(net159),
    .Y(_0322_));
 sky130_fd_sc_hd__a21oi_1 _0764_ (.A1(_0321_),
    .A2(_0322_),
    .B1(_0258_),
    .Y(_0028_));
 sky130_fd_sc_hd__nand2_1 _0765_ (.A(net96),
    .B(net160),
    .Y(_0324_));
 sky130_fd_sc_hd__nand2_1 _0766_ (.A(\wdata_q[4] ),
    .B(net159),
    .Y(_0325_));
 sky130_fd_sc_hd__a21oi_1 _0767_ (.A1(_0324_),
    .A2(_0325_),
    .B1(_0258_),
    .Y(_0029_));
 sky130_fd_sc_hd__nand2_1 _0768_ (.A(net95),
    .B(net160),
    .Y(_0326_));
 sky130_fd_sc_hd__nand2_1 _0769_ (.A(\wdata_q[3] ),
    .B(net159),
    .Y(_0327_));
 sky130_fd_sc_hd__a21oi_1 _0770_ (.A1(_0326_),
    .A2(_0327_),
    .B1(_0258_),
    .Y(_0030_));
 sky130_fd_sc_hd__nand2_1 _0771_ (.A(net92),
    .B(net160),
    .Y(_0328_));
 sky130_fd_sc_hd__nand2_1 _0772_ (.A(\wdata_q[2] ),
    .B(net159),
    .Y(_0329_));
 sky130_fd_sc_hd__a21oi_1 _0773_ (.A1(_0328_),
    .A2(_0329_),
    .B1(_0258_),
    .Y(_0031_));
 sky130_fd_sc_hd__nand2_1 _0774_ (.A(net81),
    .B(net160),
    .Y(_0330_));
 sky130_fd_sc_hd__nand2_1 _0775_ (.A(\wdata_q[1] ),
    .B(net159),
    .Y(_0331_));
 sky130_fd_sc_hd__a21oi_1 _0776_ (.A1(_0330_),
    .A2(_0331_),
    .B1(_0258_),
    .Y(_0032_));
 sky130_fd_sc_hd__nand2_1 _0777_ (.A(net70),
    .B(net160),
    .Y(_0332_));
 sky130_fd_sc_hd__nand2_1 _0778_ (.A(\wdata_q[0] ),
    .B(net159),
    .Y(_0333_));
 sky130_fd_sc_hd__a21oi_1 _0779_ (.A1(_0332_),
    .A2(_0333_),
    .B1(net166),
    .Y(_0033_));
 sky130_fd_sc_hd__and4bb_1 _0780_ (.A_N(net110),
    .B_N(aw_pending),
    .C(net1),
    .D(net67),
    .X(_0334_));
 sky130_fd_sc_hd__nand2_1 _0783_ (.A(net58),
    .B(net164),
    .Y(_0337_));
 sky130_fd_sc_hd__nor2_1 _0785_ (.A(net110),
    .B(aw_pending),
    .Y(_0339_));
 sky130_fd_sc_hd__nand3_1 _0786_ (.A(net167),
    .B(net67),
    .C(_0339_),
    .Y(_0340_));
 sky130_fd_sc_hd__nand2_1 _0788_ (.A(\awaddr_q[30] ),
    .B(net163),
    .Y(_0342_));
 sky130_fd_sc_hd__a21oi_1 _0789_ (.A1(_0337_),
    .A2(_0342_),
    .B1(_0258_),
    .Y(_0034_));
 sky130_fd_sc_hd__nand2_1 _0790_ (.A(net56),
    .B(net164),
    .Y(_0343_));
 sky130_fd_sc_hd__nand2_1 _0791_ (.A(\awaddr_q[29] ),
    .B(net163),
    .Y(_0344_));
 sky130_fd_sc_hd__a21oi_1 _0792_ (.A1(_0343_),
    .A2(_0344_),
    .B1(_0258_),
    .Y(_0035_));
 sky130_fd_sc_hd__nand2_1 _0793_ (.A(net55),
    .B(net164),
    .Y(_0345_));
 sky130_fd_sc_hd__nand2_1 _0794_ (.A(\awaddr_q[28] ),
    .B(net163),
    .Y(_0346_));
 sky130_fd_sc_hd__a21oi_1 _0795_ (.A1(_0345_),
    .A2(_0346_),
    .B1(_0258_),
    .Y(_0036_));
 sky130_fd_sc_hd__nand2_1 _0796_ (.A(net54),
    .B(net164),
    .Y(_0347_));
 sky130_fd_sc_hd__nand2_1 _0797_ (.A(\awaddr_q[27] ),
    .B(net163),
    .Y(_0348_));
 sky130_fd_sc_hd__a21oi_1 _0798_ (.A1(_0347_),
    .A2(_0348_),
    .B1(_0258_),
    .Y(_0037_));
 sky130_fd_sc_hd__nand2_1 _0799_ (.A(net53),
    .B(net164),
    .Y(_0349_));
 sky130_fd_sc_hd__nand2_1 _0800_ (.A(\awaddr_q[26] ),
    .B(net163),
    .Y(_0350_));
 sky130_fd_sc_hd__a21oi_1 _0802_ (.A1(_0349_),
    .A2(_0350_),
    .B1(_0258_),
    .Y(_0038_));
 sky130_fd_sc_hd__nand2_1 _0803_ (.A(net52),
    .B(net164),
    .Y(_0352_));
 sky130_fd_sc_hd__nand2_1 _0804_ (.A(\awaddr_q[25] ),
    .B(net163),
    .Y(_0353_));
 sky130_fd_sc_hd__a21oi_1 _0805_ (.A1(_0352_),
    .A2(_0353_),
    .B1(_0258_),
    .Y(_0039_));
 sky130_fd_sc_hd__nand2_1 _0806_ (.A(net51),
    .B(net164),
    .Y(_0354_));
 sky130_fd_sc_hd__nand2_1 _0807_ (.A(\awaddr_q[24] ),
    .B(net163),
    .Y(_0355_));
 sky130_fd_sc_hd__a21oi_1 _0808_ (.A1(_0354_),
    .A2(_0355_),
    .B1(_0258_),
    .Y(_0040_));
 sky130_fd_sc_hd__nand2_1 _0809_ (.A(net50),
    .B(net164),
    .Y(_0356_));
 sky130_fd_sc_hd__nand2_1 _0810_ (.A(\awaddr_q[23] ),
    .B(net163),
    .Y(_0357_));
 sky130_fd_sc_hd__a21oi_1 _0811_ (.A1(_0356_),
    .A2(_0357_),
    .B1(_0258_),
    .Y(_0041_));
 sky130_fd_sc_hd__nand2_1 _0812_ (.A(net49),
    .B(net164),
    .Y(_0358_));
 sky130_fd_sc_hd__nand2_1 _0813_ (.A(\awaddr_q[22] ),
    .B(net163),
    .Y(_0359_));
 sky130_fd_sc_hd__a21oi_1 _0814_ (.A1(_0358_),
    .A2(_0359_),
    .B1(_0258_),
    .Y(_0042_));
 sky130_fd_sc_hd__nand2_1 _0816_ (.A(net48),
    .B(net164),
    .Y(_0361_));
 sky130_fd_sc_hd__nand2_1 _0817_ (.A(\awaddr_q[21] ),
    .B(net163),
    .Y(_0362_));
 sky130_fd_sc_hd__a21oi_1 _0818_ (.A1(_0361_),
    .A2(_0362_),
    .B1(_0258_),
    .Y(_0043_));
 sky130_fd_sc_hd__nand2_1 _0819_ (.A(net47),
    .B(net164),
    .Y(_0363_));
 sky130_fd_sc_hd__nand2_1 _0821_ (.A(\awaddr_q[20] ),
    .B(net163),
    .Y(_0365_));
 sky130_fd_sc_hd__a21oi_1 _0822_ (.A1(_0363_),
    .A2(_0365_),
    .B1(_0258_),
    .Y(_0044_));
 sky130_fd_sc_hd__nand2_1 _0823_ (.A(net45),
    .B(net164),
    .Y(_0366_));
 sky130_fd_sc_hd__nand2_1 _0824_ (.A(\awaddr_q[19] ),
    .B(net163),
    .Y(_0367_));
 sky130_fd_sc_hd__a21oi_1 _0825_ (.A1(_0366_),
    .A2(_0367_),
    .B1(_0258_),
    .Y(_0045_));
 sky130_fd_sc_hd__nand2_1 _0826_ (.A(net44),
    .B(net164),
    .Y(_0368_));
 sky130_fd_sc_hd__nand2_1 _0827_ (.A(\awaddr_q[18] ),
    .B(net163),
    .Y(_0369_));
 sky130_fd_sc_hd__a21oi_1 _0828_ (.A1(_0368_),
    .A2(_0369_),
    .B1(_0258_),
    .Y(_0046_));
 sky130_fd_sc_hd__nand2_1 _0829_ (.A(net43),
    .B(net164),
    .Y(_0370_));
 sky130_fd_sc_hd__nand2_1 _0830_ (.A(\awaddr_q[17] ),
    .B(net163),
    .Y(_0371_));
 sky130_fd_sc_hd__a21oi_1 _0831_ (.A1(_0370_),
    .A2(_0371_),
    .B1(_0258_),
    .Y(_0047_));
 sky130_fd_sc_hd__nand2_1 _0832_ (.A(net42),
    .B(net164),
    .Y(_0372_));
 sky130_fd_sc_hd__nand2_1 _0833_ (.A(\awaddr_q[16] ),
    .B(net163),
    .Y(_0373_));
 sky130_fd_sc_hd__a21oi_1 _0835_ (.A1(_0372_),
    .A2(_0373_),
    .B1(_0258_),
    .Y(_0048_));
 sky130_fd_sc_hd__nand2_1 _0836_ (.A(net41),
    .B(net164),
    .Y(_0375_));
 sky130_fd_sc_hd__nand2_1 _0837_ (.A(\awaddr_q[15] ),
    .B(net163),
    .Y(_0376_));
 sky130_fd_sc_hd__a21oi_1 _0838_ (.A1(_0375_),
    .A2(_0376_),
    .B1(net166),
    .Y(_0049_));
 sky130_fd_sc_hd__nand2_1 _0839_ (.A(net40),
    .B(net164),
    .Y(_0377_));
 sky130_fd_sc_hd__nand2_1 _0840_ (.A(\awaddr_q[14] ),
    .B(net163),
    .Y(_0378_));
 sky130_fd_sc_hd__a21oi_1 _0841_ (.A1(_0377_),
    .A2(_0378_),
    .B1(net166),
    .Y(_0050_));
 sky130_fd_sc_hd__nand2_1 _0842_ (.A(net39),
    .B(net164),
    .Y(_0379_));
 sky130_fd_sc_hd__nand2_1 _0843_ (.A(\awaddr_q[13] ),
    .B(net163),
    .Y(_0380_));
 sky130_fd_sc_hd__a21oi_1 _0844_ (.A1(_0379_),
    .A2(_0380_),
    .B1(net166),
    .Y(_0051_));
 sky130_fd_sc_hd__nand2_1 _0845_ (.A(net38),
    .B(net164),
    .Y(_0381_));
 sky130_fd_sc_hd__nand2_1 _0846_ (.A(\awaddr_q[12] ),
    .B(net163),
    .Y(_0382_));
 sky130_fd_sc_hd__a21oi_1 _0847_ (.A1(_0381_),
    .A2(_0382_),
    .B1(net166),
    .Y(_0052_));
 sky130_fd_sc_hd__nand2_1 _0849_ (.A(net37),
    .B(net164),
    .Y(_0384_));
 sky130_fd_sc_hd__nand2_1 _0850_ (.A(\awaddr_q[11] ),
    .B(net163),
    .Y(_0385_));
 sky130_fd_sc_hd__a21oi_1 _0851_ (.A1(_0384_),
    .A2(_0385_),
    .B1(net166),
    .Y(_0053_));
 sky130_fd_sc_hd__nand2_1 _0852_ (.A(net36),
    .B(net164),
    .Y(_0386_));
 sky130_fd_sc_hd__nand2_1 _0854_ (.A(\awaddr_q[10] ),
    .B(net163),
    .Y(_0388_));
 sky130_fd_sc_hd__a21oi_1 _0855_ (.A1(_0386_),
    .A2(_0388_),
    .B1(net166),
    .Y(_0054_));
 sky130_fd_sc_hd__nand2_1 _0856_ (.A(net66),
    .B(net164),
    .Y(_0389_));
 sky130_fd_sc_hd__nand2_1 _0857_ (.A(\awaddr_q[9] ),
    .B(net163),
    .Y(_0390_));
 sky130_fd_sc_hd__a21oi_1 _0858_ (.A1(_0389_),
    .A2(_0390_),
    .B1(net166),
    .Y(_0055_));
 sky130_fd_sc_hd__nand2_1 _0859_ (.A(net65),
    .B(net164),
    .Y(_0391_));
 sky130_fd_sc_hd__nand2_1 _0860_ (.A(\awaddr_q[8] ),
    .B(net163),
    .Y(_0392_));
 sky130_fd_sc_hd__a21oi_1 _0861_ (.A1(_0391_),
    .A2(_0392_),
    .B1(net166),
    .Y(_0056_));
 sky130_fd_sc_hd__nand2_1 _0862_ (.A(net64),
    .B(net164),
    .Y(_0393_));
 sky130_fd_sc_hd__nand2_1 _0863_ (.A(\awaddr_q[7] ),
    .B(net163),
    .Y(_0394_));
 sky130_fd_sc_hd__a21oi_1 _0864_ (.A1(_0393_),
    .A2(_0394_),
    .B1(net166),
    .Y(_0057_));
 sky130_fd_sc_hd__nand2_1 _0865_ (.A(net63),
    .B(net164),
    .Y(_0395_));
 sky130_fd_sc_hd__nand2_1 _0866_ (.A(\awaddr_q[6] ),
    .B(net163),
    .Y(_0396_));
 sky130_fd_sc_hd__a21oi_1 _0868_ (.A1(_0395_),
    .A2(_0396_),
    .B1(net166),
    .Y(_0058_));
 sky130_fd_sc_hd__nand2_1 _0869_ (.A(net62),
    .B(net164),
    .Y(_0398_));
 sky130_fd_sc_hd__nand2_1 _0870_ (.A(\awaddr_q[5] ),
    .B(net163),
    .Y(_0399_));
 sky130_fd_sc_hd__a21oi_1 _0871_ (.A1(_0398_),
    .A2(_0399_),
    .B1(net166),
    .Y(_0059_));
 sky130_fd_sc_hd__nand2_1 _0872_ (.A(net61),
    .B(net164),
    .Y(_0400_));
 sky130_fd_sc_hd__nand2_1 _0873_ (.A(\awaddr_q[4] ),
    .B(net163),
    .Y(_0401_));
 sky130_fd_sc_hd__a21oi_1 _0874_ (.A1(_0400_),
    .A2(_0401_),
    .B1(net166),
    .Y(_0060_));
 sky130_fd_sc_hd__nand2_1 _0875_ (.A(net60),
    .B(net164),
    .Y(_0402_));
 sky130_fd_sc_hd__nand2_1 _0876_ (.A(\awaddr_q[3] ),
    .B(net163),
    .Y(_0403_));
 sky130_fd_sc_hd__a21oi_1 _0877_ (.A1(_0402_),
    .A2(_0403_),
    .B1(net166),
    .Y(_0061_));
 sky130_fd_sc_hd__nand2_1 _0878_ (.A(net57),
    .B(net164),
    .Y(_0404_));
 sky130_fd_sc_hd__nand2_1 _0879_ (.A(\awaddr_q[2] ),
    .B(net163),
    .Y(_0405_));
 sky130_fd_sc_hd__a21oi_1 _0880_ (.A1(_0404_),
    .A2(_0405_),
    .B1(net166),
    .Y(_0062_));
 sky130_fd_sc_hd__nand2_1 _0881_ (.A(net46),
    .B(net164),
    .Y(_0406_));
 sky130_fd_sc_hd__nand2_1 _0882_ (.A(\awaddr_q[1] ),
    .B(net163),
    .Y(_0407_));
 sky130_fd_sc_hd__a21oi_1 _0883_ (.A1(_0406_),
    .A2(_0407_),
    .B1(net166),
    .Y(_0063_));
 sky130_fd_sc_hd__nand2_1 _0884_ (.A(net35),
    .B(net164),
    .Y(_0408_));
 sky130_fd_sc_hd__nand2_1 _0885_ (.A(\awaddr_q[0] ),
    .B(net163),
    .Y(_0409_));
 sky130_fd_sc_hd__a21oi_1 _0886_ (.A1(_0408_),
    .A2(_0409_),
    .B1(net166),
    .Y(_0064_));
 sky130_fd_sc_hd__mux2i_1 _0888_ (.A0(net102),
    .A1(\wstrb_q[0] ),
    .S(net165),
    .Y(_0411_));
 sky130_fd_sc_hd__nor2b_1 _0890_ (.A(net165),
    .B_N(net98),
    .Y(_0413_));
 sky130_fd_sc_hd__a211oi_1 _0891_ (.A1(net165),
    .A2(\wdata_q[6] ),
    .B1(_0411_),
    .C1(_0413_),
    .Y(_0414_));
 sky130_fd_sc_hd__or3_1 _0892_ (.A(net54),
    .B(net55),
    .C(net56),
    .X(_0415_));
 sky130_fd_sc_hd__nor2_1 _0893_ (.A(net59),
    .B(aw_pending),
    .Y(_0416_));
 sky130_fd_sc_hd__nor4_1 _0894_ (.A(net42),
    .B(net43),
    .C(net44),
    .D(net48),
    .Y(_0417_));
 sky130_fd_sc_hd__nand2_1 _0895_ (.A(_0416_),
    .B(_0417_),
    .Y(_0418_));
 sky130_fd_sc_hd__nor4_1 _0896_ (.A(net45),
    .B(net47),
    .C(net49),
    .D(net58),
    .Y(_0419_));
 sky130_fd_sc_hd__nor4_1 _0897_ (.A(net50),
    .B(net51),
    .C(net52),
    .D(net53),
    .Y(_0420_));
 sky130_fd_sc_hd__nand2_1 _0898_ (.A(_0419_),
    .B(_0420_),
    .Y(_0421_));
 sky130_fd_sc_hd__or3_1 _0899_ (.A(_0415_),
    .B(_0418_),
    .C(_0421_),
    .X(_0422_));
 sky130_fd_sc_hd__or3_1 _0901_ (.A(\awaddr_q[27] ),
    .B(\awaddr_q[28] ),
    .C(\awaddr_q[29] ),
    .X(_0424_));
 sky130_fd_sc_hd__nor4_1 _0902_ (.A(\awaddr_q[16] ),
    .B(\awaddr_q[17] ),
    .C(\awaddr_q[18] ),
    .D(\awaddr_q[21] ),
    .Y(_0425_));
 sky130_fd_sc_hd__nand3b_1 _0903_ (.A_N(\awaddr_q[31] ),
    .B(aw_pending),
    .C(_0425_),
    .Y(_0426_));
 sky130_fd_sc_hd__nor4_1 _0904_ (.A(\awaddr_q[19] ),
    .B(\awaddr_q[20] ),
    .C(\awaddr_q[22] ),
    .D(\awaddr_q[30] ),
    .Y(_0427_));
 sky130_fd_sc_hd__nor4_1 _0905_ (.A(\awaddr_q[23] ),
    .B(\awaddr_q[24] ),
    .C(\awaddr_q[25] ),
    .D(\awaddr_q[26] ),
    .Y(_0428_));
 sky130_fd_sc_hd__nand2_1 _0906_ (.A(_0427_),
    .B(_0428_),
    .Y(_0429_));
 sky130_fd_sc_hd__or3_1 _0907_ (.A(_0424_),
    .B(_0426_),
    .C(_0429_),
    .X(_0430_));
 sky130_fd_sc_hd__a21oi_1 _0909_ (.A1(net167),
    .A2(net106),
    .B1(net165),
    .Y(_0432_));
 sky130_fd_sc_hd__nor2b_1 _0910_ (.A(net110),
    .B_N(aw_pending),
    .Y(_0433_));
 sky130_fd_sc_hd__nor4_1 _0911_ (.A(\awaddr_q[12] ),
    .B(\awaddr_q[13] ),
    .C(\awaddr_q[14] ),
    .D(\awaddr_q[15] ),
    .Y(_0434_));
 sky130_fd_sc_hd__nor4_1 _0912_ (.A(\awaddr_q[8] ),
    .B(\awaddr_q[9] ),
    .C(\awaddr_q[10] ),
    .D(\awaddr_q[11] ),
    .Y(_0435_));
 sky130_fd_sc_hd__nand4b_1 _0913_ (.A_N(_0432_),
    .B(_0433_),
    .C(_0434_),
    .D(_0435_),
    .Y(_0436_));
 sky130_fd_sc_hd__nor4_1 _0914_ (.A(net38),
    .B(net39),
    .C(net40),
    .D(net41),
    .Y(_0437_));
 sky130_fd_sc_hd__nor4_1 _0915_ (.A(net65),
    .B(net66),
    .C(net36),
    .D(net37),
    .Y(_0438_));
 sky130_fd_sc_hd__o2111ai_1 _0916_ (.A1(net165),
    .A2(net106),
    .B1(net164),
    .C1(_0437_),
    .D1(_0438_),
    .Y(_0439_));
 sky130_fd_sc_hd__and2_1 _0917_ (.A(_0436_),
    .B(_0439_),
    .X(_0440_));
 sky130_fd_sc_hd__nor4_1 _0919_ (.A(net35),
    .B(net46),
    .C(net61),
    .D(net62),
    .Y(_0442_));
 sky130_fd_sc_hd__nor3_1 _0920_ (.A(aw_pending),
    .B(net63),
    .C(net64),
    .Y(_0443_));
 sky130_fd_sc_hd__nor4_1 _0921_ (.A(\awaddr_q[0] ),
    .B(\awaddr_q[1] ),
    .C(\awaddr_q[4] ),
    .D(\awaddr_q[5] ),
    .Y(_0444_));
 sky130_fd_sc_hd__nor3b_2 _0922_ (.A(\awaddr_q[6] ),
    .B(\awaddr_q[7] ),
    .C_N(aw_pending),
    .Y(_0445_));
 sky130_fd_sc_hd__a22oi_1 _0923_ (.A1(_0442_),
    .A2(_0443_),
    .B1(_0444_),
    .B2(_0445_),
    .Y(_0446_));
 sky130_fd_sc_hd__inv_1 _0925_ (.A(\awaddr_q[2] ),
    .Y(_0448_));
 sky130_fd_sc_hd__nor2_1 _0926_ (.A(aw_pending),
    .B(net57),
    .Y(_0449_));
 sky130_fd_sc_hd__a32oi_2 _0927_ (.A1(aw_pending),
    .A2(_0448_),
    .A3(\awaddr_q[3] ),
    .B1(net60),
    .B2(_0449_),
    .Y(_0450_));
 sky130_fd_sc_hd__a2111oi_4 _0928_ (.A1(_0422_),
    .A2(_0430_),
    .B1(_0440_),
    .C1(net162),
    .D1(_0450_),
    .Y(_0451_));
 sky130_fd_sc_hd__nor3_1 _0929_ (.A(_0415_),
    .B(_0418_),
    .C(_0421_),
    .Y(_0452_));
 sky130_fd_sc_hd__nor3_1 _0930_ (.A(_0424_),
    .B(_0426_),
    .C(_0429_),
    .Y(_0453_));
 sky130_fd_sc_hd__nand2_1 _0931_ (.A(_0436_),
    .B(_0439_),
    .Y(_0454_));
 sky130_fd_sc_hd__nor3_1 _0932_ (.A(net162),
    .B(_0411_),
    .C(_0450_),
    .Y(_0455_));
 sky130_fd_sc_hd__o211ai_2 _0933_ (.A1(_0452_),
    .A2(_0453_),
    .B1(_0454_),
    .C1(_0455_),
    .Y(_0456_));
 sky130_fd_sc_hd__inv_1 _0934_ (.A(\scratch_reg[6] ),
    .Y(_0457_));
 sky130_fd_sc_hd__a221oi_1 _0936_ (.A1(_0414_),
    .A2(_0451_),
    .B1(_0456_),
    .B2(_0457_),
    .C1(_0258_),
    .Y(_0065_));
 sky130_fd_sc_hd__inv_1 _0937_ (.A(\scratch_reg[5] ),
    .Y(_0459_));
 sky130_fd_sc_hd__nor2b_1 _0938_ (.A(net165),
    .B_N(net97),
    .Y(_0460_));
 sky130_fd_sc_hd__a211oi_1 _0939_ (.A1(net165),
    .A2(\wdata_q[5] ),
    .B1(_0411_),
    .C1(_0460_),
    .Y(_0461_));
 sky130_fd_sc_hd__a221oi_1 _0940_ (.A1(_0459_),
    .A2(_0456_),
    .B1(_0461_),
    .B2(_0451_),
    .C1(_0258_),
    .Y(_0066_));
 sky130_fd_sc_hd__inv_1 _0941_ (.A(\scratch_reg[4] ),
    .Y(_0462_));
 sky130_fd_sc_hd__nor2b_1 _0942_ (.A(net165),
    .B_N(net96),
    .Y(_0463_));
 sky130_fd_sc_hd__a211oi_1 _0943_ (.A1(net165),
    .A2(\wdata_q[4] ),
    .B1(_0411_),
    .C1(_0463_),
    .Y(_0464_));
 sky130_fd_sc_hd__a221oi_1 _0944_ (.A1(_0462_),
    .A2(_0456_),
    .B1(_0464_),
    .B2(_0451_),
    .C1(_0258_),
    .Y(_0067_));
 sky130_fd_sc_hd__inv_1 _0945_ (.A(\scratch_reg[3] ),
    .Y(_0465_));
 sky130_fd_sc_hd__nor2b_1 _0946_ (.A(net165),
    .B_N(net95),
    .Y(_0466_));
 sky130_fd_sc_hd__a211oi_1 _0947_ (.A1(net165),
    .A2(\wdata_q[3] ),
    .B1(_0411_),
    .C1(_0466_),
    .Y(_0467_));
 sky130_fd_sc_hd__a221oi_1 _0948_ (.A1(_0465_),
    .A2(_0456_),
    .B1(_0467_),
    .B2(_0451_),
    .C1(_0258_),
    .Y(_0068_));
 sky130_fd_sc_hd__inv_1 _0949_ (.A(\scratch_reg[2] ),
    .Y(_0468_));
 sky130_fd_sc_hd__nor2b_1 _0950_ (.A(net165),
    .B_N(net92),
    .Y(_0469_));
 sky130_fd_sc_hd__a211oi_1 _0951_ (.A1(net165),
    .A2(\wdata_q[2] ),
    .B1(_0411_),
    .C1(_0469_),
    .Y(_0470_));
 sky130_fd_sc_hd__a221oi_1 _0952_ (.A1(_0468_),
    .A2(_0456_),
    .B1(_0470_),
    .B2(_0451_),
    .C1(_0258_),
    .Y(_0069_));
 sky130_fd_sc_hd__inv_1 _0953_ (.A(\scratch_reg[1] ),
    .Y(_0471_));
 sky130_fd_sc_hd__nor2b_1 _0954_ (.A(net165),
    .B_N(net81),
    .Y(_0472_));
 sky130_fd_sc_hd__a211oi_1 _0955_ (.A1(net165),
    .A2(\wdata_q[1] ),
    .B1(_0411_),
    .C1(_0472_),
    .Y(_0473_));
 sky130_fd_sc_hd__a221oi_1 _0956_ (.A1(_0471_),
    .A2(_0456_),
    .B1(_0473_),
    .B2(_0451_),
    .C1(_0258_),
    .Y(_0070_));
 sky130_fd_sc_hd__inv_1 _0957_ (.A(\scratch_reg[0] ),
    .Y(_0474_));
 sky130_fd_sc_hd__nor2b_1 _0958_ (.A(net165),
    .B_N(net70),
    .Y(_0475_));
 sky130_fd_sc_hd__a211oi_1 _0959_ (.A1(net165),
    .A2(\wdata_q[0] ),
    .B1(_0411_),
    .C1(_0475_),
    .Y(_0476_));
 sky130_fd_sc_hd__a221oi_1 _0960_ (.A1(_0474_),
    .A2(_0456_),
    .B1(_0476_),
    .B2(_0451_),
    .C1(_0258_),
    .Y(_0071_));
 sky130_fd_sc_hd__nand2_1 _0963_ (.A(\scratch_reg[14] ),
    .B(net167),
    .Y(_0479_));
 sky130_fd_sc_hd__mux2_2 _0965_ (.A0(net75),
    .A1(\wdata_q[14] ),
    .S(net165),
    .X(_0481_));
 sky130_fd_sc_hd__nand2_1 _0966_ (.A(net167),
    .B(_0481_),
    .Y(_0482_));
 sky130_fd_sc_hd__mux2i_1 _0967_ (.A0(net103),
    .A1(\wstrb_q[1] ),
    .S(net165),
    .Y(_0483_));
 sky130_fd_sc_hd__or3_4 _0968_ (.A(net162),
    .B(_0450_),
    .C(_0483_),
    .X(_0484_));
 sky130_fd_sc_hd__a211oi_4 _0969_ (.A1(_0422_),
    .A2(_0430_),
    .B1(_0440_),
    .C1(_0484_),
    .Y(_0485_));
 sky130_fd_sc_hd__mux2i_1 _0970_ (.A0(_0479_),
    .A1(_0482_),
    .S(_0485_),
    .Y(_0072_));
 sky130_fd_sc_hd__nand2_1 _0971_ (.A(\scratch_reg[13] ),
    .B(net167),
    .Y(_0486_));
 sky130_fd_sc_hd__mux2_2 _0974_ (.A0(net74),
    .A1(\wdata_q[13] ),
    .S(net165),
    .X(_0489_));
 sky130_fd_sc_hd__nand2_1 _0975_ (.A(net167),
    .B(_0489_),
    .Y(_0490_));
 sky130_fd_sc_hd__mux2i_1 _0976_ (.A0(_0486_),
    .A1(_0490_),
    .S(_0485_),
    .Y(_0073_));
 sky130_fd_sc_hd__nand2_1 _0977_ (.A(\scratch_reg[12] ),
    .B(net167),
    .Y(_0491_));
 sky130_fd_sc_hd__mux2_2 _0978_ (.A0(net73),
    .A1(\wdata_q[12] ),
    .S(net165),
    .X(_0492_));
 sky130_fd_sc_hd__nand2_1 _0979_ (.A(net167),
    .B(_0492_),
    .Y(_0493_));
 sky130_fd_sc_hd__mux2i_1 _0980_ (.A0(_0491_),
    .A1(_0493_),
    .S(_0485_),
    .Y(_0074_));
 sky130_fd_sc_hd__nand2_1 _0981_ (.A(\scratch_reg[11] ),
    .B(net167),
    .Y(_0494_));
 sky130_fd_sc_hd__mux2_2 _0982_ (.A0(net72),
    .A1(\wdata_q[11] ),
    .S(net165),
    .X(_0495_));
 sky130_fd_sc_hd__nand2_1 _0983_ (.A(net167),
    .B(_0495_),
    .Y(_0496_));
 sky130_fd_sc_hd__mux2i_1 _0984_ (.A0(_0494_),
    .A1(_0496_),
    .S(_0485_),
    .Y(_0075_));
 sky130_fd_sc_hd__nand2_1 _0985_ (.A(\scratch_reg[10] ),
    .B(net167),
    .Y(_0497_));
 sky130_fd_sc_hd__mux2_2 _0986_ (.A0(net71),
    .A1(\wdata_q[10] ),
    .S(net165),
    .X(_0498_));
 sky130_fd_sc_hd__nand2_1 _0987_ (.A(net167),
    .B(_0498_),
    .Y(_0499_));
 sky130_fd_sc_hd__mux2i_1 _0988_ (.A0(_0497_),
    .A1(_0499_),
    .S(_0485_),
    .Y(_0076_));
 sky130_fd_sc_hd__nand2_1 _0989_ (.A(\scratch_reg[9] ),
    .B(net167),
    .Y(_0500_));
 sky130_fd_sc_hd__mux2_2 _0990_ (.A0(net101),
    .A1(\wdata_q[9] ),
    .S(net165),
    .X(_0501_));
 sky130_fd_sc_hd__nand2_1 _0991_ (.A(net167),
    .B(_0501_),
    .Y(_0502_));
 sky130_fd_sc_hd__mux2i_1 _0992_ (.A0(_0500_),
    .A1(_0502_),
    .S(_0485_),
    .Y(_0077_));
 sky130_fd_sc_hd__nand2_1 _0993_ (.A(\scratch_reg[8] ),
    .B(net167),
    .Y(_0503_));
 sky130_fd_sc_hd__mux2_2 _0994_ (.A0(net100),
    .A1(\wdata_q[8] ),
    .S(net165),
    .X(_0504_));
 sky130_fd_sc_hd__nand2_1 _0995_ (.A(net167),
    .B(_0504_),
    .Y(_0505_));
 sky130_fd_sc_hd__mux2i_1 _0996_ (.A0(_0503_),
    .A1(_0505_),
    .S(_0485_),
    .Y(_0078_));
 sky130_fd_sc_hd__nand2_1 _0997_ (.A(\scratch_reg[22] ),
    .B(net167),
    .Y(_0506_));
 sky130_fd_sc_hd__mux2_2 _0998_ (.A0(net84),
    .A1(\wdata_q[22] ),
    .S(net165),
    .X(_0507_));
 sky130_fd_sc_hd__nand2_1 _0999_ (.A(net167),
    .B(_0507_),
    .Y(_0508_));
 sky130_fd_sc_hd__mux2i_1 _1000_ (.A0(net104),
    .A1(\wstrb_q[2] ),
    .S(net165),
    .Y(_0509_));
 sky130_fd_sc_hd__or3_4 _1001_ (.A(net162),
    .B(_0450_),
    .C(_0509_),
    .X(_0510_));
 sky130_fd_sc_hd__a211oi_4 _1002_ (.A1(_0422_),
    .A2(_0430_),
    .B1(_0440_),
    .C1(_0510_),
    .Y(_0511_));
 sky130_fd_sc_hd__mux2i_1 _1003_ (.A0(_0506_),
    .A1(_0508_),
    .S(_0511_),
    .Y(_0079_));
 sky130_fd_sc_hd__nand2_1 _1004_ (.A(\scratch_reg[21] ),
    .B(net167),
    .Y(_0512_));
 sky130_fd_sc_hd__mux2_2 _1005_ (.A0(net83),
    .A1(\wdata_q[21] ),
    .S(net165),
    .X(_0513_));
 sky130_fd_sc_hd__nand2_1 _1006_ (.A(net167),
    .B(_0513_),
    .Y(_0514_));
 sky130_fd_sc_hd__mux2i_1 _1007_ (.A0(_0512_),
    .A1(_0514_),
    .S(_0511_),
    .Y(_0080_));
 sky130_fd_sc_hd__nand2_1 _1009_ (.A(\scratch_reg[20] ),
    .B(net167),
    .Y(_0516_));
 sky130_fd_sc_hd__mux2_2 _1010_ (.A0(net82),
    .A1(\wdata_q[20] ),
    .S(net165),
    .X(_0517_));
 sky130_fd_sc_hd__nand2_1 _1011_ (.A(net167),
    .B(_0517_),
    .Y(_0518_));
 sky130_fd_sc_hd__mux2i_1 _1012_ (.A0(_0516_),
    .A1(_0518_),
    .S(_0511_),
    .Y(_0081_));
 sky130_fd_sc_hd__nand2_1 _1013_ (.A(\scratch_reg[19] ),
    .B(net167),
    .Y(_0519_));
 sky130_fd_sc_hd__mux2_2 _1014_ (.A0(net80),
    .A1(\wdata_q[19] ),
    .S(net165),
    .X(_0520_));
 sky130_fd_sc_hd__nand2_1 _1015_ (.A(net167),
    .B(_0520_),
    .Y(_0521_));
 sky130_fd_sc_hd__mux2i_1 _1016_ (.A0(_0519_),
    .A1(_0521_),
    .S(_0511_),
    .Y(_0082_));
 sky130_fd_sc_hd__nand2_1 _1017_ (.A(\scratch_reg[18] ),
    .B(net167),
    .Y(_0522_));
 sky130_fd_sc_hd__mux2_2 _1020_ (.A0(net79),
    .A1(\wdata_q[18] ),
    .S(net165),
    .X(_0525_));
 sky130_fd_sc_hd__nand2_1 _1021_ (.A(net167),
    .B(_0525_),
    .Y(_0526_));
 sky130_fd_sc_hd__mux2i_1 _1022_ (.A0(_0522_),
    .A1(_0526_),
    .S(_0511_),
    .Y(_0083_));
 sky130_fd_sc_hd__nand2_1 _1023_ (.A(\scratch_reg[17] ),
    .B(net167),
    .Y(_0527_));
 sky130_fd_sc_hd__mux2_2 _1024_ (.A0(net78),
    .A1(\wdata_q[17] ),
    .S(net165),
    .X(_0528_));
 sky130_fd_sc_hd__nand2_1 _1025_ (.A(net167),
    .B(_0528_),
    .Y(_0529_));
 sky130_fd_sc_hd__mux2i_1 _1026_ (.A0(_0527_),
    .A1(_0529_),
    .S(_0511_),
    .Y(_0084_));
 sky130_fd_sc_hd__nand2_1 _1027_ (.A(\scratch_reg[16] ),
    .B(net167),
    .Y(_0530_));
 sky130_fd_sc_hd__mux2_2 _1028_ (.A0(net77),
    .A1(\wdata_q[16] ),
    .S(net165),
    .X(_0531_));
 sky130_fd_sc_hd__nand2_1 _1029_ (.A(net167),
    .B(_0531_),
    .Y(_0532_));
 sky130_fd_sc_hd__mux2i_1 _1030_ (.A0(_0530_),
    .A1(_0532_),
    .S(_0511_),
    .Y(_0085_));
 sky130_fd_sc_hd__nand2_1 _1031_ (.A(\scratch_reg[30] ),
    .B(net167),
    .Y(_0533_));
 sky130_fd_sc_hd__mux2_2 _1032_ (.A0(net93),
    .A1(\wdata_q[30] ),
    .S(net165),
    .X(_0534_));
 sky130_fd_sc_hd__nand2_1 _1033_ (.A(net167),
    .B(_0534_),
    .Y(_0535_));
 sky130_fd_sc_hd__mux2i_1 _1034_ (.A0(net105),
    .A1(\wstrb_q[3] ),
    .S(net165),
    .Y(_0536_));
 sky130_fd_sc_hd__or3_2 _1035_ (.A(net162),
    .B(_0450_),
    .C(_0536_),
    .X(_0537_));
 sky130_fd_sc_hd__a211oi_4 _1036_ (.A1(_0422_),
    .A2(_0430_),
    .B1(_0440_),
    .C1(_0537_),
    .Y(_0538_));
 sky130_fd_sc_hd__mux2i_1 _1037_ (.A0(_0533_),
    .A1(_0535_),
    .S(_0538_),
    .Y(_0086_));
 sky130_fd_sc_hd__nand2_1 _1038_ (.A(\scratch_reg[29] ),
    .B(net167),
    .Y(_0539_));
 sky130_fd_sc_hd__mux2_2 _1039_ (.A0(net91),
    .A1(\wdata_q[29] ),
    .S(net165),
    .X(_0540_));
 sky130_fd_sc_hd__nand2_1 _1040_ (.A(net167),
    .B(_0540_),
    .Y(_0541_));
 sky130_fd_sc_hd__mux2i_1 _1041_ (.A0(_0539_),
    .A1(_0541_),
    .S(_0538_),
    .Y(_0087_));
 sky130_fd_sc_hd__nand2_1 _1042_ (.A(\scratch_reg[28] ),
    .B(net167),
    .Y(_0542_));
 sky130_fd_sc_hd__mux2_2 _1043_ (.A0(net90),
    .A1(\wdata_q[28] ),
    .S(net165),
    .X(_0543_));
 sky130_fd_sc_hd__nand2_1 _1044_ (.A(net167),
    .B(_0543_),
    .Y(_0544_));
 sky130_fd_sc_hd__mux2i_1 _1045_ (.A0(_0542_),
    .A1(_0544_),
    .S(_0538_),
    .Y(_0088_));
 sky130_fd_sc_hd__nand2_1 _1046_ (.A(\scratch_reg[27] ),
    .B(net167),
    .Y(_0545_));
 sky130_fd_sc_hd__mux2_2 _1047_ (.A0(net89),
    .A1(\wdata_q[27] ),
    .S(net165),
    .X(_0546_));
 sky130_fd_sc_hd__nand2_1 _1048_ (.A(net167),
    .B(_0546_),
    .Y(_0547_));
 sky130_fd_sc_hd__mux2i_1 _1049_ (.A0(_0545_),
    .A1(_0547_),
    .S(_0538_),
    .Y(_0089_));
 sky130_fd_sc_hd__nand2_1 _1050_ (.A(\scratch_reg[26] ),
    .B(net167),
    .Y(_0548_));
 sky130_fd_sc_hd__mux2_2 _1051_ (.A0(net88),
    .A1(\wdata_q[26] ),
    .S(net165),
    .X(_0549_));
 sky130_fd_sc_hd__nand2_1 _1052_ (.A(net167),
    .B(_0549_),
    .Y(_0550_));
 sky130_fd_sc_hd__mux2i_1 _1053_ (.A0(_0548_),
    .A1(_0550_),
    .S(_0538_),
    .Y(_0090_));
 sky130_fd_sc_hd__nand2_1 _1055_ (.A(\scratch_reg[25] ),
    .B(net167),
    .Y(_0552_));
 sky130_fd_sc_hd__mux2_2 _1056_ (.A0(net87),
    .A1(\wdata_q[25] ),
    .S(net165),
    .X(_0553_));
 sky130_fd_sc_hd__nand2_1 _1057_ (.A(net167),
    .B(_0553_),
    .Y(_0554_));
 sky130_fd_sc_hd__mux2i_1 _1058_ (.A0(_0552_),
    .A1(_0554_),
    .S(_0538_),
    .Y(_0091_));
 sky130_fd_sc_hd__nand2_1 _1059_ (.A(\scratch_reg[24] ),
    .B(net167),
    .Y(_0555_));
 sky130_fd_sc_hd__mux2_2 _1060_ (.A0(net86),
    .A1(\wdata_q[24] ),
    .S(net165),
    .X(_0556_));
 sky130_fd_sc_hd__nand2_1 _1061_ (.A(net167),
    .B(_0556_),
    .Y(_0557_));
 sky130_fd_sc_hd__mux2i_1 _1062_ (.A0(_0555_),
    .A1(_0557_),
    .S(_0538_),
    .Y(_0092_));
 sky130_fd_sc_hd__nor2_1 _1063_ (.A(\awaddr_q[2] ),
    .B(\awaddr_q[3] ),
    .Y(_0558_));
 sky130_fd_sc_hd__nor3_1 _1064_ (.A(aw_pending),
    .B(net57),
    .C(net60),
    .Y(_0559_));
 sky130_fd_sc_hd__a21oi_1 _1065_ (.A1(aw_pending),
    .A2(_0558_),
    .B1(_0559_),
    .Y(_0560_));
 sky130_fd_sc_hd__a2111oi_4 _1066_ (.A1(_0422_),
    .A2(_0430_),
    .B1(_0440_),
    .C1(net162),
    .D1(_0560_),
    .Y(_0561_));
 sky130_fd_sc_hd__nor3_1 _1067_ (.A(net162),
    .B(_0411_),
    .C(_0560_),
    .Y(_0562_));
 sky130_fd_sc_hd__o211ai_2 _1068_ (.A1(_0452_),
    .A2(_0453_),
    .B1(_0454_),
    .C1(_0562_),
    .Y(_0563_));
 sky130_fd_sc_hd__inv_1 _1069_ (.A(\control_reg[6] ),
    .Y(_0564_));
 sky130_fd_sc_hd__a221oi_1 _1071_ (.A1(_0414_),
    .A2(_0561_),
    .B1(_0563_),
    .B2(_0564_),
    .C1(_0258_),
    .Y(_0093_));
 sky130_fd_sc_hd__inv_1 _1072_ (.A(\control_reg[5] ),
    .Y(_0566_));
 sky130_fd_sc_hd__a221oi_1 _1073_ (.A1(_0461_),
    .A2(_0561_),
    .B1(_0563_),
    .B2(_0566_),
    .C1(_0258_),
    .Y(_0094_));
 sky130_fd_sc_hd__inv_1 _1074_ (.A(\control_reg[4] ),
    .Y(_0567_));
 sky130_fd_sc_hd__a221oi_1 _1075_ (.A1(_0464_),
    .A2(_0561_),
    .B1(_0563_),
    .B2(_0567_),
    .C1(_0258_),
    .Y(_0095_));
 sky130_fd_sc_hd__inv_1 _1076_ (.A(\control_reg[3] ),
    .Y(_0568_));
 sky130_fd_sc_hd__a221oi_1 _1077_ (.A1(_0467_),
    .A2(_0561_),
    .B1(_0563_),
    .B2(_0568_),
    .C1(_0258_),
    .Y(_0096_));
 sky130_fd_sc_hd__inv_1 _1078_ (.A(\control_reg[2] ),
    .Y(_0569_));
 sky130_fd_sc_hd__a221oi_1 _1079_ (.A1(_0470_),
    .A2(_0561_),
    .B1(_0563_),
    .B2(_0569_),
    .C1(_0258_),
    .Y(_0097_));
 sky130_fd_sc_hd__inv_1 _1080_ (.A(\control_reg[1] ),
    .Y(_0570_));
 sky130_fd_sc_hd__a221oi_1 _1081_ (.A1(_0473_),
    .A2(_0561_),
    .B1(_0563_),
    .B2(_0570_),
    .C1(_0258_),
    .Y(_0098_));
 sky130_fd_sc_hd__inv_1 _1082_ (.A(\control_reg[0] ),
    .Y(_0571_));
 sky130_fd_sc_hd__a221oi_1 _1083_ (.A1(_0476_),
    .A2(_0561_),
    .B1(_0563_),
    .B2(_0571_),
    .C1(_0258_),
    .Y(_0099_));
 sky130_fd_sc_hd__nand2_1 _1084_ (.A(\control_reg[14] ),
    .B(net167),
    .Y(_0572_));
 sky130_fd_sc_hd__nor3_1 _1085_ (.A(net162),
    .B(_0483_),
    .C(_0560_),
    .Y(_0573_));
 sky130_fd_sc_hd__o211ai_2 _1086_ (.A1(_0452_),
    .A2(_0453_),
    .B1(_0454_),
    .C1(_0573_),
    .Y(_0574_));
 sky130_fd_sc_hd__mux2i_1 _1087_ (.A0(_0482_),
    .A1(_0572_),
    .S(_0574_),
    .Y(_0100_));
 sky130_fd_sc_hd__nand2_1 _1088_ (.A(\control_reg[13] ),
    .B(net167),
    .Y(_0575_));
 sky130_fd_sc_hd__mux2i_1 _1089_ (.A0(_0490_),
    .A1(_0575_),
    .S(_0574_),
    .Y(_0101_));
 sky130_fd_sc_hd__nand2_1 _1090_ (.A(\control_reg[12] ),
    .B(net167),
    .Y(_0576_));
 sky130_fd_sc_hd__mux2i_1 _1091_ (.A0(_0493_),
    .A1(_0576_),
    .S(_0574_),
    .Y(_0102_));
 sky130_fd_sc_hd__nand2_1 _1092_ (.A(\control_reg[11] ),
    .B(net167),
    .Y(_0577_));
 sky130_fd_sc_hd__mux2i_1 _1093_ (.A0(_0496_),
    .A1(_0577_),
    .S(_0574_),
    .Y(_0103_));
 sky130_fd_sc_hd__nand2_1 _1094_ (.A(\control_reg[10] ),
    .B(net167),
    .Y(_0578_));
 sky130_fd_sc_hd__mux2i_1 _1095_ (.A0(_0499_),
    .A1(_0578_),
    .S(_0574_),
    .Y(_0104_));
 sky130_fd_sc_hd__nand2_1 _1097_ (.A(\control_reg[9] ),
    .B(net167),
    .Y(_0580_));
 sky130_fd_sc_hd__mux2i_1 _1098_ (.A0(_0502_),
    .A1(_0580_),
    .S(_0574_),
    .Y(_0105_));
 sky130_fd_sc_hd__nand2_1 _1099_ (.A(\control_reg[8] ),
    .B(net167),
    .Y(_0581_));
 sky130_fd_sc_hd__mux2i_1 _1100_ (.A0(_0505_),
    .A1(_0581_),
    .S(_0574_),
    .Y(_0106_));
 sky130_fd_sc_hd__nand2_1 _1101_ (.A(\control_reg[22] ),
    .B(net167),
    .Y(_0582_));
 sky130_fd_sc_hd__nor3_1 _1102_ (.A(net162),
    .B(_0509_),
    .C(_0560_),
    .Y(_0583_));
 sky130_fd_sc_hd__o211ai_2 _1103_ (.A1(_0452_),
    .A2(_0453_),
    .B1(_0454_),
    .C1(_0583_),
    .Y(_0584_));
 sky130_fd_sc_hd__mux2i_1 _1104_ (.A0(_0508_),
    .A1(_0582_),
    .S(_0584_),
    .Y(_0107_));
 sky130_fd_sc_hd__nand2_1 _1105_ (.A(\control_reg[21] ),
    .B(net167),
    .Y(_0585_));
 sky130_fd_sc_hd__mux2i_1 _1106_ (.A0(_0514_),
    .A1(_0585_),
    .S(_0584_),
    .Y(_0108_));
 sky130_fd_sc_hd__nand2_1 _1107_ (.A(\control_reg[20] ),
    .B(net167),
    .Y(_0586_));
 sky130_fd_sc_hd__mux2i_1 _1108_ (.A0(_0518_),
    .A1(_0586_),
    .S(_0584_),
    .Y(_0109_));
 sky130_fd_sc_hd__nand2_1 _1109_ (.A(\control_reg[19] ),
    .B(net167),
    .Y(_0587_));
 sky130_fd_sc_hd__mux2i_1 _1110_ (.A0(_0521_),
    .A1(_0587_),
    .S(_0584_),
    .Y(_0110_));
 sky130_fd_sc_hd__nand2_1 _1111_ (.A(\control_reg[18] ),
    .B(net167),
    .Y(_0588_));
 sky130_fd_sc_hd__mux2i_1 _1112_ (.A0(_0526_),
    .A1(_0588_),
    .S(_0584_),
    .Y(_0111_));
 sky130_fd_sc_hd__nand2_1 _1113_ (.A(\control_reg[17] ),
    .B(net167),
    .Y(_0589_));
 sky130_fd_sc_hd__mux2i_1 _1114_ (.A0(_0529_),
    .A1(_0589_),
    .S(_0584_),
    .Y(_0112_));
 sky130_fd_sc_hd__nand2_1 _1115_ (.A(\control_reg[16] ),
    .B(net167),
    .Y(_0590_));
 sky130_fd_sc_hd__mux2i_1 _1116_ (.A0(_0532_),
    .A1(_0590_),
    .S(_0584_),
    .Y(_0113_));
 sky130_fd_sc_hd__nand2_1 _1117_ (.A(\control_reg[30] ),
    .B(net167),
    .Y(_0591_));
 sky130_fd_sc_hd__nor3_1 _1118_ (.A(net162),
    .B(_0536_),
    .C(_0560_),
    .Y(_0592_));
 sky130_fd_sc_hd__o211ai_2 _1119_ (.A1(_0452_),
    .A2(_0453_),
    .B1(_0454_),
    .C1(_0592_),
    .Y(_0593_));
 sky130_fd_sc_hd__mux2i_1 _1120_ (.A0(_0535_),
    .A1(_0591_),
    .S(_0593_),
    .Y(_0114_));
 sky130_fd_sc_hd__nand2_1 _1121_ (.A(\control_reg[29] ),
    .B(net167),
    .Y(_0594_));
 sky130_fd_sc_hd__mux2i_1 _1122_ (.A0(_0541_),
    .A1(_0594_),
    .S(_0593_),
    .Y(_0115_));
 sky130_fd_sc_hd__nand2_1 _1123_ (.A(\control_reg[28] ),
    .B(net167),
    .Y(_0595_));
 sky130_fd_sc_hd__mux2i_1 _1124_ (.A0(_0544_),
    .A1(_0595_),
    .S(_0593_),
    .Y(_0116_));
 sky130_fd_sc_hd__nand2_1 _1125_ (.A(\control_reg[27] ),
    .B(net167),
    .Y(_0596_));
 sky130_fd_sc_hd__mux2i_1 _1126_ (.A0(_0547_),
    .A1(_0596_),
    .S(_0593_),
    .Y(_0117_));
 sky130_fd_sc_hd__nand2_1 _1127_ (.A(\control_reg[26] ),
    .B(net167),
    .Y(_0597_));
 sky130_fd_sc_hd__mux2i_1 _1128_ (.A0(_0550_),
    .A1(_0597_),
    .S(_0593_),
    .Y(_0118_));
 sky130_fd_sc_hd__nand2_1 _1129_ (.A(\control_reg[25] ),
    .B(net167),
    .Y(_0598_));
 sky130_fd_sc_hd__mux2i_1 _1130_ (.A0(_0554_),
    .A1(_0598_),
    .S(_0593_),
    .Y(_0119_));
 sky130_fd_sc_hd__nand2_1 _1131_ (.A(\control_reg[24] ),
    .B(net167),
    .Y(_0599_));
 sky130_fd_sc_hd__mux2i_1 _1132_ (.A0(_0557_),
    .A1(_0599_),
    .S(_0593_),
    .Y(_0120_));
 sky130_fd_sc_hd__nor4_1 _1133_ (.A(net2),
    .B(net13),
    .C(net25),
    .D(net21),
    .Y(_0600_));
 sky130_fd_sc_hd__nor4_1 _1134_ (.A(net26),
    .B(net22),
    .C(net23),
    .D(net20),
    .Y(_0601_));
 sky130_fd_sc_hd__nor4_1 _1135_ (.A(net18),
    .B(net4),
    .C(net32),
    .D(net29),
    .Y(_0602_));
 sky130_fd_sc_hd__nor4_1 _1136_ (.A(net33),
    .B(net30),
    .C(net31),
    .D(net28),
    .Y(_0603_));
 sky130_fd_sc_hd__nand4_1 _1137_ (.A(_0600_),
    .B(_0601_),
    .C(_0602_),
    .D(_0603_),
    .Y(_0604_));
 sky130_fd_sc_hd__nor2_1 _1138_ (.A(net15),
    .B(net12),
    .Y(_0605_));
 sky130_fd_sc_hd__nor4_1 _1139_ (.A(net19),
    .B(net16),
    .C(net17),
    .D(net14),
    .Y(_0606_));
 sky130_fd_sc_hd__nor4_1 _1140_ (.A(net11),
    .B(net9),
    .C(net10),
    .D(net3),
    .Y(_0607_));
 sky130_fd_sc_hd__nor4_1 _1141_ (.A(net7),
    .B(net8),
    .C(net5),
    .D(net6),
    .Y(_0608_));
 sky130_fd_sc_hd__nand4_1 _1142_ (.A(_0605_),
    .B(_0606_),
    .C(_0607_),
    .D(_0608_),
    .Y(_0609_));
 sky130_fd_sc_hd__nor2_1 _1143_ (.A(_0604_),
    .B(_0609_),
    .Y(_0610_));
 sky130_fd_sc_hd__nor2b_1 _1144_ (.A(net144),
    .B_N(net1),
    .Y(net107));
 sky130_fd_sc_hd__nand2_1 _1145_ (.A(net34),
    .B(net107),
    .Y(_0611_));
 sky130_fd_sc_hd__nand3_1 _1147_ (.A(net143),
    .B(net167),
    .C(net161),
    .Y(_0613_));
 sky130_fd_sc_hd__o21ai_0 _1148_ (.A1(_0610_),
    .A2(net161),
    .B1(_0613_),
    .Y(_0121_));
 sky130_fd_sc_hd__mux2_2 _1151_ (.A0(\control_reg[30] ),
    .A1(\scratch_reg[30] ),
    .S(net27),
    .X(_0616_));
 sky130_fd_sc_hd__nor4_2 _1152_ (.A(net24),
    .B(_0604_),
    .C(_0609_),
    .D(net161),
    .Y(_0617_));
 sky130_fd_sc_hd__a22oi_1 _1154_ (.A1(net134),
    .A2(net161),
    .B1(_0616_),
    .B2(net157),
    .Y(_0619_));
 sky130_fd_sc_hd__nor2_1 _1155_ (.A(net166),
    .B(_0619_),
    .Y(_0122_));
 sky130_fd_sc_hd__mux2_2 _1157_ (.A0(\control_reg[29] ),
    .A1(\scratch_reg[29] ),
    .S(net27),
    .X(_0621_));
 sky130_fd_sc_hd__a22oi_1 _1158_ (.A1(net132),
    .A2(net161),
    .B1(net157),
    .B2(_0621_),
    .Y(_0622_));
 sky130_fd_sc_hd__nor2_1 _1159_ (.A(net166),
    .B(_0622_),
    .Y(_0123_));
 sky130_fd_sc_hd__mux2_2 _1161_ (.A0(\control_reg[28] ),
    .A1(\scratch_reg[28] ),
    .S(net27),
    .X(_0624_));
 sky130_fd_sc_hd__a22oi_1 _1162_ (.A1(net131),
    .A2(net161),
    .B1(net157),
    .B2(_0624_),
    .Y(_0625_));
 sky130_fd_sc_hd__nor2_1 _1163_ (.A(net166),
    .B(_0625_),
    .Y(_0124_));
 sky130_fd_sc_hd__mux2_2 _1164_ (.A0(\control_reg[27] ),
    .A1(\scratch_reg[27] ),
    .S(net27),
    .X(_0626_));
 sky130_fd_sc_hd__a22oi_1 _1165_ (.A1(net130),
    .A2(net161),
    .B1(net157),
    .B2(_0626_),
    .Y(_0627_));
 sky130_fd_sc_hd__nor2_1 _1166_ (.A(net166),
    .B(_0627_),
    .Y(_0125_));
 sky130_fd_sc_hd__mux2_2 _1167_ (.A0(\control_reg[26] ),
    .A1(\scratch_reg[26] ),
    .S(net27),
    .X(_0628_));
 sky130_fd_sc_hd__a22oi_1 _1168_ (.A1(net129),
    .A2(net161),
    .B1(net157),
    .B2(_0628_),
    .Y(_0629_));
 sky130_fd_sc_hd__nor2_1 _1169_ (.A(net166),
    .B(_0629_),
    .Y(_0126_));
 sky130_fd_sc_hd__mux2_2 _1170_ (.A0(\control_reg[25] ),
    .A1(\scratch_reg[25] ),
    .S(net27),
    .X(_0630_));
 sky130_fd_sc_hd__a22oi_1 _1171_ (.A1(net128),
    .A2(net161),
    .B1(net157),
    .B2(_0630_),
    .Y(_0631_));
 sky130_fd_sc_hd__nor2_1 _1172_ (.A(net166),
    .B(_0631_),
    .Y(_0127_));
 sky130_fd_sc_hd__mux2_2 _1173_ (.A0(\control_reg[24] ),
    .A1(\scratch_reg[24] ),
    .S(net27),
    .X(_0632_));
 sky130_fd_sc_hd__a22oi_1 _1174_ (.A1(net127),
    .A2(net161),
    .B1(net157),
    .B2(_0632_),
    .Y(_0633_));
 sky130_fd_sc_hd__nor2_1 _1175_ (.A(net166),
    .B(_0633_),
    .Y(_0128_));
 sky130_fd_sc_hd__mux2_2 _1177_ (.A0(\control_reg[23] ),
    .A1(\scratch_reg[23] ),
    .S(net27),
    .X(_0635_));
 sky130_fd_sc_hd__a22oi_1 _1178_ (.A1(net126),
    .A2(net161),
    .B1(net157),
    .B2(_0635_),
    .Y(_0636_));
 sky130_fd_sc_hd__nor2_1 _1179_ (.A(net166),
    .B(_0636_),
    .Y(_0129_));
 sky130_fd_sc_hd__mux2_2 _1180_ (.A0(\control_reg[22] ),
    .A1(\scratch_reg[22] ),
    .S(net27),
    .X(_0637_));
 sky130_fd_sc_hd__a22oi_1 _1181_ (.A1(net125),
    .A2(net161),
    .B1(net157),
    .B2(_0637_),
    .Y(_0638_));
 sky130_fd_sc_hd__nor2_1 _1182_ (.A(net166),
    .B(_0638_),
    .Y(_0130_));
 sky130_fd_sc_hd__mux2_2 _1183_ (.A0(\control_reg[21] ),
    .A1(\scratch_reg[21] ),
    .S(net27),
    .X(_0639_));
 sky130_fd_sc_hd__a22oi_1 _1184_ (.A1(net124),
    .A2(net161),
    .B1(net157),
    .B2(_0639_),
    .Y(_0640_));
 sky130_fd_sc_hd__nor2_1 _1185_ (.A(net166),
    .B(_0640_),
    .Y(_0131_));
 sky130_fd_sc_hd__mux2_2 _1187_ (.A0(\control_reg[20] ),
    .A1(\scratch_reg[20] ),
    .S(net27),
    .X(_0642_));
 sky130_fd_sc_hd__a22oi_1 _1188_ (.A1(net123),
    .A2(net161),
    .B1(net157),
    .B2(_0642_),
    .Y(_0643_));
 sky130_fd_sc_hd__nor2_1 _1189_ (.A(net166),
    .B(_0643_),
    .Y(_0132_));
 sky130_fd_sc_hd__mux2_2 _1191_ (.A0(\control_reg[19] ),
    .A1(\scratch_reg[19] ),
    .S(net27),
    .X(_0645_));
 sky130_fd_sc_hd__a22oi_1 _1192_ (.A1(net121),
    .A2(net161),
    .B1(net157),
    .B2(_0645_),
    .Y(_0646_));
 sky130_fd_sc_hd__nor2_1 _1193_ (.A(net166),
    .B(_0646_),
    .Y(_0133_));
 sky130_fd_sc_hd__mux2_2 _1195_ (.A0(\control_reg[18] ),
    .A1(\scratch_reg[18] ),
    .S(net27),
    .X(_0648_));
 sky130_fd_sc_hd__a22oi_1 _1196_ (.A1(net120),
    .A2(net161),
    .B1(net157),
    .B2(_0648_),
    .Y(_0649_));
 sky130_fd_sc_hd__nor2_1 _1197_ (.A(net166),
    .B(_0649_),
    .Y(_0134_));
 sky130_fd_sc_hd__mux2_2 _1198_ (.A0(\control_reg[17] ),
    .A1(\scratch_reg[17] ),
    .S(net27),
    .X(_0650_));
 sky130_fd_sc_hd__a22oi_1 _1199_ (.A1(net119),
    .A2(net161),
    .B1(net157),
    .B2(_0650_),
    .Y(_0651_));
 sky130_fd_sc_hd__nor2_1 _1200_ (.A(net166),
    .B(_0651_),
    .Y(_0135_));
 sky130_fd_sc_hd__nor3_1 _1201_ (.A(_0604_),
    .B(_0609_),
    .C(net161),
    .Y(_0652_));
 sky130_fd_sc_hd__nand2b_1 _1203_ (.A_N(net24),
    .B(\control_reg[16] ),
    .Y(_0654_));
 sky130_fd_sc_hd__o21ai_0 _1204_ (.A1(\scratch_reg[16] ),
    .A2(net24),
    .B1(net27),
    .Y(_0655_));
 sky130_fd_sc_hd__o21ai_0 _1205_ (.A1(net27),
    .A2(_0654_),
    .B1(_0655_),
    .Y(_0656_));
 sky130_fd_sc_hd__a22oi_1 _1206_ (.A1(net118),
    .A2(net161),
    .B1(_0652_),
    .B2(_0656_),
    .Y(_0657_));
 sky130_fd_sc_hd__nor2_1 _1207_ (.A(_0258_),
    .B(_0657_),
    .Y(_0136_));
 sky130_fd_sc_hd__mux2_2 _1208_ (.A0(\control_reg[15] ),
    .A1(\scratch_reg[15] ),
    .S(net27),
    .X(_0658_));
 sky130_fd_sc_hd__a22oi_1 _1209_ (.A1(net117),
    .A2(net161),
    .B1(net157),
    .B2(_0658_),
    .Y(_0170_));
 sky130_fd_sc_hd__nor2_1 _1210_ (.A(net166),
    .B(_0170_),
    .Y(_0137_));
 sky130_fd_sc_hd__mux2_2 _1211_ (.A0(\control_reg[14] ),
    .A1(\scratch_reg[14] ),
    .S(net27),
    .X(_0171_));
 sky130_fd_sc_hd__a22oi_1 _1212_ (.A1(net116),
    .A2(net161),
    .B1(net157),
    .B2(_0171_),
    .Y(_0172_));
 sky130_fd_sc_hd__nor2_1 _1213_ (.A(net166),
    .B(_0172_),
    .Y(_0138_));
 sky130_fd_sc_hd__mux2_2 _1215_ (.A0(\control_reg[13] ),
    .A1(\scratch_reg[13] ),
    .S(net27),
    .X(_0174_));
 sky130_fd_sc_hd__a22oi_1 _1216_ (.A1(net115),
    .A2(net161),
    .B1(net158),
    .B2(_0174_),
    .Y(_0175_));
 sky130_fd_sc_hd__nor2_1 _1217_ (.A(_0258_),
    .B(_0175_),
    .Y(_0139_));
 sky130_fd_sc_hd__mux2_2 _1218_ (.A0(\control_reg[12] ),
    .A1(\scratch_reg[12] ),
    .S(net27),
    .X(_0176_));
 sky130_fd_sc_hd__a22oi_1 _1219_ (.A1(net114),
    .A2(net161),
    .B1(net158),
    .B2(_0176_),
    .Y(_0177_));
 sky130_fd_sc_hd__nor2_1 _1220_ (.A(_0258_),
    .B(_0177_),
    .Y(_0140_));
 sky130_fd_sc_hd__mux2_2 _1221_ (.A0(\control_reg[11] ),
    .A1(\scratch_reg[11] ),
    .S(net27),
    .X(_0178_));
 sky130_fd_sc_hd__a22oi_1 _1222_ (.A1(net113),
    .A2(net161),
    .B1(net158),
    .B2(_0178_),
    .Y(_0179_));
 sky130_fd_sc_hd__nor2_1 _1223_ (.A(_0258_),
    .B(_0179_),
    .Y(_0141_));
 sky130_fd_sc_hd__mux2_2 _1225_ (.A0(\control_reg[10] ),
    .A1(\scratch_reg[10] ),
    .S(net27),
    .X(_0181_));
 sky130_fd_sc_hd__a22oi_1 _1226_ (.A1(net112),
    .A2(net161),
    .B1(net158),
    .B2(_0181_),
    .Y(_0182_));
 sky130_fd_sc_hd__nor2_1 _1227_ (.A(_0258_),
    .B(_0182_),
    .Y(_0142_));
 sky130_fd_sc_hd__mux2_2 _1228_ (.A0(\control_reg[9] ),
    .A1(\scratch_reg[9] ),
    .S(net27),
    .X(_0183_));
 sky130_fd_sc_hd__a22oi_1 _1229_ (.A1(net142),
    .A2(net161),
    .B1(net158),
    .B2(_0183_),
    .Y(_0184_));
 sky130_fd_sc_hd__nor2_1 _1230_ (.A(_0258_),
    .B(_0184_),
    .Y(_0143_));
 sky130_fd_sc_hd__mux2_2 _1231_ (.A0(\control_reg[8] ),
    .A1(\scratch_reg[8] ),
    .S(net27),
    .X(_0185_));
 sky130_fd_sc_hd__a22oi_1 _1232_ (.A1(net141),
    .A2(net161),
    .B1(net158),
    .B2(_0185_),
    .Y(_0186_));
 sky130_fd_sc_hd__nor2_1 _1233_ (.A(_0258_),
    .B(_0186_),
    .Y(_0144_));
 sky130_fd_sc_hd__inv_1 _1234_ (.A(\control_reg[7] ),
    .Y(_0187_));
 sky130_fd_sc_hd__nand2_1 _1235_ (.A(\scratch_reg[7] ),
    .B(net27),
    .Y(_0188_));
 sky130_fd_sc_hd__o21ai_0 _1236_ (.A1(_0187_),
    .A2(net27),
    .B1(_0188_),
    .Y(_0189_));
 sky130_fd_sc_hd__a22oi_1 _1237_ (.A1(net140),
    .A2(net161),
    .B1(net158),
    .B2(_0189_),
    .Y(_0190_));
 sky130_fd_sc_hd__nor2_1 _1238_ (.A(_0258_),
    .B(_0190_),
    .Y(_0145_));
 sky130_fd_sc_hd__nand2_1 _1239_ (.A(\scratch_reg[6] ),
    .B(net27),
    .Y(_0191_));
 sky130_fd_sc_hd__o21ai_0 _1240_ (.A1(_0564_),
    .A2(net27),
    .B1(_0191_),
    .Y(_0192_));
 sky130_fd_sc_hd__a22oi_1 _1241_ (.A1(net139),
    .A2(net161),
    .B1(net158),
    .B2(_0192_),
    .Y(_0193_));
 sky130_fd_sc_hd__nor2_1 _1242_ (.A(_0258_),
    .B(_0193_),
    .Y(_0146_));
 sky130_fd_sc_hd__nand2_1 _1243_ (.A(\scratch_reg[5] ),
    .B(net27),
    .Y(_0194_));
 sky130_fd_sc_hd__o21ai_0 _1244_ (.A1(_0566_),
    .A2(net27),
    .B1(_0194_),
    .Y(_0195_));
 sky130_fd_sc_hd__a22oi_1 _1245_ (.A1(net138),
    .A2(net161),
    .B1(net158),
    .B2(_0195_),
    .Y(_0196_));
 sky130_fd_sc_hd__nor2_1 _1246_ (.A(_0258_),
    .B(_0196_),
    .Y(_0147_));
 sky130_fd_sc_hd__nand2_1 _1247_ (.A(\scratch_reg[4] ),
    .B(net27),
    .Y(_0197_));
 sky130_fd_sc_hd__o21ai_0 _1248_ (.A1(_0567_),
    .A2(net27),
    .B1(_0197_),
    .Y(_0198_));
 sky130_fd_sc_hd__a22oi_1 _1249_ (.A1(net137),
    .A2(net161),
    .B1(net158),
    .B2(_0198_),
    .Y(_0199_));
 sky130_fd_sc_hd__nor2_1 _1250_ (.A(_0258_),
    .B(_0199_),
    .Y(_0148_));
 sky130_fd_sc_hd__nand2_1 _1251_ (.A(\scratch_reg[3] ),
    .B(net27),
    .Y(_0200_));
 sky130_fd_sc_hd__o21ai_0 _1252_ (.A1(_0568_),
    .A2(net27),
    .B1(_0200_),
    .Y(_0201_));
 sky130_fd_sc_hd__a22oi_1 _1253_ (.A1(net136),
    .A2(net161),
    .B1(net158),
    .B2(_0201_),
    .Y(_0202_));
 sky130_fd_sc_hd__nor2_1 _1254_ (.A(_0258_),
    .B(_0202_),
    .Y(_0149_));
 sky130_fd_sc_hd__nand2_1 _1255_ (.A(\scratch_reg[2] ),
    .B(net27),
    .Y(_0203_));
 sky130_fd_sc_hd__o21ai_0 _1256_ (.A1(_0569_),
    .A2(net27),
    .B1(_0203_),
    .Y(_0204_));
 sky130_fd_sc_hd__a22oi_1 _1257_ (.A1(net133),
    .A2(net161),
    .B1(net158),
    .B2(_0204_),
    .Y(_0205_));
 sky130_fd_sc_hd__nor2_1 _1258_ (.A(_0258_),
    .B(_0205_),
    .Y(_0150_));
 sky130_fd_sc_hd__nand2_1 _1259_ (.A(\scratch_reg[1] ),
    .B(net27),
    .Y(_0206_));
 sky130_fd_sc_hd__o21ai_0 _1260_ (.A1(_0570_),
    .A2(net27),
    .B1(_0206_),
    .Y(_0207_));
 sky130_fd_sc_hd__a22oi_1 _1261_ (.A1(net122),
    .A2(net161),
    .B1(net158),
    .B2(_0207_),
    .Y(_0208_));
 sky130_fd_sc_hd__nor2_1 _1262_ (.A(_0258_),
    .B(_0208_),
    .Y(_0151_));
 sky130_fd_sc_hd__o21ai_0 _1263_ (.A1(_0474_),
    .A2(net24),
    .B1(net27),
    .Y(_0209_));
 sky130_fd_sc_hd__o311ai_0 _1264_ (.A1(\control_reg[0] ),
    .A2(net24),
    .A3(net27),
    .B1(_0652_),
    .C1(_0209_),
    .Y(_0210_));
 sky130_fd_sc_hd__nand2_1 _1265_ (.A(net111),
    .B(net161),
    .Y(_0211_));
 sky130_fd_sc_hd__a21oi_1 _1266_ (.A1(_0210_),
    .A2(_0211_),
    .B1(_0258_),
    .Y(_0152_));
 sky130_fd_sc_hd__a21oi_1 _1267_ (.A1(_0422_),
    .A2(_0430_),
    .B1(net162),
    .Y(_0212_));
 sky130_fd_sc_hd__nand2_1 _1268_ (.A(_0437_),
    .B(_0438_),
    .Y(_0213_));
 sky130_fd_sc_hd__nand3_1 _1269_ (.A(aw_pending),
    .B(_0434_),
    .C(_0435_),
    .Y(_0214_));
 sky130_fd_sc_hd__o21ai_0 _1270_ (.A1(aw_pending),
    .A2(_0213_),
    .B1(_0214_),
    .Y(_0215_));
 sky130_fd_sc_hd__a21oi_1 _1271_ (.A1(net167),
    .A2(net67),
    .B1(aw_pending),
    .Y(_0216_));
 sky130_fd_sc_hd__nor3_1 _1272_ (.A(net110),
    .B(_0432_),
    .C(_0216_),
    .Y(_0217_));
 sky130_fd_sc_hd__nor2_1 _1273_ (.A(net109),
    .B(_0217_),
    .Y(_0218_));
 sky130_fd_sc_hd__a311oi_1 _1274_ (.A1(_0212_),
    .A2(_0215_),
    .A3(_0217_),
    .B1(_0218_),
    .C1(net166),
    .Y(_0153_));
 sky130_fd_sc_hd__nand2b_1 _1275_ (.A_N(_0217_),
    .B(net167),
    .Y(_0219_));
 sky130_fd_sc_hd__nor2_1 _1276_ (.A(aw_pending),
    .B(net164),
    .Y(_0220_));
 sky130_fd_sc_hd__nor2_1 _1277_ (.A(_0219_),
    .B(_0220_),
    .Y(_0154_));
 sky130_fd_sc_hd__inv_1 _1278_ (.A(\scratch_reg[7] ),
    .Y(_0221_));
 sky130_fd_sc_hd__nor2b_1 _1279_ (.A(net165),
    .B_N(net99),
    .Y(_0222_));
 sky130_fd_sc_hd__a211oi_1 _1280_ (.A1(net165),
    .A2(\wdata_q[7] ),
    .B1(_0411_),
    .C1(_0222_),
    .Y(_0223_));
 sky130_fd_sc_hd__a221oi_1 _1281_ (.A1(_0221_),
    .A2(_0456_),
    .B1(_0223_),
    .B2(_0451_),
    .C1(_0258_),
    .Y(_0155_));
 sky130_fd_sc_hd__nand2_1 _1282_ (.A(\scratch_reg[15] ),
    .B(net167),
    .Y(_0224_));
 sky130_fd_sc_hd__mux2_2 _1283_ (.A0(net76),
    .A1(\wdata_q[15] ),
    .S(net165),
    .X(_0225_));
 sky130_fd_sc_hd__nand2_1 _1284_ (.A(net167),
    .B(_0225_),
    .Y(_0226_));
 sky130_fd_sc_hd__mux2i_1 _1285_ (.A0(_0224_),
    .A1(_0226_),
    .S(_0485_),
    .Y(_0156_));
 sky130_fd_sc_hd__nand2_1 _1286_ (.A(\scratch_reg[23] ),
    .B(net167),
    .Y(_0227_));
 sky130_fd_sc_hd__mux2_2 _1287_ (.A0(net85),
    .A1(\wdata_q[23] ),
    .S(net165),
    .X(_0228_));
 sky130_fd_sc_hd__nand2_1 _1288_ (.A(net167),
    .B(_0228_),
    .Y(_0229_));
 sky130_fd_sc_hd__mux2i_1 _1289_ (.A0(_0227_),
    .A1(_0229_),
    .S(_0511_),
    .Y(_0157_));
 sky130_fd_sc_hd__nand2_1 _1290_ (.A(\scratch_reg[31] ),
    .B(net167),
    .Y(_0230_));
 sky130_fd_sc_hd__mux2_2 _1291_ (.A0(net94),
    .A1(\wdata_q[31] ),
    .S(net165),
    .X(_0231_));
 sky130_fd_sc_hd__nand2_1 _1292_ (.A(net167),
    .B(_0231_),
    .Y(_0232_));
 sky130_fd_sc_hd__mux2i_1 _1293_ (.A0(_0230_),
    .A1(_0232_),
    .S(_0538_),
    .Y(_0158_));
 sky130_fd_sc_hd__a221oi_1 _1294_ (.A1(_0187_),
    .A2(_0563_),
    .B1(_0223_),
    .B2(_0561_),
    .C1(_0258_),
    .Y(_0159_));
 sky130_fd_sc_hd__nand2_1 _1295_ (.A(\control_reg[15] ),
    .B(net167),
    .Y(_0233_));
 sky130_fd_sc_hd__mux2i_1 _1296_ (.A0(_0226_),
    .A1(_0233_),
    .S(_0574_),
    .Y(_0160_));
 sky130_fd_sc_hd__nand2_1 _1297_ (.A(\control_reg[23] ),
    .B(net167),
    .Y(_0234_));
 sky130_fd_sc_hd__mux2i_1 _1298_ (.A0(_0229_),
    .A1(_0234_),
    .S(_0584_),
    .Y(_0161_));
 sky130_fd_sc_hd__nand2_1 _1299_ (.A(\control_reg[31] ),
    .B(net167),
    .Y(_0235_));
 sky130_fd_sc_hd__mux2i_1 _1300_ (.A0(_0232_),
    .A1(_0235_),
    .S(_0593_),
    .Y(_0162_));
 sky130_fd_sc_hd__nor2_1 _1301_ (.A(net144),
    .B(net34),
    .Y(_0236_));
 sky130_fd_sc_hd__a211oi_1 _1302_ (.A1(net144),
    .A2(net69),
    .B1(_0236_),
    .C1(_0258_),
    .Y(_0163_));
 sky130_fd_sc_hd__mux2_2 _1303_ (.A0(\control_reg[31] ),
    .A1(\scratch_reg[31] ),
    .S(net27),
    .X(_0237_));
 sky130_fd_sc_hd__a22oi_1 _1304_ (.A1(net135),
    .A2(net161),
    .B1(net157),
    .B2(_0237_),
    .Y(_0238_));
 sky130_fd_sc_hd__nor2_1 _1305_ (.A(net166),
    .B(_0238_),
    .Y(_0164_));
 sky130_fd_sc_hd__inv_1 _1306_ (.A(net68),
    .Y(_0239_));
 sky130_fd_sc_hd__a21oi_1 _1307_ (.A1(net110),
    .A2(_0239_),
    .B1(_0217_),
    .Y(_0240_));
 sky130_fd_sc_hd__nor2_1 _1308_ (.A(net166),
    .B(_0240_),
    .Y(_0165_));
 sky130_fd_sc_hd__nor2_1 _1309_ (.A(aw_pending),
    .B(_0250_),
    .Y(net108));
 sky130_fd_sc_hd__nand2_1 _1310_ (.A(net105),
    .B(net160),
    .Y(_0241_));
 sky130_fd_sc_hd__nand2_1 _1311_ (.A(\wstrb_q[3] ),
    .B(net159),
    .Y(_0242_));
 sky130_fd_sc_hd__a21oi_1 _1312_ (.A1(_0241_),
    .A2(_0242_),
    .B1(net166),
    .Y(_0166_));
 sky130_fd_sc_hd__nand2_1 _1313_ (.A(net59),
    .B(net164),
    .Y(_0243_));
 sky130_fd_sc_hd__nand2_1 _1314_ (.A(\awaddr_q[31] ),
    .B(net163),
    .Y(_0244_));
 sky130_fd_sc_hd__a21oi_1 _1315_ (.A1(_0243_),
    .A2(_0244_),
    .B1(_0258_),
    .Y(_0167_));
 sky130_fd_sc_hd__nand2_1 _1316_ (.A(net94),
    .B(net160),
    .Y(_0245_));
 sky130_fd_sc_hd__nand2_1 _1317_ (.A(\wdata_q[31] ),
    .B(net159),
    .Y(_0246_));
 sky130_fd_sc_hd__a21oi_1 _1318_ (.A1(_0245_),
    .A2(_0246_),
    .B1(net166),
    .Y(_0168_));
 sky130_fd_sc_hd__nor2_1 _1319_ (.A(net165),
    .B(net160),
    .Y(_0247_));
 sky130_fd_sc_hd__nor2_1 _1320_ (.A(_0219_),
    .B(_0247_),
    .Y(_0169_));
 sky130_fd_sc_hd__dfxtp_1 \aw_pending$_SDFFE_PP0P_  (.D(_0154_),
    .Q(aw_pending),
    .CLK(clknet_4_3_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[0]$_SDFFE_PN0P_  (.D(_0064_),
    .Q(\awaddr_q[0] ),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[10]$_SDFFE_PN0P_  (.D(_0054_),
    .Q(\awaddr_q[10] ),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[11]$_SDFFE_PN0P_  (.D(_0053_),
    .Q(\awaddr_q[11] ),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[12]$_SDFFE_PN0P_  (.D(_0052_),
    .Q(\awaddr_q[12] ),
    .CLK(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[13]$_SDFFE_PN0P_  (.D(_0051_),
    .Q(\awaddr_q[13] ),
    .CLK(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[14]$_SDFFE_PN0P_  (.D(_0050_),
    .Q(\awaddr_q[14] ),
    .CLK(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[15]$_SDFFE_PN0P_  (.D(_0049_),
    .Q(\awaddr_q[15] ),
    .CLK(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[16]$_SDFFE_PN0P_  (.D(_0048_),
    .Q(\awaddr_q[16] ),
    .CLK(clknet_4_4_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[17]$_SDFFE_PN0P_  (.D(_0047_),
    .Q(\awaddr_q[17] ),
    .CLK(clknet_4_4_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[18]$_SDFFE_PN0P_  (.D(_0046_),
    .Q(\awaddr_q[18] ),
    .CLK(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[19]$_SDFFE_PN0P_  (.D(_0045_),
    .Q(\awaddr_q[19] ),
    .CLK(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[1]$_SDFFE_PN0P_  (.D(_0063_),
    .Q(\awaddr_q[1] ),
    .CLK(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[20]$_SDFFE_PN0P_  (.D(_0044_),
    .Q(\awaddr_q[20] ),
    .CLK(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[21]$_SDFFE_PN0P_  (.D(_0043_),
    .Q(\awaddr_q[21] ),
    .CLK(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[22]$_SDFFE_PN0P_  (.D(_0042_),
    .Q(\awaddr_q[22] ),
    .CLK(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[23]$_SDFFE_PN0P_  (.D(_0041_),
    .Q(\awaddr_q[23] ),
    .CLK(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[24]$_SDFFE_PN0P_  (.D(_0040_),
    .Q(\awaddr_q[24] ),
    .CLK(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[25]$_SDFFE_PN0P_  (.D(_0039_),
    .Q(\awaddr_q[25] ),
    .CLK(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[26]$_SDFFE_PN0P_  (.D(_0038_),
    .Q(\awaddr_q[26] ),
    .CLK(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[27]$_SDFFE_PN0P_  (.D(_0037_),
    .Q(\awaddr_q[27] ),
    .CLK(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[28]$_SDFFE_PN0P_  (.D(_0036_),
    .Q(\awaddr_q[28] ),
    .CLK(clknet_4_4_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[29]$_SDFFE_PN0P_  (.D(_0035_),
    .Q(\awaddr_q[29] ),
    .CLK(clknet_4_4_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[2]$_SDFFE_PN0P_  (.D(_0062_),
    .Q(\awaddr_q[2] ),
    .CLK(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[30]$_SDFFE_PN0P_  (.D(_0034_),
    .Q(\awaddr_q[30] ),
    .CLK(clknet_4_4_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[31]$_SDFFE_PN0P_  (.D(_0167_),
    .Q(\awaddr_q[31] ),
    .CLK(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[3]$_SDFFE_PN0P_  (.D(_0061_),
    .Q(\awaddr_q[3] ),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[4]$_SDFFE_PN0P_  (.D(_0060_),
    .Q(\awaddr_q[4] ),
    .CLK(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[5]$_SDFFE_PN0P_  (.D(_0059_),
    .Q(\awaddr_q[5] ),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[6]$_SDFFE_PN0P_  (.D(_0058_),
    .Q(\awaddr_q[6] ),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[7]$_SDFFE_PN0P_  (.D(_0057_),
    .Q(\awaddr_q[7] ),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[8]$_SDFFE_PN0P_  (.D(_0056_),
    .Q(\awaddr_q[8] ),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \awaddr_q[9]$_SDFFE_PN0P_  (.D(_0055_),
    .Q(\awaddr_q[9] ),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_aclk (.A(aclk),
    .X(clknet_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_0_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_10_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_11_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_12_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_13_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_14_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_15_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_1_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_2_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_3_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_3_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_4_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_4_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_5_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_6_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_7_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_8_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_9_0_aclk (.A(clknet_0_aclk),
    .X(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__clkinvlp_4 clkload0 (.A(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__inv_6 clkload1 (.A(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkload10 (.A(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__bufinv_16 clkload11 (.A(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkload12 (.A(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__bufinv_16 clkload13 (.A(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__clkbuf_1 clkload14 (.A(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__clkinv_4 clkload2 (.A(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__inv_6 clkload3 (.A(clknet_4_3_0_aclk));
 sky130_fd_sc_hd__inv_8 clkload4 (.A(clknet_4_4_0_aclk));
 sky130_fd_sc_hd__clkinv_4 clkload5 (.A(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__clkinv_4 clkload6 (.A(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__clkinv_2 clkload7 (.A(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__bufinv_16 clkload8 (.A(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__clkinv_2 clkload9 (.A(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[0]$_SDFFE_PN0P_  (.D(_0099_),
    .Q(\control_reg[0] ),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[10]$_SDFFE_PN0P_  (.D(_0104_),
    .Q(\control_reg[10] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[11]$_SDFFE_PN0P_  (.D(_0103_),
    .Q(\control_reg[11] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[12]$_SDFFE_PN0P_  (.D(_0102_),
    .Q(\control_reg[12] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[13]$_SDFFE_PN0P_  (.D(_0101_),
    .Q(\control_reg[13] ),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[14]$_SDFFE_PN0P_  (.D(_0100_),
    .Q(\control_reg[14] ),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[15]$_SDFFE_PN0P_  (.D(_0160_),
    .Q(\control_reg[15] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[16]$_SDFFE_PN0P_  (.D(_0113_),
    .Q(\control_reg[16] ),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[17]$_SDFFE_PN0P_  (.D(_0112_),
    .Q(\control_reg[17] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[18]$_SDFFE_PN0P_  (.D(_0111_),
    .Q(\control_reg[18] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[19]$_SDFFE_PN0P_  (.D(_0110_),
    .Q(\control_reg[19] ),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[1]$_SDFFE_PN0P_  (.D(_0098_),
    .Q(\control_reg[1] ),
    .CLK(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[20]$_SDFFE_PN0P_  (.D(_0109_),
    .Q(\control_reg[20] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[21]$_SDFFE_PN0P_  (.D(_0108_),
    .Q(\control_reg[21] ),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[22]$_SDFFE_PN0P_  (.D(_0107_),
    .Q(\control_reg[22] ),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[23]$_SDFFE_PN0P_  (.D(_0161_),
    .Q(\control_reg[23] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[24]$_SDFFE_PN0P_  (.D(_0120_),
    .Q(\control_reg[24] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[25]$_SDFFE_PN0P_  (.D(_0119_),
    .Q(\control_reg[25] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[26]$_SDFFE_PN0P_  (.D(_0118_),
    .Q(\control_reg[26] ),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[27]$_SDFFE_PN0P_  (.D(_0117_),
    .Q(\control_reg[27] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[28]$_SDFFE_PN0P_  (.D(_0116_),
    .Q(\control_reg[28] ),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[29]$_SDFFE_PN0P_  (.D(_0115_),
    .Q(\control_reg[29] ),
    .CLK(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[2]$_SDFFE_PN0P_  (.D(_0097_),
    .Q(\control_reg[2] ),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[30]$_SDFFE_PN0P_  (.D(_0114_),
    .Q(\control_reg[30] ),
    .CLK(clknet_4_3_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[31]$_SDFFE_PN0P_  (.D(_0162_),
    .Q(\control_reg[31] ),
    .CLK(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[3]$_SDFFE_PN0P_  (.D(_0096_),
    .Q(\control_reg[3] ),
    .CLK(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[4]$_SDFFE_PN0P_  (.D(_0095_),
    .Q(\control_reg[4] ),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[5]$_SDFFE_PN0P_  (.D(_0094_),
    .Q(\control_reg[5] ),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[6]$_SDFFE_PN0P_  (.D(_0093_),
    .Q(\control_reg[6] ),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[7]$_SDFFE_PN0P_  (.D(_0159_),
    .Q(\control_reg[7] ),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[8]$_SDFFE_PN0P_  (.D(_0106_),
    .Q(\control_reg[8] ),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \control_reg[9]$_SDFFE_PN0P_  (.D(_0105_),
    .Q(\control_reg[9] ),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__buf_2 input1 (.A(aresetn),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input10 (.A(s_axi_araddr[17]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input100 (.A(s_axi_wdata[8]),
    .X(net100));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input101 (.A(s_axi_wdata[9]),
    .X(net101));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input102 (.A(s_axi_wstrb[0]),
    .X(net102));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input103 (.A(s_axi_wstrb[1]),
    .X(net103));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input104 (.A(s_axi_wstrb[2]),
    .X(net104));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input105 (.A(s_axi_wstrb[3]),
    .X(net105));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input106 (.A(s_axi_wvalid),
    .X(net106));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input11 (.A(s_axi_araddr[18]),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input12 (.A(s_axi_araddr[19]),
    .X(net12));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input13 (.A(s_axi_araddr[1]),
    .X(net13));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input14 (.A(s_axi_araddr[20]),
    .X(net14));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input15 (.A(s_axi_araddr[21]),
    .X(net15));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input16 (.A(s_axi_araddr[22]),
    .X(net16));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input17 (.A(s_axi_araddr[23]),
    .X(net17));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input18 (.A(s_axi_araddr[24]),
    .X(net18));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input19 (.A(s_axi_araddr[25]),
    .X(net19));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input2 (.A(s_axi_araddr[0]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input20 (.A(s_axi_araddr[26]),
    .X(net20));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input21 (.A(s_axi_araddr[27]),
    .X(net21));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input22 (.A(s_axi_araddr[28]),
    .X(net22));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input23 (.A(s_axi_araddr[29]),
    .X(net23));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input24 (.A(s_axi_araddr[2]),
    .X(net24));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input25 (.A(s_axi_araddr[30]),
    .X(net25));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input26 (.A(s_axi_araddr[31]),
    .X(net26));
 sky130_fd_sc_hd__buf_2 input27 (.A(s_axi_araddr[3]),
    .X(net27));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input28 (.A(s_axi_araddr[4]),
    .X(net28));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input29 (.A(s_axi_araddr[5]),
    .X(net29));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(s_axi_araddr[10]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input30 (.A(s_axi_araddr[6]),
    .X(net30));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input31 (.A(s_axi_araddr[7]),
    .X(net31));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input32 (.A(s_axi_araddr[8]),
    .X(net32));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input33 (.A(s_axi_araddr[9]),
    .X(net33));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input34 (.A(s_axi_arvalid),
    .X(net34));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input35 (.A(s_axi_awaddr[0]),
    .X(net35));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input36 (.A(s_axi_awaddr[10]),
    .X(net36));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input37 (.A(s_axi_awaddr[11]),
    .X(net37));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input38 (.A(s_axi_awaddr[12]),
    .X(net38));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input39 (.A(s_axi_awaddr[13]),
    .X(net39));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(s_axi_araddr[11]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input40 (.A(s_axi_awaddr[14]),
    .X(net40));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input41 (.A(s_axi_awaddr[15]),
    .X(net41));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input42 (.A(s_axi_awaddr[16]),
    .X(net42));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input43 (.A(s_axi_awaddr[17]),
    .X(net43));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input44 (.A(s_axi_awaddr[18]),
    .X(net44));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input45 (.A(s_axi_awaddr[19]),
    .X(net45));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input46 (.A(s_axi_awaddr[1]),
    .X(net46));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input47 (.A(s_axi_awaddr[20]),
    .X(net47));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input48 (.A(s_axi_awaddr[21]),
    .X(net48));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input49 (.A(s_axi_awaddr[22]),
    .X(net49));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(s_axi_araddr[12]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input50 (.A(s_axi_awaddr[23]),
    .X(net50));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input51 (.A(s_axi_awaddr[24]),
    .X(net51));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input52 (.A(s_axi_awaddr[25]),
    .X(net52));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input53 (.A(s_axi_awaddr[26]),
    .X(net53));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input54 (.A(s_axi_awaddr[27]),
    .X(net54));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input55 (.A(s_axi_awaddr[28]),
    .X(net55));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input56 (.A(s_axi_awaddr[29]),
    .X(net56));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input57 (.A(s_axi_awaddr[2]),
    .X(net57));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input58 (.A(s_axi_awaddr[30]),
    .X(net58));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input59 (.A(s_axi_awaddr[31]),
    .X(net59));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(s_axi_araddr[13]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input60 (.A(s_axi_awaddr[3]),
    .X(net60));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input61 (.A(s_axi_awaddr[4]),
    .X(net61));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input62 (.A(s_axi_awaddr[5]),
    .X(net62));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input63 (.A(s_axi_awaddr[6]),
    .X(net63));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input64 (.A(s_axi_awaddr[7]),
    .X(net64));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input65 (.A(s_axi_awaddr[8]),
    .X(net65));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input66 (.A(s_axi_awaddr[9]),
    .X(net66));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input67 (.A(s_axi_awvalid),
    .X(net67));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input68 (.A(s_axi_bready),
    .X(net68));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input69 (.A(s_axi_rready),
    .X(net69));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(s_axi_araddr[14]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input70 (.A(s_axi_wdata[0]),
    .X(net70));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input71 (.A(s_axi_wdata[10]),
    .X(net71));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input72 (.A(s_axi_wdata[11]),
    .X(net72));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input73 (.A(s_axi_wdata[12]),
    .X(net73));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input74 (.A(s_axi_wdata[13]),
    .X(net74));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input75 (.A(s_axi_wdata[14]),
    .X(net75));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input76 (.A(s_axi_wdata[15]),
    .X(net76));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input77 (.A(s_axi_wdata[16]),
    .X(net77));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input78 (.A(s_axi_wdata[17]),
    .X(net78));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input79 (.A(s_axi_wdata[18]),
    .X(net79));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(s_axi_araddr[15]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input80 (.A(s_axi_wdata[19]),
    .X(net80));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input81 (.A(s_axi_wdata[1]),
    .X(net81));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input82 (.A(s_axi_wdata[20]),
    .X(net82));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input83 (.A(s_axi_wdata[21]),
    .X(net83));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input84 (.A(s_axi_wdata[22]),
    .X(net84));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input85 (.A(s_axi_wdata[23]),
    .X(net85));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input86 (.A(s_axi_wdata[24]),
    .X(net86));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input87 (.A(s_axi_wdata[25]),
    .X(net87));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input88 (.A(s_axi_wdata[26]),
    .X(net88));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input89 (.A(s_axi_wdata[27]),
    .X(net89));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input9 (.A(s_axi_araddr[16]),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input90 (.A(s_axi_wdata[28]),
    .X(net90));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input91 (.A(s_axi_wdata[29]),
    .X(net91));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input92 (.A(s_axi_wdata[2]),
    .X(net92));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input93 (.A(s_axi_wdata[30]),
    .X(net93));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input94 (.A(s_axi_wdata[31]),
    .X(net94));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input95 (.A(s_axi_wdata[3]),
    .X(net95));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input96 (.A(s_axi_wdata[4]),
    .X(net96));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input97 (.A(s_axi_wdata[5]),
    .X(net97));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input98 (.A(s_axi_wdata[6]),
    .X(net98));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input99 (.A(s_axi_wdata[7]),
    .X(net99));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output107 (.A(net107),
    .X(s_axi_arready));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output108 (.A(net108),
    .X(s_axi_awready));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output109 (.A(net109),
    .X(s_axi_bresp[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output110 (.A(net109),
    .X(s_axi_bresp[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output111 (.A(net110),
    .X(s_axi_bvalid));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output112 (.A(net111),
    .X(s_axi_rdata[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output113 (.A(net112),
    .X(s_axi_rdata[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output114 (.A(net113),
    .X(s_axi_rdata[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output115 (.A(net114),
    .X(s_axi_rdata[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output116 (.A(net115),
    .X(s_axi_rdata[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output117 (.A(net116),
    .X(s_axi_rdata[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output118 (.A(net117),
    .X(s_axi_rdata[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output119 (.A(net118),
    .X(s_axi_rdata[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output120 (.A(net119),
    .X(s_axi_rdata[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output121 (.A(net120),
    .X(s_axi_rdata[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output122 (.A(net121),
    .X(s_axi_rdata[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output123 (.A(net122),
    .X(s_axi_rdata[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output124 (.A(net123),
    .X(s_axi_rdata[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output125 (.A(net124),
    .X(s_axi_rdata[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output126 (.A(net125),
    .X(s_axi_rdata[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output127 (.A(net126),
    .X(s_axi_rdata[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output128 (.A(net127),
    .X(s_axi_rdata[24]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output129 (.A(net128),
    .X(s_axi_rdata[25]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output130 (.A(net129),
    .X(s_axi_rdata[26]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output131 (.A(net130),
    .X(s_axi_rdata[27]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output132 (.A(net131),
    .X(s_axi_rdata[28]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output133 (.A(net132),
    .X(s_axi_rdata[29]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output134 (.A(net133),
    .X(s_axi_rdata[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output135 (.A(net134),
    .X(s_axi_rdata[30]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output136 (.A(net135),
    .X(s_axi_rdata[31]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output137 (.A(net136),
    .X(s_axi_rdata[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output138 (.A(net137),
    .X(s_axi_rdata[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output139 (.A(net138),
    .X(s_axi_rdata[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output140 (.A(net139),
    .X(s_axi_rdata[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output141 (.A(net140),
    .X(s_axi_rdata[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output142 (.A(net141),
    .X(s_axi_rdata[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output143 (.A(net142),
    .X(s_axi_rdata[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output144 (.A(net143),
    .X(s_axi_rresp[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output145 (.A(net143),
    .X(s_axi_rresp[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output146 (.A(net144),
    .X(s_axi_rvalid));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output147 (.A(net145),
    .X(s_axi_wready));
 sky130_fd_sc_hd__buf_4 place159 (.A(_0617_),
    .X(net157));
 sky130_fd_sc_hd__buf_4 place160 (.A(_0617_),
    .X(net158));
 sky130_fd_sc_hd__buf_4 place161 (.A(_0255_),
    .X(net159));
 sky130_fd_sc_hd__buf_4 place162 (.A(_0251_),
    .X(net160));
 sky130_fd_sc_hd__buf_4 place163 (.A(_0611_),
    .X(net161));
 sky130_fd_sc_hd__buf_4 place164 (.A(_0446_),
    .X(net162));
 sky130_fd_sc_hd__buf_4 place165 (.A(_0340_),
    .X(net163));
 sky130_fd_sc_hd__buf_4 place166 (.A(_0334_),
    .X(net164));
 sky130_fd_sc_hd__buf_4 place167 (.A(w_pending),
    .X(net165));
 sky130_fd_sc_hd__buf_4 place168 (.A(_0258_),
    .X(net166));
 sky130_fd_sc_hd__buf_4 place169 (.A(net1),
    .X(net167));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_bresp[0]$_SDFFE_PN0P_  (.D(_0153_),
    .Q(net109),
    .CLK(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_bvalid$_SDFFE_PN0P_  (.D(_0165_),
    .Q(net110),
    .CLK(clknet_4_0_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[0]$_SDFFE_PN0P_  (.D(_0152_),
    .Q(net111),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[10]$_SDFFE_PN0P_  (.D(_0142_),
    .Q(net112),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[11]$_SDFFE_PN0P_  (.D(_0141_),
    .Q(net113),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[12]$_SDFFE_PN0P_  (.D(_0140_),
    .Q(net114),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[13]$_SDFFE_PN0P_  (.D(_0139_),
    .Q(net115),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[14]$_SDFFE_PN0P_  (.D(_0138_),
    .Q(net116),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[15]$_SDFFE_PN0P_  (.D(_0137_),
    .Q(net117),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[16]$_SDFFE_PN0P_  (.D(_0136_),
    .Q(net118),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[17]$_SDFFE_PN0P_  (.D(_0135_),
    .Q(net119),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[18]$_SDFFE_PN0P_  (.D(_0134_),
    .Q(net120),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[19]$_SDFFE_PN0P_  (.D(_0133_),
    .Q(net121),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[1]$_SDFFE_PN0P_  (.D(_0151_),
    .Q(net122),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[20]$_SDFFE_PN0P_  (.D(_0132_),
    .Q(net123),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[21]$_SDFFE_PN0P_  (.D(_0131_),
    .Q(net124),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[22]$_SDFFE_PN0P_  (.D(_0130_),
    .Q(net125),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[23]$_SDFFE_PN0P_  (.D(_0129_),
    .Q(net126),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[24]$_SDFFE_PN0P_  (.D(_0128_),
    .Q(net127),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[25]$_SDFFE_PN0P_  (.D(_0127_),
    .Q(net128),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[26]$_SDFFE_PN0P_  (.D(_0126_),
    .Q(net129),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[27]$_SDFFE_PN0P_  (.D(_0125_),
    .Q(net130),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[28]$_SDFFE_PN0P_  (.D(_0124_),
    .Q(net131),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[29]$_SDFFE_PN0P_  (.D(_0123_),
    .Q(net132),
    .CLK(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[2]$_SDFFE_PN0P_  (.D(_0150_),
    .Q(net133),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[30]$_SDFFE_PN0P_  (.D(_0122_),
    .Q(net134),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[31]$_SDFFE_PN0P_  (.D(_0164_),
    .Q(net135),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[3]$_SDFFE_PN0P_  (.D(_0149_),
    .Q(net136),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[4]$_SDFFE_PN0P_  (.D(_0148_),
    .Q(net137),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[5]$_SDFFE_PN0P_  (.D(_0147_),
    .Q(net138),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[6]$_SDFFE_PN0P_  (.D(_0146_),
    .Q(net139),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[7]$_SDFFE_PN0P_  (.D(_0145_),
    .Q(net140),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[8]$_SDFFE_PN0P_  (.D(_0144_),
    .Q(net141),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rdata[9]$_SDFFE_PN0P_  (.D(_0143_),
    .Q(net142),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rresp[0]$_SDFFE_PN0P_  (.D(_0121_),
    .Q(net143),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \s_axi_rvalid$_SDFFE_PN0P_  (.D(_0163_),
    .Q(net144),
    .CLK(clknet_4_4_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[0]$_SDFFE_PN0P_  (.D(_0071_),
    .Q(\scratch_reg[0] ),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[10]$_SDFFE_PN0P_  (.D(_0076_),
    .Q(\scratch_reg[10] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[11]$_SDFFE_PN0P_  (.D(_0075_),
    .Q(\scratch_reg[11] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[12]$_SDFFE_PN0P_  (.D(_0074_),
    .Q(\scratch_reg[12] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[13]$_SDFFE_PN0P_  (.D(_0073_),
    .Q(\scratch_reg[13] ),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[14]$_SDFFE_PN0P_  (.D(_0072_),
    .Q(\scratch_reg[14] ),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[15]$_SDFFE_PN0P_  (.D(_0156_),
    .Q(\scratch_reg[15] ),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[16]$_SDFFE_PN0P_  (.D(_0085_),
    .Q(\scratch_reg[16] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[17]$_SDFFE_PN0P_  (.D(_0084_),
    .Q(\scratch_reg[17] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[18]$_SDFFE_PN0P_  (.D(_0083_),
    .Q(\scratch_reg[18] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[19]$_SDFFE_PN0P_  (.D(_0082_),
    .Q(\scratch_reg[19] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[1]$_SDFFE_PN0P_  (.D(_0070_),
    .Q(\scratch_reg[1] ),
    .CLK(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[20]$_SDFFE_PN0P_  (.D(_0081_),
    .Q(\scratch_reg[20] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[21]$_SDFFE_PN0P_  (.D(_0080_),
    .Q(\scratch_reg[21] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[22]$_SDFFE_PN0P_  (.D(_0079_),
    .Q(\scratch_reg[22] ),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[23]$_SDFFE_PN0P_  (.D(_0157_),
    .Q(\scratch_reg[23] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[24]$_SDFFE_PN0P_  (.D(_0092_),
    .Q(\scratch_reg[24] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[25]$_SDFFE_PN0P_  (.D(_0091_),
    .Q(\scratch_reg[25] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[26]$_SDFFE_PN0P_  (.D(_0090_),
    .Q(\scratch_reg[26] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[27]$_SDFFE_PN0P_  (.D(_0089_),
    .Q(\scratch_reg[27] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[28]$_SDFFE_PN0P_  (.D(_0088_),
    .Q(\scratch_reg[28] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[29]$_SDFFE_PN0P_  (.D(_0087_),
    .Q(\scratch_reg[29] ),
    .CLK(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[2]$_SDFFE_PN0P_  (.D(_0069_),
    .Q(\scratch_reg[2] ),
    .CLK(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[30]$_SDFFE_PN0P_  (.D(_0086_),
    .Q(\scratch_reg[30] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[31]$_SDFFE_PN0P_  (.D(_0158_),
    .Q(\scratch_reg[31] ),
    .CLK(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[3]$_SDFFE_PN0P_  (.D(_0068_),
    .Q(\scratch_reg[3] ),
    .CLK(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[4]$_SDFFE_PN0P_  (.D(_0067_),
    .Q(\scratch_reg[4] ),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[5]$_SDFFE_PN0P_  (.D(_0066_),
    .Q(\scratch_reg[5] ),
    .CLK(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[6]$_SDFFE_PN0P_  (.D(_0065_),
    .Q(\scratch_reg[6] ),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[7]$_SDFFE_PN0P_  (.D(_0155_),
    .Q(\scratch_reg[7] ),
    .CLK(clknet_4_12_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[8]$_SDFFE_PN0P_  (.D(_0078_),
    .Q(\scratch_reg[8] ),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \scratch_reg[9]$_SDFFE_PN0P_  (.D(_0077_),
    .Q(\scratch_reg[9] ),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_2 \w_pending$_SDFFE_PP0P_  (.D(_0169_),
    .Q(w_pending),
    .CLK(clknet_4_1_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[0]$_SDFFE_PN0P_  (.D(_0033_),
    .Q(\wdata_q[0] ),
    .CLK(clknet_4_3_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[10]$_SDFFE_PN0P_  (.D(_0023_),
    .Q(\wdata_q[10] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[11]$_SDFFE_PN0P_  (.D(_0022_),
    .Q(\wdata_q[11] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[12]$_SDFFE_PN0P_  (.D(_0021_),
    .Q(\wdata_q[12] ),
    .CLK(clknet_4_15_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[13]$_SDFFE_PN0P_  (.D(_0020_),
    .Q(\wdata_q[13] ),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[14]$_SDFFE_PN0P_  (.D(_0019_),
    .Q(\wdata_q[14] ),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[15]$_SDFFE_PN0P_  (.D(_0018_),
    .Q(\wdata_q[15] ),
    .CLK(clknet_4_14_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[16]$_SDFFE_PN0P_  (.D(_0017_),
    .Q(\wdata_q[16] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[17]$_SDFFE_PN0P_  (.D(_0016_),
    .Q(\wdata_q[17] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[18]$_SDFFE_PN0P_  (.D(_0015_),
    .Q(\wdata_q[18] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[19]$_SDFFE_PN0P_  (.D(_0014_),
    .Q(\wdata_q[19] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[1]$_SDFFE_PN0P_  (.D(_0032_),
    .Q(\wdata_q[1] ),
    .CLK(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[20]$_SDFFE_PN0P_  (.D(_0013_),
    .Q(\wdata_q[20] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[21]$_SDFFE_PN0P_  (.D(_0012_),
    .Q(\wdata_q[21] ),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[22]$_SDFFE_PN0P_  (.D(_0011_),
    .Q(\wdata_q[22] ),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[23]$_SDFFE_PN0P_  (.D(_0010_),
    .Q(\wdata_q[23] ),
    .CLK(clknet_4_11_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[24]$_SDFFE_PN0P_  (.D(_0009_),
    .Q(\wdata_q[24] ),
    .CLK(clknet_4_10_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[25]$_SDFFE_PN0P_  (.D(_0008_),
    .Q(\wdata_q[25] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[26]$_SDFFE_PN0P_  (.D(_0007_),
    .Q(\wdata_q[26] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[27]$_SDFFE_PN0P_  (.D(_0006_),
    .Q(\wdata_q[27] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[28]$_SDFFE_PN0P_  (.D(_0005_),
    .Q(\wdata_q[28] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[29]$_SDFFE_PN0P_  (.D(_0004_),
    .Q(\wdata_q[29] ),
    .CLK(clknet_4_8_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[2]$_SDFFE_PN0P_  (.D(_0031_),
    .Q(\wdata_q[2] ),
    .CLK(clknet_4_5_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[30]$_SDFFE_PN0P_  (.D(_0003_),
    .Q(\wdata_q[30] ),
    .CLK(clknet_4_3_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[31]$_SDFFE_PN0P_  (.D(_0168_),
    .Q(\wdata_q[31] ),
    .CLK(clknet_4_2_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[3]$_SDFFE_PN0P_  (.D(_0030_),
    .Q(\wdata_q[3] ),
    .CLK(clknet_4_6_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[4]$_SDFFE_PN0P_  (.D(_0029_),
    .Q(\wdata_q[4] ),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[5]$_SDFFE_PN0P_  (.D(_0028_),
    .Q(\wdata_q[5] ),
    .CLK(clknet_4_7_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[6]$_SDFFE_PN0P_  (.D(_0027_),
    .Q(\wdata_q[6] ),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[7]$_SDFFE_PN0P_  (.D(_0026_),
    .Q(\wdata_q[7] ),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[8]$_SDFFE_PN0P_  (.D(_0025_),
    .Q(\wdata_q[8] ),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wdata_q[9]$_SDFFE_PN0P_  (.D(_0024_),
    .Q(\wdata_q[9] ),
    .CLK(clknet_4_13_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wstrb_q[0]$_SDFFE_PN0P_  (.D(_0002_),
    .Q(\wstrb_q[0] ),
    .CLK(clknet_4_9_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wstrb_q[1]$_SDFFE_PN0P_  (.D(_0001_),
    .Q(\wstrb_q[1] ),
    .CLK(clknet_4_3_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wstrb_q[2]$_SDFFE_PN0P_  (.D(_0000_),
    .Q(\wstrb_q[2] ),
    .CLK(clknet_4_3_0_aclk));
 sky130_fd_sc_hd__dfxtp_1 \wstrb_q[3]$_SDFFE_PN0P_  (.D(_0166_),
    .Q(\wstrb_q[3] ),
    .CLK(clknet_4_3_0_aclk));
endmodule
