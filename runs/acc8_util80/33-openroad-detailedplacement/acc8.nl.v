module acc8 (clk,
    rst,
    acc,
    data_in);
 input clk;
 input rst;
 output [7:0] acc;
 input [7:0] data_in;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire _38_;
 wire _39_;
 wire _40_;
 wire _41_;
 wire \adder.high.sum[0] ;
 wire \adder.high.sum[1] ;
 wire \adder.high.sum[2] ;
 wire \adder.high.sum[3] ;
 wire \adder.low.p[0] ;
 wire \adder.low.sum[1] ;
 wire \adder.low.sum[2] ;
 wire \adder.low.sum[3] ;
 wire net1;
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

 sky130_fd_sc_hd__inv_2 _42_ (.A(net9),
    .Y(_00_));
 sky130_fd_sc_hd__nand2_1 _43_ (.A(net5),
    .B(net14),
    .Y(_08_));
 sky130_fd_sc_hd__or2_1 _44_ (.A(net5),
    .B(net14),
    .X(_09_));
 sky130_fd_sc_hd__nand2_1 _45_ (.A(_08_),
    .B(_09_),
    .Y(_10_));
 sky130_fd_sc_hd__nor2_1 _46_ (.A(net4),
    .B(net13),
    .Y(_11_));
 sky130_fd_sc_hd__and2_1 _47_ (.A(net3),
    .B(net12),
    .X(_12_));
 sky130_fd_sc_hd__nand2_1 _48_ (.A(net3),
    .B(net12),
    .Y(_13_));
 sky130_fd_sc_hd__nor2_1 _49_ (.A(net3),
    .B(net12),
    .Y(_14_));
 sky130_fd_sc_hd__nand2_1 _50_ (.A(net2),
    .B(net11),
    .Y(_15_));
 sky130_fd_sc_hd__inv_2 _51_ (.A(_15_),
    .Y(_16_));
 sky130_fd_sc_hd__nor2_1 _52_ (.A(net2),
    .B(net11),
    .Y(_17_));
 sky130_fd_sc_hd__nand2_1 _53_ (.A(net1),
    .B(net10),
    .Y(_18_));
 sky130_fd_sc_hd__or3b_1 _54_ (.A(_18_),
    .B(_17_),
    .C_N(_15_),
    .X(_19_));
 sky130_fd_sc_hd__a211o_1 _55_ (.A1(_15_),
    .A2(_19_),
    .B1(_12_),
    .C1(_14_),
    .X(_20_));
 sky130_fd_sc_hd__nand2_1 _56_ (.A(net4),
    .B(net13),
    .Y(_21_));
 sky130_fd_sc_hd__nand2b_1 _57_ (.A_N(_11_),
    .B(_21_),
    .Y(_22_));
 sky130_fd_sc_hd__a31o_1 _58_ (.A1(_13_),
    .A2(_20_),
    .A3(_21_),
    .B1(_11_),
    .X(_23_));
 sky130_fd_sc_hd__nand2_1 _59_ (.A(_10_),
    .B(_23_),
    .Y(_24_));
 sky130_fd_sc_hd__a311o_1 _60_ (.A1(_13_),
    .A2(_20_),
    .A3(_21_),
    .B1(_11_),
    .C1(_10_),
    .X(_25_));
 sky130_fd_sc_hd__and2_1 _61_ (.A(_24_),
    .B(_25_),
    .X(\adder.high.sum[0] ));
 sky130_fd_sc_hd__nor2_1 _62_ (.A(net6),
    .B(net15),
    .Y(_26_));
 sky130_fd_sc_hd__nand2_1 _63_ (.A(net6),
    .B(net15),
    .Y(_27_));
 sky130_fd_sc_hd__nand2b_1 _64_ (.A_N(_26_),
    .B(_27_),
    .Y(_28_));
 sky130_fd_sc_hd__nand2_1 _65_ (.A(_08_),
    .B(_25_),
    .Y(_29_));
 sky130_fd_sc_hd__xnor2_1 _66_ (.A(_28_),
    .B(_29_),
    .Y(\adder.high.sum[1] ));
 sky130_fd_sc_hd__nor2_1 _67_ (.A(net7),
    .B(net16),
    .Y(_30_));
 sky130_fd_sc_hd__nand2_1 _68_ (.A(net7),
    .B(net16),
    .Y(_31_));
 sky130_fd_sc_hd__and2b_1 _69_ (.A_N(_30_),
    .B(_31_),
    .X(_32_));
 sky130_fd_sc_hd__a31o_1 _70_ (.A1(_08_),
    .A2(_25_),
    .A3(_27_),
    .B1(_26_),
    .X(_33_));
 sky130_fd_sc_hd__xnor2_1 _71_ (.A(_32_),
    .B(_33_),
    .Y(\adder.high.sum[2] ));
 sky130_fd_sc_hd__o211a_1 _72_ (.A1(_27_),
    .A2(_30_),
    .B1(_31_),
    .C1(_08_),
    .X(_34_));
 sky130_fd_sc_hd__a21o_1 _73_ (.A1(_26_),
    .A2(_31_),
    .B1(_30_),
    .X(_35_));
 sky130_fd_sc_hd__a21oi_1 _74_ (.A1(_25_),
    .A2(_34_),
    .B1(_35_),
    .Y(_36_));
 sky130_fd_sc_hd__xnor2_1 _75_ (.A(net8),
    .B(net17),
    .Y(_37_));
 sky130_fd_sc_hd__xnor2_1 _76_ (.A(_36_),
    .B(_37_),
    .Y(\adder.high.sum[3] ));
 sky130_fd_sc_hd__o21ai_1 _77_ (.A1(_16_),
    .A2(_17_),
    .B1(_18_),
    .Y(_38_));
 sky130_fd_sc_hd__and2_1 _78_ (.A(_19_),
    .B(_38_),
    .X(\adder.low.sum[1] ));
 sky130_fd_sc_hd__o211ai_1 _79_ (.A1(_12_),
    .A2(_14_),
    .B1(_15_),
    .C1(_19_),
    .Y(_39_));
 sky130_fd_sc_hd__and2_1 _80_ (.A(_20_),
    .B(_39_),
    .X(\adder.low.sum[2] ));
 sky130_fd_sc_hd__nand2_1 _81_ (.A(_13_),
    .B(_20_),
    .Y(_40_));
 sky130_fd_sc_hd__xnor2_1 _82_ (.A(_22_),
    .B(_40_),
    .Y(\adder.low.sum[3] ));
 sky130_fd_sc_hd__or2_1 _83_ (.A(net1),
    .B(net10),
    .X(_41_));
 sky130_fd_sc_hd__and2_1 _84_ (.A(_18_),
    .B(_41_),
    .X(\adder.low.p[0] ));
 sky130_fd_sc_hd__inv_2 _85_ (.A(net9),
    .Y(_01_));
 sky130_fd_sc_hd__inv_2 _86_ (.A(net9),
    .Y(_02_));
 sky130_fd_sc_hd__inv_2 _87_ (.A(net9),
    .Y(_03_));
 sky130_fd_sc_hd__inv_2 _88_ (.A(net9),
    .Y(_04_));
 sky130_fd_sc_hd__inv_2 _89_ (.A(net9),
    .Y(_05_));
 sky130_fd_sc_hd__inv_2 _90_ (.A(net9),
    .Y(_06_));
 sky130_fd_sc_hd__inv_2 _91_ (.A(net9),
    .Y(_07_));
 sky130_fd_sc_hd__dfrtp_1 _92_ (.CLK(clk),
    .D(\adder.low.p[0] ),
    .RESET_B(_00_),
    .Q(net10));
 sky130_fd_sc_hd__dfrtp_1 _93_ (.CLK(clk),
    .D(\adder.low.sum[1] ),
    .RESET_B(_01_),
    .Q(net11));
 sky130_fd_sc_hd__dfrtp_1 _94_ (.CLK(clk),
    .D(\adder.low.sum[2] ),
    .RESET_B(_02_),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_1 _95_ (.CLK(clk),
    .D(\adder.low.sum[3] ),
    .RESET_B(_03_),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_1 _96_ (.CLK(clk),
    .D(\adder.high.sum[0] ),
    .RESET_B(_04_),
    .Q(net14));
 sky130_fd_sc_hd__dfrtp_1 _97_ (.CLK(clk),
    .D(\adder.high.sum[1] ),
    .RESET_B(_05_),
    .Q(net15));
 sky130_fd_sc_hd__dfrtp_1 _98_ (.CLK(clk),
    .D(\adder.high.sum[2] ),
    .RESET_B(_06_),
    .Q(net16));
 sky130_fd_sc_hd__dfrtp_1 _99_ (.CLK(clk),
    .D(\adder.high.sum[3] ),
    .RESET_B(_07_),
    .Q(net17));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_25 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(data_in[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(data_in[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(data_in[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(data_in[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(data_in[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(data_in[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(data_in[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(data_in[7]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_4 input9 (.A(rst),
    .X(net9));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(acc[0]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(acc[1]));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(acc[2]));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(acc[3]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(acc[4]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(acc[5]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(acc[6]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(acc[7]));
endmodule
