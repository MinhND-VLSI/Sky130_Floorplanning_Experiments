module acc32_sram (clk,
    rst,
    wr_en,
    acc_out,
    wr_addr,
    wr_data);
 input clk;
 input rst;
 input wr_en;
 output [31:0] acc_out;
 input [7:0] wr_addr;
 input [31:0] wr_data;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire _245_;
 wire _246_;
 wire _247_;
 wire _248_;
 wire _249_;
 wire _250_;
 wire _251_;
 wire _252_;
 wire _253_;
 wire _254_;
 wire _255_;
 wire _256_;
 wire _257_;
 wire _258_;
 wire _259_;
 wire _260_;
 wire _261_;
 wire _262_;
 wire _263_;
 wire _264_;
 wire _265_;
 wire _266_;
 wire _267_;
 wire _268_;
 wire _269_;
 wire _270_;
 wire _271_;
 wire _272_;
 wire _273_;
 wire _274_;
 wire _275_;
 wire _276_;
 wire _277_;
 wire _278_;
 wire _279_;
 wire _280_;
 wire _281_;
 wire _282_;
 wire \acc_core.adder.cla_blocks[0].block.p[0] ;
 wire \acc_core.adder.cla_blocks[0].block.sum[1] ;
 wire \acc_core.adder.cla_blocks[0].block.sum[2] ;
 wire \acc_core.adder.cla_blocks[0].block.sum[3] ;
 wire \acc_core.adder.cla_blocks[1].block.sum[0] ;
 wire \acc_core.adder.cla_blocks[1].block.sum[1] ;
 wire \acc_core.adder.cla_blocks[1].block.sum[2] ;
 wire \acc_core.adder.cla_blocks[1].block.sum[3] ;
 wire \acc_core.adder.cla_blocks[2].block.sum[0] ;
 wire \acc_core.adder.cla_blocks[2].block.sum[1] ;
 wire \acc_core.adder.cla_blocks[2].block.sum[2] ;
 wire \acc_core.adder.cla_blocks[2].block.sum[3] ;
 wire \acc_core.adder.cla_blocks[3].block.sum[0] ;
 wire \acc_core.adder.cla_blocks[3].block.sum[1] ;
 wire \acc_core.adder.cla_blocks[3].block.sum[2] ;
 wire \acc_core.adder.cla_blocks[3].block.sum[3] ;
 wire \acc_core.adder.cla_blocks[4].block.sum[0] ;
 wire \acc_core.adder.cla_blocks[4].block.sum[1] ;
 wire \acc_core.adder.cla_blocks[4].block.sum[2] ;
 wire \acc_core.adder.cla_blocks[4].block.sum[3] ;
 wire \acc_core.adder.cla_blocks[5].block.sum[0] ;
 wire \acc_core.adder.cla_blocks[5].block.sum[1] ;
 wire \acc_core.adder.cla_blocks[5].block.sum[2] ;
 wire \acc_core.adder.cla_blocks[5].block.sum[3] ;
 wire \acc_core.adder.cla_blocks[6].block.sum[0] ;
 wire \acc_core.adder.cla_blocks[6].block.sum[1] ;
 wire \acc_core.adder.cla_blocks[6].block.sum[2] ;
 wire \acc_core.adder.cla_blocks[6].block.sum[3] ;
 wire \acc_core.adder.cla_blocks[7].block.sum[0] ;
 wire \acc_core.adder.cla_blocks[7].block.sum[1] ;
 wire \acc_core.adder.cla_blocks[7].block.sum[2] ;
 wire \acc_core.adder.cla_blocks[7].block.sum[3] ;
 wire \addr0[0] ;
 wire \addr0[1] ;
 wire \addr0[2] ;
 wire \addr0[3] ;
 wire \addr0[4] ;
 wire \addr0[5] ;
 wire \addr0[6] ;
 wire \addr0[7] ;
 wire \dout0[0] ;
 wire \dout0[10] ;
 wire \dout0[11] ;
 wire \dout0[12] ;
 wire \dout0[13] ;
 wire \dout0[14] ;
 wire \dout0[15] ;
 wire \dout0[16] ;
 wire \dout0[17] ;
 wire \dout0[18] ;
 wire \dout0[19] ;
 wire \dout0[1] ;
 wire \dout0[20] ;
 wire \dout0[21] ;
 wire \dout0[22] ;
 wire \dout0[23] ;
 wire \dout0[24] ;
 wire \dout0[25] ;
 wire \dout0[26] ;
 wire \dout0[27] ;
 wire \dout0[28] ;
 wire \dout0[29] ;
 wire \dout0[2] ;
 wire \dout0[30] ;
 wire \dout0[31] ;
 wire \dout0[3] ;
 wire \dout0[4] ;
 wire \dout0[5] ;
 wire \dout0[6] ;
 wire \dout0[7] ;
 wire \dout0[8] ;
 wire \dout0[9] ;
 wire \dout0_q[0] ;
 wire \dout0_q[10] ;
 wire \dout0_q[11] ;
 wire \dout0_q[12] ;
 wire \dout0_q[13] ;
 wire \dout0_q[14] ;
 wire \dout0_q[15] ;
 wire \dout0_q[16] ;
 wire \dout0_q[17] ;
 wire \dout0_q[18] ;
 wire \dout0_q[19] ;
 wire \dout0_q[1] ;
 wire \dout0_q[20] ;
 wire \dout0_q[21] ;
 wire \dout0_q[22] ;
 wire \dout0_q[23] ;
 wire \dout0_q[24] ;
 wire \dout0_q[25] ;
 wire \dout0_q[26] ;
 wire \dout0_q[27] ;
 wire \dout0_q[28] ;
 wire \dout0_q[29] ;
 wire \dout0_q[2] ;
 wire \dout0_q[30] ;
 wire \dout0_q[31] ;
 wire \dout0_q[3] ;
 wire \dout0_q[4] ;
 wire \dout0_q[5] ;
 wire \dout0_q[6] ;
 wire \dout0_q[7] ;
 wire \dout0_q[8] ;
 wire \dout0_q[9] ;
 wire \rd_addr[0] ;
 wire \rd_addr[1] ;
 wire \rd_addr[2] ;
 wire \rd_addr[3] ;
 wire \rd_addr[4] ;
 wire \rd_addr[5] ;
 wire \rd_addr[6] ;
 wire \rd_addr[7] ;
 wire \unused_dout1[0] ;
 wire \unused_dout1[10] ;
 wire \unused_dout1[11] ;
 wire \unused_dout1[12] ;
 wire \unused_dout1[13] ;
 wire \unused_dout1[14] ;
 wire \unused_dout1[15] ;
 wire \unused_dout1[16] ;
 wire \unused_dout1[17] ;
 wire \unused_dout1[18] ;
 wire \unused_dout1[19] ;
 wire \unused_dout1[1] ;
 wire \unused_dout1[20] ;
 wire \unused_dout1[21] ;
 wire \unused_dout1[22] ;
 wire \unused_dout1[23] ;
 wire \unused_dout1[24] ;
 wire \unused_dout1[25] ;
 wire \unused_dout1[26] ;
 wire \unused_dout1[27] ;
 wire \unused_dout1[28] ;
 wire \unused_dout1[29] ;
 wire \unused_dout1[2] ;
 wire \unused_dout1[30] ;
 wire \unused_dout1[31] ;
 wire \unused_dout1[3] ;
 wire \unused_dout1[4] ;
 wire \unused_dout1[5] ;
 wire \unused_dout1[6] ;
 wire \unused_dout1[7] ;
 wire \unused_dout1[8] ;
 wire \unused_dout1[9] ;
 wire valid_d1;
 wire valid_d2;
 wire web0;

 sky130_fd_sc_hd__inv_2 _283_ (.A(wr_en),
    .Y(web0));
 sky130_fd_sc_hd__inv_2 _284_ (.A(rst),
    .Y(_000_));
 sky130_fd_sc_hd__nand2_2 _285_ (.A(web0),
    .B(\rd_addr[0] ),
    .Y(_082_));
 sky130_fd_sc_hd__and4_2 _286_ (.A(web0),
    .B(\rd_addr[2] ),
    .C(\rd_addr[1] ),
    .D(\rd_addr[0] ),
    .X(_083_));
 sky130_fd_sc_hd__and3_2 _287_ (.A(\rd_addr[4] ),
    .B(\rd_addr[3] ),
    .C(_083_),
    .X(_084_));
 sky130_fd_sc_hd__and3_2 _288_ (.A(\rd_addr[6] ),
    .B(\rd_addr[5] ),
    .C(_084_),
    .X(_085_));
 sky130_fd_sc_hd__xor2_2 _289_ (.A(\rd_addr[7] ),
    .B(_085_),
    .X(_081_));
 sky130_fd_sc_hd__a21o_2 _290_ (.A1(\rd_addr[5] ),
    .A2(_084_),
    .B1(\rd_addr[6] ),
    .X(_086_));
 sky130_fd_sc_hd__and2b_2 _291_ (.A_N(_085_),
    .B(_086_),
    .X(_080_));
 sky130_fd_sc_hd__xor2_2 _292_ (.A(\rd_addr[5] ),
    .B(_084_),
    .X(_079_));
 sky130_fd_sc_hd__a21oi_2 _293_ (.A1(\rd_addr[3] ),
    .A2(_083_),
    .B1(\rd_addr[4] ),
    .Y(_087_));
 sky130_fd_sc_hd__nor2_2 _294_ (.A(_084_),
    .B(_087_),
    .Y(_078_));
 sky130_fd_sc_hd__xor2_2 _295_ (.A(\rd_addr[3] ),
    .B(_083_),
    .X(_077_));
 sky130_fd_sc_hd__a31o_2 _296_ (.A1(web0),
    .A2(\rd_addr[1] ),
    .A3(\rd_addr[0] ),
    .B1(\rd_addr[2] ),
    .X(_088_));
 sky130_fd_sc_hd__and2b_2 _297_ (.A_N(_083_),
    .B(_088_),
    .X(_076_));
 sky130_fd_sc_hd__xnor2_2 _298_ (.A(\rd_addr[1] ),
    .B(_082_),
    .Y(_075_));
 sky130_fd_sc_hd__xnor2_2 _299_ (.A(wr_en),
    .B(\rd_addr[0] ),
    .Y(_074_));
 sky130_fd_sc_hd__a21o_2 _300_ (.A1(valid_d2),
    .A2(\dout0_q[29] ),
    .B1(acc_out[29]),
    .X(_089_));
 sky130_fd_sc_hd__inv_2 _301_ (.A(_089_),
    .Y(_090_));
 sky130_fd_sc_hd__and3_2 _302_ (.A(valid_d2),
    .B(\dout0_q[29] ),
    .C(acc_out[29]),
    .X(_091_));
 sky130_fd_sc_hd__and3_2 _303_ (.A(valid_d2),
    .B(\dout0_q[28] ),
    .C(acc_out[28]),
    .X(_092_));
 sky130_fd_sc_hd__a21oi_2 _304_ (.A1(valid_d2),
    .A2(\dout0_q[28] ),
    .B1(acc_out[28]),
    .Y(_093_));
 sky130_fd_sc_hd__or2_2 _305_ (.A(_092_),
    .B(_093_),
    .X(_094_));
 sky130_fd_sc_hd__inv_2 _306_ (.A(_094_),
    .Y(_095_));
 sky130_fd_sc_hd__and3_2 _307_ (.A(valid_d2),
    .B(acc_out[25]),
    .C(\dout0_q[25] ),
    .X(_096_));
 sky130_fd_sc_hd__inv_2 _308_ (.A(_096_),
    .Y(_097_));
 sky130_fd_sc_hd__a21oi_2 _309_ (.A1(valid_d2),
    .A2(\dout0_q[25] ),
    .B1(acc_out[25]),
    .Y(_098_));
 sky130_fd_sc_hd__or2_2 _310_ (.A(_096_),
    .B(_098_),
    .X(_099_));
 sky130_fd_sc_hd__and3_2 _311_ (.A(valid_d2),
    .B(\dout0_q[27] ),
    .C(acc_out[27]),
    .X(_100_));
 sky130_fd_sc_hd__a21oi_2 _312_ (.A1(valid_d2),
    .A2(\dout0_q[27] ),
    .B1(acc_out[27]),
    .Y(_101_));
 sky130_fd_sc_hd__nor2_2 _313_ (.A(_100_),
    .B(_101_),
    .Y(_102_));
 sky130_fd_sc_hd__inv_2 _314_ (.A(_102_),
    .Y(_103_));
 sky130_fd_sc_hd__and3_2 _315_ (.A(valid_d2),
    .B(\dout0_q[26] ),
    .C(acc_out[26]),
    .X(_104_));
 sky130_fd_sc_hd__a21oi_2 _316_ (.A1(valid_d2),
    .A2(\dout0_q[26] ),
    .B1(acc_out[26]),
    .Y(_105_));
 sky130_fd_sc_hd__or2_2 _317_ (.A(_104_),
    .B(_105_),
    .X(_106_));
 sky130_fd_sc_hd__or2_2 _318_ (.A(_099_),
    .B(_106_),
    .X(_107_));
 sky130_fd_sc_hd__nor2_2 _319_ (.A(_097_),
    .B(_106_),
    .Y(_108_));
 sky130_fd_sc_hd__and2b_2 _320_ (.A_N(_101_),
    .B(_104_),
    .X(_109_));
 sky130_fd_sc_hd__a211o_2 _321_ (.A1(_102_),
    .A2(_108_),
    .B1(_109_),
    .C1(_100_),
    .X(_110_));
 sky130_fd_sc_hd__o21bai_2 _322_ (.A1(_103_),
    .A2(_107_),
    .B1_N(_110_),
    .Y(_111_));
 sky130_fd_sc_hd__and3_2 _323_ (.A(valid_d2),
    .B(acc_out[24]),
    .C(\dout0_q[24] ),
    .X(_112_));
 sky130_fd_sc_hd__a21oi_2 _324_ (.A1(valid_d2),
    .A2(\dout0_q[24] ),
    .B1(acc_out[24]),
    .Y(_113_));
 sky130_fd_sc_hd__or2_2 _325_ (.A(_112_),
    .B(_113_),
    .X(_114_));
 sky130_fd_sc_hd__a21oi_2 _326_ (.A1(valid_d2),
    .A2(\dout0_q[17] ),
    .B1(acc_out[17]),
    .Y(_115_));
 sky130_fd_sc_hd__and3_2 _327_ (.A(valid_d2),
    .B(acc_out[17]),
    .C(\dout0_q[17] ),
    .X(_116_));
 sky130_fd_sc_hd__or2_2 _328_ (.A(_115_),
    .B(_116_),
    .X(_117_));
 sky130_fd_sc_hd__and3_2 _329_ (.A(valid_d2),
    .B(\dout0_q[19] ),
    .C(acc_out[19]),
    .X(_118_));
 sky130_fd_sc_hd__a21oi_2 _330_ (.A1(valid_d2),
    .A2(\dout0_q[19] ),
    .B1(acc_out[19]),
    .Y(_119_));
 sky130_fd_sc_hd__or2_2 _331_ (.A(_118_),
    .B(_119_),
    .X(_120_));
 sky130_fd_sc_hd__a21oi_2 _332_ (.A1(valid_d2),
    .A2(\dout0_q[18] ),
    .B1(acc_out[18]),
    .Y(_121_));
 sky130_fd_sc_hd__inv_2 _333_ (.A(_121_),
    .Y(_122_));
 sky130_fd_sc_hd__and3_2 _334_ (.A(valid_d2),
    .B(\dout0_q[18] ),
    .C(acc_out[18]),
    .X(_123_));
 sky130_fd_sc_hd__or2_2 _335_ (.A(_121_),
    .B(_123_),
    .X(_124_));
 sky130_fd_sc_hd__or2_2 _336_ (.A(_120_),
    .B(_124_),
    .X(_125_));
 sky130_fd_sc_hd__inv_2 _337_ (.A(_125_),
    .Y(_126_));
 sky130_fd_sc_hd__and2b_2 _338_ (.A_N(_119_),
    .B(_123_),
    .X(_127_));
 sky130_fd_sc_hd__a211o_2 _339_ (.A1(_116_),
    .A2(_126_),
    .B1(_127_),
    .C1(_118_),
    .X(_128_));
 sky130_fd_sc_hd__o21ba_2 _340_ (.A1(_117_),
    .A2(_125_),
    .B1_N(_128_),
    .X(_129_));
 sky130_fd_sc_hd__nand3_2 _341_ (.A(valid_d2),
    .B(acc_out[16]),
    .C(\dout0_q[16] ),
    .Y(_130_));
 sky130_fd_sc_hd__a21o_2 _342_ (.A1(valid_d2),
    .A2(\dout0_q[16] ),
    .B1(acc_out[16]),
    .X(_131_));
 sky130_fd_sc_hd__nand2_2 _343_ (.A(_130_),
    .B(_131_),
    .Y(_132_));
 sky130_fd_sc_hd__a21oi_2 _344_ (.A1(valid_d2),
    .A2(\dout0_q[13] ),
    .B1(acc_out[13]),
    .Y(_133_));
 sky130_fd_sc_hd__and3_2 _345_ (.A(valid_d2),
    .B(acc_out[13]),
    .C(\dout0_q[13] ),
    .X(_134_));
 sky130_fd_sc_hd__or2_2 _346_ (.A(_133_),
    .B(_134_),
    .X(_135_));
 sky130_fd_sc_hd__and3_2 _347_ (.A(valid_d2),
    .B(\dout0_q[15] ),
    .C(acc_out[15]),
    .X(_136_));
 sky130_fd_sc_hd__a21oi_2 _348_ (.A1(valid_d2),
    .A2(\dout0_q[15] ),
    .B1(acc_out[15]),
    .Y(_137_));
 sky130_fd_sc_hd__inv_2 _349_ (.A(_137_),
    .Y(_138_));
 sky130_fd_sc_hd__or2_2 _350_ (.A(_136_),
    .B(_137_),
    .X(_139_));
 sky130_fd_sc_hd__a21oi_2 _351_ (.A1(valid_d2),
    .A2(\dout0_q[14] ),
    .B1(acc_out[14]),
    .Y(_140_));
 sky130_fd_sc_hd__inv_2 _352_ (.A(_140_),
    .Y(_141_));
 sky130_fd_sc_hd__and3_2 _353_ (.A(valid_d2),
    .B(\dout0_q[14] ),
    .C(acc_out[14]),
    .X(_142_));
 sky130_fd_sc_hd__or2_2 _354_ (.A(_140_),
    .B(_142_),
    .X(_143_));
 sky130_fd_sc_hd__or2_2 _355_ (.A(_139_),
    .B(_143_),
    .X(_144_));
 sky130_fd_sc_hd__or4b_2 _356_ (.A(_136_),
    .B(_137_),
    .C(_143_),
    .D_N(_134_),
    .X(_145_));
 sky130_fd_sc_hd__a21oi_2 _357_ (.A1(_138_),
    .A2(_142_),
    .B1(_136_),
    .Y(_146_));
 sky130_fd_sc_hd__o211a_2 _358_ (.A1(_135_),
    .A2(_144_),
    .B1(_145_),
    .C1(_146_),
    .X(_147_));
 sky130_fd_sc_hd__nand3_2 _359_ (.A(valid_d2),
    .B(acc_out[12]),
    .C(\dout0_q[12] ),
    .Y(_148_));
 sky130_fd_sc_hd__a21o_2 _360_ (.A1(valid_d2),
    .A2(\dout0_q[12] ),
    .B1(acc_out[12]),
    .X(_149_));
 sky130_fd_sc_hd__nand2_2 _361_ (.A(_148_),
    .B(_149_),
    .Y(_150_));
 sky130_fd_sc_hd__and3_2 _362_ (.A(valid_d2),
    .B(\dout0_q[11] ),
    .C(acc_out[11]),
    .X(_151_));
 sky130_fd_sc_hd__a21o_2 _363_ (.A1(valid_d2),
    .A2(\dout0_q[11] ),
    .B1(acc_out[11]),
    .X(_152_));
 sky130_fd_sc_hd__nand2b_2 _364_ (.A_N(_151_),
    .B(_152_),
    .Y(_153_));
 sky130_fd_sc_hd__and3_2 _365_ (.A(valid_d2),
    .B(\dout0_q[10] ),
    .C(acc_out[10]),
    .X(_154_));
 sky130_fd_sc_hd__a21o_2 _366_ (.A1(valid_d2),
    .A2(\dout0_q[10] ),
    .B1(acc_out[10]),
    .X(_155_));
 sky130_fd_sc_hd__nand2b_2 _367_ (.A_N(_154_),
    .B(_155_),
    .Y(_156_));
 sky130_fd_sc_hd__or2_2 _368_ (.A(_153_),
    .B(_156_),
    .X(_157_));
 sky130_fd_sc_hd__nand3_2 _369_ (.A(valid_d2),
    .B(\dout0_q[9] ),
    .C(acc_out[9]),
    .Y(_158_));
 sky130_fd_sc_hd__a21oi_2 _370_ (.A1(_152_),
    .A2(_154_),
    .B1(_151_),
    .Y(_159_));
 sky130_fd_sc_hd__o21a_2 _371_ (.A1(_157_),
    .A2(_158_),
    .B1(_159_),
    .X(_160_));
 sky130_fd_sc_hd__a21o_2 _372_ (.A1(valid_d2),
    .A2(\dout0_q[9] ),
    .B1(acc_out[9]),
    .X(_161_));
 sky130_fd_sc_hd__nand2_2 _373_ (.A(_158_),
    .B(_161_),
    .Y(_162_));
 sky130_fd_sc_hd__or2_2 _374_ (.A(_157_),
    .B(_162_),
    .X(_163_));
 sky130_fd_sc_hd__and3_2 _375_ (.A(valid_d2),
    .B(acc_out[8]),
    .C(\dout0_q[8] ),
    .X(_164_));
 sky130_fd_sc_hd__a21oi_2 _376_ (.A1(valid_d2),
    .A2(\dout0_q[8] ),
    .B1(acc_out[8]),
    .Y(_165_));
 sky130_fd_sc_hd__or2_2 _377_ (.A(_164_),
    .B(_165_),
    .X(_166_));
 sky130_fd_sc_hd__and3_2 _378_ (.A(valid_d2),
    .B(\dout0_q[7] ),
    .C(acc_out[7]),
    .X(_167_));
 sky130_fd_sc_hd__a21oi_2 _379_ (.A1(valid_d2),
    .A2(\dout0_q[7] ),
    .B1(acc_out[7]),
    .Y(_168_));
 sky130_fd_sc_hd__a21o_2 _380_ (.A1(valid_d2),
    .A2(\dout0_q[7] ),
    .B1(acc_out[7]),
    .X(_169_));
 sky130_fd_sc_hd__or2_2 _381_ (.A(_167_),
    .B(_168_),
    .X(_170_));
 sky130_fd_sc_hd__and3_2 _382_ (.A(valid_d2),
    .B(\dout0_q[6] ),
    .C(acc_out[6]),
    .X(_171_));
 sky130_fd_sc_hd__a21oi_2 _383_ (.A1(valid_d2),
    .A2(\dout0_q[6] ),
    .B1(acc_out[6]),
    .Y(_172_));
 sky130_fd_sc_hd__nor2_2 _384_ (.A(_171_),
    .B(_172_),
    .Y(_173_));
 sky130_fd_sc_hd__or2_2 _385_ (.A(_171_),
    .B(_172_),
    .X(_174_));
 sky130_fd_sc_hd__or4_2 _386_ (.A(_167_),
    .B(_168_),
    .C(_171_),
    .D(_172_),
    .X(_175_));
 sky130_fd_sc_hd__and3_2 _387_ (.A(valid_d2),
    .B(\dout0_q[5] ),
    .C(acc_out[5]),
    .X(_176_));
 sky130_fd_sc_hd__and2b_2 _388_ (.A_N(_175_),
    .B(_176_),
    .X(_177_));
 sky130_fd_sc_hd__a211oi_2 _389_ (.A1(_169_),
    .A2(_171_),
    .B1(_177_),
    .C1(_167_),
    .Y(_178_));
 sky130_fd_sc_hd__a21oi_2 _390_ (.A1(valid_d2),
    .A2(\dout0_q[5] ),
    .B1(acc_out[5]),
    .Y(_179_));
 sky130_fd_sc_hd__nor2_2 _391_ (.A(_176_),
    .B(_179_),
    .Y(_180_));
 sky130_fd_sc_hd__or2_2 _392_ (.A(_176_),
    .B(_179_),
    .X(_181_));
 sky130_fd_sc_hd__or2_2 _393_ (.A(_175_),
    .B(_181_),
    .X(_182_));
 sky130_fd_sc_hd__and3_2 _394_ (.A(valid_d2),
    .B(\dout0_q[4] ),
    .C(acc_out[4]),
    .X(_183_));
 sky130_fd_sc_hd__a21o_2 _395_ (.A1(valid_d2),
    .A2(\dout0_q[4] ),
    .B1(acc_out[4]),
    .X(_184_));
 sky130_fd_sc_hd__nand2b_2 _396_ (.A_N(_183_),
    .B(_184_),
    .Y(_185_));
 sky130_fd_sc_hd__a21oi_2 _397_ (.A1(\dout0_q[3] ),
    .A2(valid_d2),
    .B1(acc_out[3]),
    .Y(_186_));
 sky130_fd_sc_hd__nand3_2 _398_ (.A(\dout0_q[3] ),
    .B(valid_d2),
    .C(acc_out[3]),
    .Y(_187_));
 sky130_fd_sc_hd__nand3_2 _399_ (.A(valid_d2),
    .B(\dout0_q[2] ),
    .C(acc_out[2]),
    .Y(_188_));
 sky130_fd_sc_hd__a21o_2 _400_ (.A1(valid_d2),
    .A2(\dout0_q[2] ),
    .B1(acc_out[2]),
    .X(_189_));
 sky130_fd_sc_hd__nand2_2 _401_ (.A(_188_),
    .B(_189_),
    .Y(_190_));
 sky130_fd_sc_hd__and3_2 _402_ (.A(valid_d2),
    .B(\dout0_q[1] ),
    .C(acc_out[1]),
    .X(_191_));
 sky130_fd_sc_hd__and3_2 _403_ (.A(acc_out[0]),
    .B(valid_d2),
    .C(\dout0_q[0] ),
    .X(_192_));
 sky130_fd_sc_hd__a21o_2 _404_ (.A1(valid_d2),
    .A2(\dout0_q[1] ),
    .B1(acc_out[1]),
    .X(_193_));
 sky130_fd_sc_hd__nand2b_2 _405_ (.A_N(_191_),
    .B(_193_),
    .Y(_194_));
 sky130_fd_sc_hd__a21o_2 _406_ (.A1(_192_),
    .A2(_193_),
    .B1(_191_),
    .X(_195_));
 sky130_fd_sc_hd__a21boi_2 _407_ (.A1(_189_),
    .A2(_195_),
    .B1_N(_188_),
    .Y(_196_));
 sky130_fd_sc_hd__and2b_2 _408_ (.A_N(_186_),
    .B(_187_),
    .X(_197_));
 sky130_fd_sc_hd__a21oi_2 _409_ (.A1(_187_),
    .A2(_196_),
    .B1(_186_),
    .Y(_198_));
 sky130_fd_sc_hd__a21o_2 _410_ (.A1(_184_),
    .A2(_198_),
    .B1(_183_),
    .X(_199_));
 sky130_fd_sc_hd__or3b_2 _411_ (.A(_175_),
    .B(_181_),
    .C_N(_183_),
    .X(_200_));
 sky130_fd_sc_hd__a2111o_2 _412_ (.A1(_187_),
    .A2(_196_),
    .B1(_182_),
    .C1(_185_),
    .D1(_186_),
    .X(_201_));
 sky130_fd_sc_hd__and3_2 _413_ (.A(_178_),
    .B(_200_),
    .C(_201_),
    .X(_202_));
 sky130_fd_sc_hd__o21bai_2 _414_ (.A1(_165_),
    .A2(_202_),
    .B1_N(_164_),
    .Y(_203_));
 sky130_fd_sc_hd__or3b_2 _415_ (.A(_157_),
    .B(_162_),
    .C_N(_164_),
    .X(_204_));
 sky130_fd_sc_hd__a311o_2 _416_ (.A1(_178_),
    .A2(_200_),
    .A3(_201_),
    .B1(_166_),
    .C1(_163_),
    .X(_205_));
 sky130_fd_sc_hd__and3_2 _417_ (.A(_160_),
    .B(_204_),
    .C(_205_),
    .X(_206_));
 sky130_fd_sc_hd__a31o_2 _418_ (.A1(_160_),
    .A2(_204_),
    .A3(_205_),
    .B1(_150_),
    .X(_207_));
 sky130_fd_sc_hd__and3_2 _419_ (.A(_145_),
    .B(_146_),
    .C(_148_),
    .X(_208_));
 sky130_fd_sc_hd__a21oi_2 _420_ (.A1(_207_),
    .A2(_208_),
    .B1(_147_),
    .Y(_209_));
 sky130_fd_sc_hd__a211o_2 _421_ (.A1(_207_),
    .A2(_208_),
    .B1(_132_),
    .C1(_147_),
    .X(_210_));
 sky130_fd_sc_hd__and2b_2 _422_ (.A_N(_128_),
    .B(_130_),
    .X(_211_));
 sky130_fd_sc_hd__a21oi_2 _423_ (.A1(_210_),
    .A2(_211_),
    .B1(_129_),
    .Y(_212_));
 sky130_fd_sc_hd__and3_2 _424_ (.A(valid_d2),
    .B(\dout0_q[23] ),
    .C(acc_out[23]),
    .X(_213_));
 sky130_fd_sc_hd__a21oi_2 _425_ (.A1(valid_d2),
    .A2(\dout0_q[23] ),
    .B1(acc_out[23]),
    .Y(_214_));
 sky130_fd_sc_hd__or2_2 _426_ (.A(_213_),
    .B(_214_),
    .X(_215_));
 sky130_fd_sc_hd__a21oi_2 _427_ (.A1(valid_d2),
    .A2(\dout0_q[22] ),
    .B1(acc_out[22]),
    .Y(_216_));
 sky130_fd_sc_hd__and3_2 _428_ (.A(valid_d2),
    .B(\dout0_q[22] ),
    .C(acc_out[22]),
    .X(_217_));
 sky130_fd_sc_hd__nor2_2 _429_ (.A(_216_),
    .B(_217_),
    .Y(_218_));
 sky130_fd_sc_hd__or3_2 _430_ (.A(_215_),
    .B(_216_),
    .C(_217_),
    .X(_219_));
 sky130_fd_sc_hd__inv_2 _431_ (.A(_219_),
    .Y(_220_));
 sky130_fd_sc_hd__a21oi_2 _432_ (.A1(valid_d2),
    .A2(\dout0_q[21] ),
    .B1(acc_out[21]),
    .Y(_221_));
 sky130_fd_sc_hd__and3_2 _433_ (.A(valid_d2),
    .B(acc_out[21]),
    .C(\dout0_q[21] ),
    .X(_222_));
 sky130_fd_sc_hd__or2_2 _434_ (.A(_221_),
    .B(_222_),
    .X(_223_));
 sky130_fd_sc_hd__nor2_2 _435_ (.A(_219_),
    .B(_223_),
    .Y(_224_));
 sky130_fd_sc_hd__a21oi_2 _436_ (.A1(valid_d2),
    .A2(\dout0_q[20] ),
    .B1(acc_out[20]),
    .Y(_225_));
 sky130_fd_sc_hd__and3_2 _437_ (.A(valid_d2),
    .B(acc_out[20]),
    .C(\dout0_q[20] ),
    .X(_226_));
 sky130_fd_sc_hd__nor2_2 _438_ (.A(_225_),
    .B(_226_),
    .Y(_227_));
 sky130_fd_sc_hd__nand2_2 _439_ (.A(_224_),
    .B(_227_),
    .Y(_228_));
 sky130_fd_sc_hd__a211oi_2 _440_ (.A1(_210_),
    .A2(_211_),
    .B1(_228_),
    .C1(_129_),
    .Y(_229_));
 sky130_fd_sc_hd__and2b_2 _441_ (.A_N(_214_),
    .B(_217_),
    .X(_230_));
 sky130_fd_sc_hd__a211o_2 _442_ (.A1(_224_),
    .A2(_226_),
    .B1(_230_),
    .C1(_213_),
    .X(_231_));
 sky130_fd_sc_hd__a21o_2 _443_ (.A1(_220_),
    .A2(_222_),
    .B1(_231_),
    .X(_232_));
 sky130_fd_sc_hd__or2_2 _444_ (.A(_229_),
    .B(_232_),
    .X(_233_));
 sky130_fd_sc_hd__o21ba_2 _445_ (.A1(_229_),
    .A2(_232_),
    .B1_N(_114_),
    .X(_234_));
 sky130_fd_sc_hd__o31a_2 _446_ (.A1(_110_),
    .A2(_112_),
    .A3(_234_),
    .B1(_111_),
    .X(_235_));
 sky130_fd_sc_hd__o311a_2 _447_ (.A1(_110_),
    .A2(_112_),
    .A3(_234_),
    .B1(_111_),
    .C1(_095_),
    .X(_236_));
 sky130_fd_sc_hd__or4_2 _448_ (.A(_090_),
    .B(_091_),
    .C(_092_),
    .D(_236_),
    .X(_237_));
 sky130_fd_sc_hd__o22ai_2 _449_ (.A1(_090_),
    .A2(_091_),
    .B1(_092_),
    .B2(_236_),
    .Y(_238_));
 sky130_fd_sc_hd__nand2_2 _450_ (.A(_237_),
    .B(_238_),
    .Y(\acc_core.adder.cla_blocks[7].block.sum[1] ));
 sky130_fd_sc_hd__xnor2_2 _451_ (.A(_094_),
    .B(_235_),
    .Y(\acc_core.adder.cla_blocks[7].block.sum[0] ));
 sky130_fd_sc_hd__a21oi_2 _452_ (.A1(valid_d2),
    .A2(\dout0_q[0] ),
    .B1(acc_out[0]),
    .Y(_239_));
 sky130_fd_sc_hd__nor2_2 _453_ (.A(_192_),
    .B(_239_),
    .Y(\acc_core.adder.cla_blocks[0].block.p[0] ));
 sky130_fd_sc_hd__a21bo_2 _454_ (.A1(wr_en),
    .A2(wr_addr[0]),
    .B1_N(_082_),
    .X(\addr0[0] ));
 sky130_fd_sc_hd__mux2_1 _455_ (.A0(\rd_addr[1] ),
    .A1(wr_addr[1]),
    .S(wr_en),
    .X(\addr0[1] ));
 sky130_fd_sc_hd__mux2_1 _456_ (.A0(\rd_addr[2] ),
    .A1(wr_addr[2]),
    .S(wr_en),
    .X(\addr0[2] ));
 sky130_fd_sc_hd__mux2_1 _457_ (.A0(\rd_addr[3] ),
    .A1(wr_addr[3]),
    .S(wr_en),
    .X(\addr0[3] ));
 sky130_fd_sc_hd__mux2_1 _458_ (.A0(\rd_addr[4] ),
    .A1(wr_addr[4]),
    .S(wr_en),
    .X(\addr0[4] ));
 sky130_fd_sc_hd__mux2_1 _459_ (.A0(\rd_addr[5] ),
    .A1(wr_addr[5]),
    .S(wr_en),
    .X(\addr0[5] ));
 sky130_fd_sc_hd__mux2_1 _460_ (.A0(\rd_addr[6] ),
    .A1(wr_addr[6]),
    .S(wr_en),
    .X(\addr0[6] ));
 sky130_fd_sc_hd__mux2_1 _461_ (.A0(\rd_addr[7] ),
    .A1(wr_addr[7]),
    .S(wr_en),
    .X(\addr0[7] ));
 sky130_fd_sc_hd__xnor2_2 _462_ (.A(_196_),
    .B(_197_),
    .Y(\acc_core.adder.cla_blocks[0].block.sum[3] ));
 sky130_fd_sc_hd__xnor2_2 _463_ (.A(_190_),
    .B(_195_),
    .Y(\acc_core.adder.cla_blocks[0].block.sum[2] ));
 sky130_fd_sc_hd__xnor2_2 _464_ (.A(_192_),
    .B(_194_),
    .Y(\acc_core.adder.cla_blocks[0].block.sum[1] ));
 sky130_fd_sc_hd__a21o_2 _465_ (.A1(_180_),
    .A2(_199_),
    .B1(_176_),
    .X(_240_));
 sky130_fd_sc_hd__a21o_2 _466_ (.A1(_173_),
    .A2(_240_),
    .B1(_171_),
    .X(_241_));
 sky130_fd_sc_hd__xnor2_2 _467_ (.A(_170_),
    .B(_241_),
    .Y(\acc_core.adder.cla_blocks[1].block.sum[3] ));
 sky130_fd_sc_hd__xnor2_2 _468_ (.A(_174_),
    .B(_240_),
    .Y(\acc_core.adder.cla_blocks[1].block.sum[2] ));
 sky130_fd_sc_hd__xnor2_2 _469_ (.A(_181_),
    .B(_199_),
    .Y(\acc_core.adder.cla_blocks[1].block.sum[1] ));
 sky130_fd_sc_hd__xnor2_2 _470_ (.A(_185_),
    .B(_198_),
    .Y(\acc_core.adder.cla_blocks[1].block.sum[0] ));
 sky130_fd_sc_hd__a21bo_2 _471_ (.A1(_161_),
    .A2(_203_),
    .B1_N(_158_),
    .X(_242_));
 sky130_fd_sc_hd__a21oi_2 _472_ (.A1(_155_),
    .A2(_242_),
    .B1(_154_),
    .Y(_243_));
 sky130_fd_sc_hd__xor2_2 _473_ (.A(_153_),
    .B(_243_),
    .X(\acc_core.adder.cla_blocks[2].block.sum[3] ));
 sky130_fd_sc_hd__xnor2_2 _474_ (.A(_156_),
    .B(_242_),
    .Y(\acc_core.adder.cla_blocks[2].block.sum[2] ));
 sky130_fd_sc_hd__xnor2_2 _475_ (.A(_162_),
    .B(_203_),
    .Y(\acc_core.adder.cla_blocks[2].block.sum[1] ));
 sky130_fd_sc_hd__xor2_2 _476_ (.A(_166_),
    .B(_202_),
    .X(\acc_core.adder.cla_blocks[2].block.sum[0] ));
 sky130_fd_sc_hd__a21oi_2 _477_ (.A1(_148_),
    .A2(_207_),
    .B1(_135_),
    .Y(_244_));
 sky130_fd_sc_hd__or2_2 _478_ (.A(_134_),
    .B(_244_),
    .X(_245_));
 sky130_fd_sc_hd__a21o_2 _479_ (.A1(_141_),
    .A2(_245_),
    .B1(_142_),
    .X(_246_));
 sky130_fd_sc_hd__xnor2_2 _480_ (.A(_139_),
    .B(_246_),
    .Y(\acc_core.adder.cla_blocks[3].block.sum[3] ));
 sky130_fd_sc_hd__xnor2_2 _481_ (.A(_143_),
    .B(_245_),
    .Y(\acc_core.adder.cla_blocks[3].block.sum[2] ));
 sky130_fd_sc_hd__and3_2 _482_ (.A(_135_),
    .B(_148_),
    .C(_207_),
    .X(_247_));
 sky130_fd_sc_hd__nor2_2 _483_ (.A(_244_),
    .B(_247_),
    .Y(\acc_core.adder.cla_blocks[3].block.sum[1] ));
 sky130_fd_sc_hd__xor2_2 _484_ (.A(_150_),
    .B(_206_),
    .X(\acc_core.adder.cla_blocks[3].block.sum[0] ));
 sky130_fd_sc_hd__a21oi_2 _485_ (.A1(_130_),
    .A2(_210_),
    .B1(_117_),
    .Y(_248_));
 sky130_fd_sc_hd__or2_2 _486_ (.A(_116_),
    .B(_248_),
    .X(_249_));
 sky130_fd_sc_hd__a21o_2 _487_ (.A1(_122_),
    .A2(_249_),
    .B1(_123_),
    .X(_250_));
 sky130_fd_sc_hd__xnor2_2 _488_ (.A(_120_),
    .B(_250_),
    .Y(\acc_core.adder.cla_blocks[4].block.sum[3] ));
 sky130_fd_sc_hd__xnor2_2 _489_ (.A(_124_),
    .B(_249_),
    .Y(\acc_core.adder.cla_blocks[4].block.sum[2] ));
 sky130_fd_sc_hd__and3_2 _490_ (.A(_117_),
    .B(_130_),
    .C(_210_),
    .X(_251_));
 sky130_fd_sc_hd__nor2_2 _491_ (.A(_248_),
    .B(_251_),
    .Y(\acc_core.adder.cla_blocks[4].block.sum[1] ));
 sky130_fd_sc_hd__xnor2_2 _492_ (.A(_132_),
    .B(_209_),
    .Y(\acc_core.adder.cla_blocks[4].block.sum[0] ));
 sky130_fd_sc_hd__a21oi_2 _493_ (.A1(_212_),
    .A2(_227_),
    .B1(_226_),
    .Y(_252_));
 sky130_fd_sc_hd__o21ba_2 _494_ (.A1(_223_),
    .A2(_252_),
    .B1_N(_222_),
    .X(_253_));
 sky130_fd_sc_hd__o21ba_2 _495_ (.A1(_216_),
    .A2(_253_),
    .B1_N(_217_),
    .X(_254_));
 sky130_fd_sc_hd__xor2_2 _496_ (.A(_215_),
    .B(_254_),
    .X(\acc_core.adder.cla_blocks[5].block.sum[3] ));
 sky130_fd_sc_hd__xnor2_2 _497_ (.A(_218_),
    .B(_253_),
    .Y(\acc_core.adder.cla_blocks[5].block.sum[2] ));
 sky130_fd_sc_hd__xor2_2 _498_ (.A(_223_),
    .B(_252_),
    .X(\acc_core.adder.cla_blocks[5].block.sum[1] ));
 sky130_fd_sc_hd__xor2_2 _499_ (.A(_212_),
    .B(_227_),
    .X(\acc_core.adder.cla_blocks[5].block.sum[0] ));
 sky130_fd_sc_hd__nor2_2 _500_ (.A(_112_),
    .B(_234_),
    .Y(_255_));
 sky130_fd_sc_hd__o21ba_2 _501_ (.A1(_112_),
    .A2(_234_),
    .B1_N(_107_),
    .X(_256_));
 sky130_fd_sc_hd__or3_2 _502_ (.A(_104_),
    .B(_108_),
    .C(_256_),
    .X(_257_));
 sky130_fd_sc_hd__xnor2_2 _503_ (.A(_103_),
    .B(_257_),
    .Y(\acc_core.adder.cla_blocks[6].block.sum[3] ));
 sky130_fd_sc_hd__o211a_2 _504_ (.A1(_099_),
    .A2(_255_),
    .B1(_106_),
    .C1(_097_),
    .X(_258_));
 sky130_fd_sc_hd__nor3_2 _505_ (.A(_108_),
    .B(_256_),
    .C(_258_),
    .Y(\acc_core.adder.cla_blocks[6].block.sum[2] ));
 sky130_fd_sc_hd__xor2_2 _506_ (.A(_099_),
    .B(_255_),
    .X(\acc_core.adder.cla_blocks[6].block.sum[1] ));
 sky130_fd_sc_hd__xnor2_2 _507_ (.A(_114_),
    .B(_233_),
    .Y(\acc_core.adder.cla_blocks[6].block.sum[0] ));
 sky130_fd_sc_hd__nand2_2 _508_ (.A(valid_d2),
    .B(\dout0_q[31] ),
    .Y(_259_));
 sky130_fd_sc_hd__xor2_2 _509_ (.A(acc_out[31]),
    .B(_259_),
    .X(_260_));
 sky130_fd_sc_hd__a21o_2 _510_ (.A1(valid_d2),
    .A2(\dout0_q[30] ),
    .B1(acc_out[30]),
    .X(_261_));
 sky130_fd_sc_hd__and3_2 _511_ (.A(valid_d2),
    .B(\dout0_q[30] ),
    .C(acc_out[30]),
    .X(_262_));
 sky130_fd_sc_hd__inv_2 _512_ (.A(_262_),
    .Y(_263_));
 sky130_fd_sc_hd__a211o_2 _513_ (.A1(_091_),
    .A2(_261_),
    .B1(_262_),
    .C1(_092_),
    .X(_264_));
 sky130_fd_sc_hd__nand2_2 _514_ (.A(_261_),
    .B(_263_),
    .Y(_265_));
 sky130_fd_sc_hd__o221a_2 _515_ (.A1(_089_),
    .A2(_262_),
    .B1(_264_),
    .B2(_236_),
    .C1(_261_),
    .X(_266_));
 sky130_fd_sc_hd__xnor2_2 _516_ (.A(_260_),
    .B(_266_),
    .Y(\acc_core.adder.cla_blocks[7].block.sum[3] ));
 sky130_fd_sc_hd__o31a_2 _517_ (.A1(_091_),
    .A2(_092_),
    .A3(_236_),
    .B1(_089_),
    .X(_267_));
 sky130_fd_sc_hd__xnor2_2 _518_ (.A(_265_),
    .B(_267_),
    .Y(\acc_core.adder.cla_blocks[7].block.sum[2] ));
 sky130_fd_sc_hd__inv_2 _519_ (.A(rst),
    .Y(_001_));
 sky130_fd_sc_hd__inv_2 _520_ (.A(rst),
    .Y(_002_));
 sky130_fd_sc_hd__inv_2 _521_ (.A(rst),
    .Y(_003_));
 sky130_fd_sc_hd__inv_2 _522_ (.A(rst),
    .Y(_004_));
 sky130_fd_sc_hd__inv_2 _523_ (.A(rst),
    .Y(_005_));
 sky130_fd_sc_hd__inv_2 _524_ (.A(rst),
    .Y(_006_));
 sky130_fd_sc_hd__inv_2 _525_ (.A(rst),
    .Y(_007_));
 sky130_fd_sc_hd__inv_2 _526_ (.A(rst),
    .Y(_008_));
 sky130_fd_sc_hd__inv_2 _527_ (.A(rst),
    .Y(_009_));
 sky130_fd_sc_hd__inv_2 _528_ (.A(rst),
    .Y(_010_));
 sky130_fd_sc_hd__inv_2 _529_ (.A(rst),
    .Y(_011_));
 sky130_fd_sc_hd__inv_2 _530_ (.A(rst),
    .Y(_012_));
 sky130_fd_sc_hd__inv_2 _531_ (.A(rst),
    .Y(_013_));
 sky130_fd_sc_hd__inv_2 _532_ (.A(rst),
    .Y(_014_));
 sky130_fd_sc_hd__inv_2 _533_ (.A(rst),
    .Y(_015_));
 sky130_fd_sc_hd__inv_2 _534_ (.A(rst),
    .Y(_016_));
 sky130_fd_sc_hd__inv_2 _535_ (.A(rst),
    .Y(_017_));
 sky130_fd_sc_hd__inv_2 _536_ (.A(rst),
    .Y(_018_));
 sky130_fd_sc_hd__inv_2 _537_ (.A(rst),
    .Y(_019_));
 sky130_fd_sc_hd__inv_2 _538_ (.A(rst),
    .Y(_020_));
 sky130_fd_sc_hd__inv_2 _539_ (.A(rst),
    .Y(_021_));
 sky130_fd_sc_hd__inv_2 _540_ (.A(rst),
    .Y(_022_));
 sky130_fd_sc_hd__inv_2 _541_ (.A(rst),
    .Y(_023_));
 sky130_fd_sc_hd__inv_2 _542_ (.A(rst),
    .Y(_024_));
 sky130_fd_sc_hd__inv_2 _543_ (.A(rst),
    .Y(_025_));
 sky130_fd_sc_hd__inv_2 _544_ (.A(rst),
    .Y(_026_));
 sky130_fd_sc_hd__inv_2 _545_ (.A(rst),
    .Y(_027_));
 sky130_fd_sc_hd__inv_2 _546_ (.A(rst),
    .Y(_028_));
 sky130_fd_sc_hd__inv_2 _547_ (.A(rst),
    .Y(_029_));
 sky130_fd_sc_hd__inv_2 _548_ (.A(rst),
    .Y(_030_));
 sky130_fd_sc_hd__inv_2 _549_ (.A(rst),
    .Y(_031_));
 sky130_fd_sc_hd__inv_2 _550_ (.A(rst),
    .Y(_032_));
 sky130_fd_sc_hd__inv_2 _551_ (.A(rst),
    .Y(_033_));
 sky130_fd_sc_hd__inv_2 _552_ (.A(rst),
    .Y(_034_));
 sky130_fd_sc_hd__inv_2 _553_ (.A(rst),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _554_ (.A(rst),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _555_ (.A(rst),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _556_ (.A(rst),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _557_ (.A(rst),
    .Y(_039_));
 sky130_fd_sc_hd__inv_2 _558_ (.A(rst),
    .Y(_040_));
 sky130_fd_sc_hd__inv_2 _559_ (.A(rst),
    .Y(_041_));
 sky130_fd_sc_hd__inv_2 _560_ (.A(rst),
    .Y(_042_));
 sky130_fd_sc_hd__inv_2 _561_ (.A(rst),
    .Y(_043_));
 sky130_fd_sc_hd__inv_2 _562_ (.A(rst),
    .Y(_044_));
 sky130_fd_sc_hd__inv_2 _563_ (.A(rst),
    .Y(_045_));
 sky130_fd_sc_hd__inv_2 _564_ (.A(rst),
    .Y(_046_));
 sky130_fd_sc_hd__inv_2 _565_ (.A(rst),
    .Y(_047_));
 sky130_fd_sc_hd__inv_2 _566_ (.A(rst),
    .Y(_048_));
 sky130_fd_sc_hd__inv_2 _567_ (.A(rst),
    .Y(_049_));
 sky130_fd_sc_hd__inv_2 _568_ (.A(rst),
    .Y(_050_));
 sky130_fd_sc_hd__inv_2 _569_ (.A(rst),
    .Y(_051_));
 sky130_fd_sc_hd__inv_2 _570_ (.A(rst),
    .Y(_052_));
 sky130_fd_sc_hd__inv_2 _571_ (.A(rst),
    .Y(_053_));
 sky130_fd_sc_hd__inv_2 _572_ (.A(rst),
    .Y(_054_));
 sky130_fd_sc_hd__inv_2 _573_ (.A(rst),
    .Y(_055_));
 sky130_fd_sc_hd__inv_2 _574_ (.A(rst),
    .Y(_056_));
 sky130_fd_sc_hd__inv_2 _575_ (.A(rst),
    .Y(_057_));
 sky130_fd_sc_hd__inv_2 _576_ (.A(rst),
    .Y(_058_));
 sky130_fd_sc_hd__inv_2 _577_ (.A(rst),
    .Y(_059_));
 sky130_fd_sc_hd__inv_2 _578_ (.A(rst),
    .Y(_060_));
 sky130_fd_sc_hd__inv_2 _579_ (.A(rst),
    .Y(_061_));
 sky130_fd_sc_hd__inv_2 _580_ (.A(rst),
    .Y(_062_));
 sky130_fd_sc_hd__inv_2 _581_ (.A(rst),
    .Y(_063_));
 sky130_fd_sc_hd__inv_2 _582_ (.A(rst),
    .Y(_064_));
 sky130_fd_sc_hd__inv_2 _583_ (.A(rst),
    .Y(_065_));
 sky130_fd_sc_hd__inv_2 _584_ (.A(rst),
    .Y(_066_));
 sky130_fd_sc_hd__inv_2 _585_ (.A(rst),
    .Y(_067_));
 sky130_fd_sc_hd__inv_2 _586_ (.A(rst),
    .Y(_068_));
 sky130_fd_sc_hd__inv_2 _587_ (.A(rst),
    .Y(_069_));
 sky130_fd_sc_hd__inv_2 _588_ (.A(rst),
    .Y(_070_));
 sky130_fd_sc_hd__inv_2 _589_ (.A(rst),
    .Y(_071_));
 sky130_fd_sc_hd__inv_2 _590_ (.A(rst),
    .Y(_072_));
 sky130_fd_sc_hd__inv_2 _591_ (.A(rst),
    .Y(_073_));
 sky130_fd_sc_hd__dfrtp_2 _592_ (.CLK(clk),
    .D(_074_),
    .RESET_B(_000_),
    .Q(\rd_addr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _593_ (.CLK(clk),
    .D(_075_),
    .RESET_B(_001_),
    .Q(\rd_addr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _594_ (.CLK(clk),
    .D(_076_),
    .RESET_B(_002_),
    .Q(\rd_addr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _595_ (.CLK(clk),
    .D(_077_),
    .RESET_B(_003_),
    .Q(\rd_addr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _596_ (.CLK(clk),
    .D(_078_),
    .RESET_B(_004_),
    .Q(\rd_addr[4] ));
 sky130_fd_sc_hd__dfrtp_2 _597_ (.CLK(clk),
    .D(_079_),
    .RESET_B(_005_),
    .Q(\rd_addr[5] ));
 sky130_fd_sc_hd__dfrtp_2 _598_ (.CLK(clk),
    .D(_080_),
    .RESET_B(_006_),
    .Q(\rd_addr[6] ));
 sky130_fd_sc_hd__dfrtp_2 _599_ (.CLK(clk),
    .D(_081_),
    .RESET_B(_007_),
    .Q(\rd_addr[7] ));
 sky130_fd_sc_hd__dfrtp_2 _600_ (.CLK(clk),
    .D(web0),
    .RESET_B(_008_),
    .Q(valid_d1));
 sky130_fd_sc_hd__dfrtp_2 _601_ (.CLK(clk),
    .D(valid_d1),
    .RESET_B(_009_),
    .Q(valid_d2));
 sky130_fd_sc_hd__dfrtp_2 _602_ (.CLK(clk),
    .D(\dout0[0] ),
    .RESET_B(_010_),
    .Q(\dout0_q[0] ));
 sky130_fd_sc_hd__dfrtp_2 _603_ (.CLK(clk),
    .D(\dout0[1] ),
    .RESET_B(_011_),
    .Q(\dout0_q[1] ));
 sky130_fd_sc_hd__dfrtp_2 _604_ (.CLK(clk),
    .D(\dout0[2] ),
    .RESET_B(_012_),
    .Q(\dout0_q[2] ));
 sky130_fd_sc_hd__dfrtp_2 _605_ (.CLK(clk),
    .D(\dout0[3] ),
    .RESET_B(_013_),
    .Q(\dout0_q[3] ));
 sky130_fd_sc_hd__dfrtp_2 _606_ (.CLK(clk),
    .D(\dout0[4] ),
    .RESET_B(_014_),
    .Q(\dout0_q[4] ));
 sky130_fd_sc_hd__dfrtp_2 _607_ (.CLK(clk),
    .D(\dout0[5] ),
    .RESET_B(_015_),
    .Q(\dout0_q[5] ));
 sky130_fd_sc_hd__dfrtp_2 _608_ (.CLK(clk),
    .D(\dout0[6] ),
    .RESET_B(_016_),
    .Q(\dout0_q[6] ));
 sky130_fd_sc_hd__dfrtp_2 _609_ (.CLK(clk),
    .D(\dout0[7] ),
    .RESET_B(_017_),
    .Q(\dout0_q[7] ));
 sky130_fd_sc_hd__dfrtp_2 _610_ (.CLK(clk),
    .D(\dout0[8] ),
    .RESET_B(_018_),
    .Q(\dout0_q[8] ));
 sky130_fd_sc_hd__dfrtp_2 _611_ (.CLK(clk),
    .D(\dout0[9] ),
    .RESET_B(_019_),
    .Q(\dout0_q[9] ));
 sky130_fd_sc_hd__dfrtp_2 _612_ (.CLK(clk),
    .D(\dout0[10] ),
    .RESET_B(_020_),
    .Q(\dout0_q[10] ));
 sky130_fd_sc_hd__dfrtp_2 _613_ (.CLK(clk),
    .D(\dout0[11] ),
    .RESET_B(_021_),
    .Q(\dout0_q[11] ));
 sky130_fd_sc_hd__dfrtp_2 _614_ (.CLK(clk),
    .D(\dout0[12] ),
    .RESET_B(_022_),
    .Q(\dout0_q[12] ));
 sky130_fd_sc_hd__dfrtp_2 _615_ (.CLK(clk),
    .D(\dout0[13] ),
    .RESET_B(_023_),
    .Q(\dout0_q[13] ));
 sky130_fd_sc_hd__dfrtp_2 _616_ (.CLK(clk),
    .D(\dout0[14] ),
    .RESET_B(_024_),
    .Q(\dout0_q[14] ));
 sky130_fd_sc_hd__dfrtp_2 _617_ (.CLK(clk),
    .D(\dout0[15] ),
    .RESET_B(_025_),
    .Q(\dout0_q[15] ));
 sky130_fd_sc_hd__dfrtp_2 _618_ (.CLK(clk),
    .D(\dout0[16] ),
    .RESET_B(_026_),
    .Q(\dout0_q[16] ));
 sky130_fd_sc_hd__dfrtp_2 _619_ (.CLK(clk),
    .D(\dout0[17] ),
    .RESET_B(_027_),
    .Q(\dout0_q[17] ));
 sky130_fd_sc_hd__dfrtp_2 _620_ (.CLK(clk),
    .D(\dout0[18] ),
    .RESET_B(_028_),
    .Q(\dout0_q[18] ));
 sky130_fd_sc_hd__dfrtp_2 _621_ (.CLK(clk),
    .D(\dout0[19] ),
    .RESET_B(_029_),
    .Q(\dout0_q[19] ));
 sky130_fd_sc_hd__dfrtp_2 _622_ (.CLK(clk),
    .D(\dout0[20] ),
    .RESET_B(_030_),
    .Q(\dout0_q[20] ));
 sky130_fd_sc_hd__dfrtp_2 _623_ (.CLK(clk),
    .D(\dout0[21] ),
    .RESET_B(_031_),
    .Q(\dout0_q[21] ));
 sky130_fd_sc_hd__dfrtp_2 _624_ (.CLK(clk),
    .D(\dout0[22] ),
    .RESET_B(_032_),
    .Q(\dout0_q[22] ));
 sky130_fd_sc_hd__dfrtp_2 _625_ (.CLK(clk),
    .D(\dout0[23] ),
    .RESET_B(_033_),
    .Q(\dout0_q[23] ));
 sky130_fd_sc_hd__dfrtp_2 _626_ (.CLK(clk),
    .D(\dout0[24] ),
    .RESET_B(_034_),
    .Q(\dout0_q[24] ));
 sky130_fd_sc_hd__dfrtp_2 _627_ (.CLK(clk),
    .D(\dout0[25] ),
    .RESET_B(_035_),
    .Q(\dout0_q[25] ));
 sky130_fd_sc_hd__dfrtp_2 _628_ (.CLK(clk),
    .D(\dout0[26] ),
    .RESET_B(_036_),
    .Q(\dout0_q[26] ));
 sky130_fd_sc_hd__dfrtp_2 _629_ (.CLK(clk),
    .D(\dout0[27] ),
    .RESET_B(_037_),
    .Q(\dout0_q[27] ));
 sky130_fd_sc_hd__dfrtp_2 _630_ (.CLK(clk),
    .D(\dout0[28] ),
    .RESET_B(_038_),
    .Q(\dout0_q[28] ));
 sky130_fd_sc_hd__dfrtp_2 _631_ (.CLK(clk),
    .D(\dout0[29] ),
    .RESET_B(_039_),
    .Q(\dout0_q[29] ));
 sky130_fd_sc_hd__dfrtp_2 _632_ (.CLK(clk),
    .D(\dout0[30] ),
    .RESET_B(_040_),
    .Q(\dout0_q[30] ));
 sky130_fd_sc_hd__dfrtp_2 _633_ (.CLK(clk),
    .D(\dout0[31] ),
    .RESET_B(_041_),
    .Q(\dout0_q[31] ));
 sky130_fd_sc_hd__dfrtp_2 _634_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[0].block.p[0] ),
    .RESET_B(_042_),
    .Q(acc_out[0]));
 sky130_fd_sc_hd__dfrtp_2 _635_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[0].block.sum[1] ),
    .RESET_B(_043_),
    .Q(acc_out[1]));
 sky130_fd_sc_hd__dfrtp_2 _636_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[0].block.sum[2] ),
    .RESET_B(_044_),
    .Q(acc_out[2]));
 sky130_fd_sc_hd__dfrtp_2 _637_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[0].block.sum[3] ),
    .RESET_B(_045_),
    .Q(acc_out[3]));
 sky130_fd_sc_hd__dfrtp_2 _638_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[1].block.sum[0] ),
    .RESET_B(_046_),
    .Q(acc_out[4]));
 sky130_fd_sc_hd__dfrtp_2 _639_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[1].block.sum[1] ),
    .RESET_B(_047_),
    .Q(acc_out[5]));
 sky130_fd_sc_hd__dfrtp_2 _640_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[1].block.sum[2] ),
    .RESET_B(_048_),
    .Q(acc_out[6]));
 sky130_fd_sc_hd__dfrtp_2 _641_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[1].block.sum[3] ),
    .RESET_B(_049_),
    .Q(acc_out[7]));
 sky130_fd_sc_hd__dfrtp_2 _642_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[2].block.sum[0] ),
    .RESET_B(_050_),
    .Q(acc_out[8]));
 sky130_fd_sc_hd__dfrtp_2 _643_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[2].block.sum[1] ),
    .RESET_B(_051_),
    .Q(acc_out[9]));
 sky130_fd_sc_hd__dfrtp_2 _644_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[2].block.sum[2] ),
    .RESET_B(_052_),
    .Q(acc_out[10]));
 sky130_fd_sc_hd__dfrtp_2 _645_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[2].block.sum[3] ),
    .RESET_B(_053_),
    .Q(acc_out[11]));
 sky130_fd_sc_hd__dfrtp_2 _646_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[3].block.sum[0] ),
    .RESET_B(_054_),
    .Q(acc_out[12]));
 sky130_fd_sc_hd__dfrtp_2 _647_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[3].block.sum[1] ),
    .RESET_B(_055_),
    .Q(acc_out[13]));
 sky130_fd_sc_hd__dfrtp_2 _648_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[3].block.sum[2] ),
    .RESET_B(_056_),
    .Q(acc_out[14]));
 sky130_fd_sc_hd__dfrtp_2 _649_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[3].block.sum[3] ),
    .RESET_B(_057_),
    .Q(acc_out[15]));
 sky130_fd_sc_hd__dfrtp_2 _650_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[4].block.sum[0] ),
    .RESET_B(_058_),
    .Q(acc_out[16]));
 sky130_fd_sc_hd__dfrtp_2 _651_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[4].block.sum[1] ),
    .RESET_B(_059_),
    .Q(acc_out[17]));
 sky130_fd_sc_hd__dfrtp_2 _652_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[4].block.sum[2] ),
    .RESET_B(_060_),
    .Q(acc_out[18]));
 sky130_fd_sc_hd__dfrtp_2 _653_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[4].block.sum[3] ),
    .RESET_B(_061_),
    .Q(acc_out[19]));
 sky130_fd_sc_hd__dfrtp_2 _654_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[5].block.sum[0] ),
    .RESET_B(_062_),
    .Q(acc_out[20]));
 sky130_fd_sc_hd__dfrtp_2 _655_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[5].block.sum[1] ),
    .RESET_B(_063_),
    .Q(acc_out[21]));
 sky130_fd_sc_hd__dfrtp_2 _656_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[5].block.sum[2] ),
    .RESET_B(_064_),
    .Q(acc_out[22]));
 sky130_fd_sc_hd__dfrtp_2 _657_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[5].block.sum[3] ),
    .RESET_B(_065_),
    .Q(acc_out[23]));
 sky130_fd_sc_hd__dfrtp_2 _658_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[6].block.sum[0] ),
    .RESET_B(_066_),
    .Q(acc_out[24]));
 sky130_fd_sc_hd__dfrtp_2 _659_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[6].block.sum[1] ),
    .RESET_B(_067_),
    .Q(acc_out[25]));
 sky130_fd_sc_hd__dfrtp_2 _660_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[6].block.sum[2] ),
    .RESET_B(_068_),
    .Q(acc_out[26]));
 sky130_fd_sc_hd__dfrtp_2 _661_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[6].block.sum[3] ),
    .RESET_B(_069_),
    .Q(acc_out[27]));
 sky130_fd_sc_hd__dfrtp_2 _662_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[7].block.sum[0] ),
    .RESET_B(_070_),
    .Q(acc_out[28]));
 sky130_fd_sc_hd__dfrtp_2 _663_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[7].block.sum[1] ),
    .RESET_B(_071_),
    .Q(acc_out[29]));
 sky130_fd_sc_hd__dfrtp_2 _664_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[7].block.sum[2] ),
    .RESET_B(_072_),
    .Q(acc_out[30]));
 sky130_fd_sc_hd__dfrtp_2 _665_ (.CLK(clk),
    .D(\acc_core.adder.cla_blocks[7].block.sum[3] ),
    .RESET_B(_073_),
    .Q(acc_out[31]));
 sky130_fd_sc_hd__conb_1 _666_ (.HI(_268_));
 sky130_fd_sc_hd__conb_1 _667_ (.HI(_269_));
 sky130_fd_sc_hd__conb_1 _668_ (.HI(_270_));
 sky130_fd_sc_hd__conb_1 _669_ (.HI(_271_));
 sky130_fd_sc_hd__conb_1 _670_ (.HI(_272_));
 sky130_fd_sc_hd__conb_1 _671_ (.LO(_273_));
 sky130_fd_sc_hd__conb_1 _672_ (.LO(_274_));
 sky130_fd_sc_hd__conb_1 _673_ (.LO(_275_));
 sky130_fd_sc_hd__conb_1 _674_ (.LO(_276_));
 sky130_fd_sc_hd__conb_1 _675_ (.LO(_277_));
 sky130_fd_sc_hd__conb_1 _676_ (.LO(_278_));
 sky130_fd_sc_hd__conb_1 _677_ (.LO(_279_));
 sky130_fd_sc_hd__conb_1 _678_ (.LO(_280_));
 sky130_fd_sc_hd__conb_1 _679_ (.LO(_281_));
 sky130_fd_sc_hd__conb_1 _680_ (.LO(_282_));
 sky130_sram_1kbyte_1rw1r_32x256_8 sram0 (.csb0(_282_),
    .csb1(_268_),
    .web0(web0),
    .clk0(clk),
    .clk1(_281_),
    .addr0({\addr0[7] ,
    \addr0[6] ,
    \addr0[5] ,
    \addr0[4] ,
    \addr0[3] ,
    \addr0[2] ,
    \addr0[1] ,
    \addr0[0] }),
    .addr1({_280_,
    _279_,
    _278_,
    _277_,
    _276_,
    _275_,
    _274_,
    _273_}),
    .din0({wr_data[31],
    wr_data[30],
    wr_data[29],
    wr_data[28],
    wr_data[27],
    wr_data[26],
    wr_data[25],
    wr_data[24],
    wr_data[23],
    wr_data[22],
    wr_data[21],
    wr_data[20],
    wr_data[19],
    wr_data[18],
    wr_data[17],
    wr_data[16],
    wr_data[15],
    wr_data[14],
    wr_data[13],
    wr_data[12],
    wr_data[11],
    wr_data[10],
    wr_data[9],
    wr_data[8],
    wr_data[7],
    wr_data[6],
    wr_data[5],
    wr_data[4],
    wr_data[3],
    wr_data[2],
    wr_data[1],
    wr_data[0]}),
    .dout0({\dout0[31] ,
    \dout0[30] ,
    \dout0[29] ,
    \dout0[28] ,
    \dout0[27] ,
    \dout0[26] ,
    \dout0[25] ,
    \dout0[24] ,
    \dout0[23] ,
    \dout0[22] ,
    \dout0[21] ,
    \dout0[20] ,
    \dout0[19] ,
    \dout0[18] ,
    \dout0[17] ,
    \dout0[16] ,
    \dout0[15] ,
    \dout0[14] ,
    \dout0[13] ,
    \dout0[12] ,
    \dout0[11] ,
    \dout0[10] ,
    \dout0[9] ,
    \dout0[8] ,
    \dout0[7] ,
    \dout0[6] ,
    \dout0[5] ,
    \dout0[4] ,
    \dout0[3] ,
    \dout0[2] ,
    \dout0[1] ,
    \dout0[0] }),
    .dout1({\unused_dout1[31] ,
    \unused_dout1[30] ,
    \unused_dout1[29] ,
    \unused_dout1[28] ,
    \unused_dout1[27] ,
    \unused_dout1[26] ,
    \unused_dout1[25] ,
    \unused_dout1[24] ,
    \unused_dout1[23] ,
    \unused_dout1[22] ,
    \unused_dout1[21] ,
    \unused_dout1[20] ,
    \unused_dout1[19] ,
    \unused_dout1[18] ,
    \unused_dout1[17] ,
    \unused_dout1[16] ,
    \unused_dout1[15] ,
    \unused_dout1[14] ,
    \unused_dout1[13] ,
    \unused_dout1[12] ,
    \unused_dout1[11] ,
    \unused_dout1[10] ,
    \unused_dout1[9] ,
    \unused_dout1[8] ,
    \unused_dout1[7] ,
    \unused_dout1[6] ,
    \unused_dout1[5] ,
    \unused_dout1[4] ,
    \unused_dout1[3] ,
    \unused_dout1[2] ,
    \unused_dout1[1] ,
    \unused_dout1[0] }),
    .wmask0({_272_,
    _271_,
    _270_,
    _269_}));
endmodule
