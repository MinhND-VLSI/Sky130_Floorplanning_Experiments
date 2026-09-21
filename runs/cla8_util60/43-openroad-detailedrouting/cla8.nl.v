module cla8 (cin,
    cout,
    a,
    b,
    sum);
 input cin;
 output cout;
 input [7:0] a;
 input [7:0] b;
 output [7:0] sum;

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
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;

 sky130_fd_sc_hd__nor2_1 _39_ (.A(net12),
    .B(net4),
    .Y(_00_));
 sky130_fd_sc_hd__or2_1 _40_ (.A(net12),
    .B(net4),
    .X(_01_));
 sky130_fd_sc_hd__and2_1 _41_ (.A(net12),
    .B(net4),
    .X(_02_));
 sky130_fd_sc_hd__nor2_1 _42_ (.A(_00_),
    .B(_02_),
    .Y(_03_));
 sky130_fd_sc_hd__and2_1 _43_ (.A(net11),
    .B(net3),
    .X(_04_));
 sky130_fd_sc_hd__nor2_1 _44_ (.A(net11),
    .B(net3),
    .Y(_05_));
 sky130_fd_sc_hd__nor2_1 _45_ (.A(_04_),
    .B(_05_),
    .Y(_06_));
 sky130_fd_sc_hd__and2_1 _46_ (.A(net10),
    .B(net2),
    .X(_07_));
 sky130_fd_sc_hd__nand2_1 _47_ (.A(net9),
    .B(net1),
    .Y(_08_));
 sky130_fd_sc_hd__or2_1 _48_ (.A(net9),
    .B(net1),
    .X(_09_));
 sky130_fd_sc_hd__nand2_1 _49_ (.A(_08_),
    .B(_09_),
    .Y(_10_));
 sky130_fd_sc_hd__a21bo_1 _50_ (.A1(net17),
    .A2(_09_),
    .B1_N(_08_),
    .X(_11_));
 sky130_fd_sc_hd__nor2_1 _51_ (.A(net10),
    .B(net2),
    .Y(_12_));
 sky130_fd_sc_hd__nor2_1 _52_ (.A(_07_),
    .B(_12_),
    .Y(_13_));
 sky130_fd_sc_hd__a21oi_1 _53_ (.A1(_11_),
    .A2(_13_),
    .B1(_07_),
    .Y(_14_));
 sky130_fd_sc_hd__o21ba_1 _54_ (.A1(_05_),
    .A2(_14_),
    .B1_N(_04_),
    .X(_15_));
 sky130_fd_sc_hd__xnor2_1 _55_ (.A(_03_),
    .B(_15_),
    .Y(net22));
 sky130_fd_sc_hd__xnor2_1 _56_ (.A(_06_),
    .B(_14_),
    .Y(net21));
 sky130_fd_sc_hd__xor2_1 _57_ (.A(_11_),
    .B(_13_),
    .X(net20));
 sky130_fd_sc_hd__xnor2_1 _58_ (.A(net17),
    .B(_10_),
    .Y(net19));
 sky130_fd_sc_hd__and2_1 _59_ (.A(net16),
    .B(net8),
    .X(_16_));
 sky130_fd_sc_hd__nand2_1 _60_ (.A(net16),
    .B(net8),
    .Y(_17_));
 sky130_fd_sc_hd__or2_1 _61_ (.A(net16),
    .B(net8),
    .X(_18_));
 sky130_fd_sc_hd__nand2_1 _62_ (.A(_17_),
    .B(_18_),
    .Y(_19_));
 sky130_fd_sc_hd__or2_1 _63_ (.A(net15),
    .B(net7),
    .X(_20_));
 sky130_fd_sc_hd__nand2_1 _64_ (.A(net15),
    .B(net7),
    .Y(_21_));
 sky130_fd_sc_hd__or2_1 _65_ (.A(net14),
    .B(net6),
    .X(_22_));
 sky130_fd_sc_hd__nand2b_1 _66_ (.A_N(_22_),
    .B(_21_),
    .Y(_23_));
 sky130_fd_sc_hd__nand2_1 _67_ (.A(net13),
    .B(net5),
    .Y(_24_));
 sky130_fd_sc_hd__or2_1 _68_ (.A(net13),
    .B(net5),
    .X(_25_));
 sky130_fd_sc_hd__nand2_1 _69_ (.A(_24_),
    .B(_25_),
    .Y(_26_));
 sky130_fd_sc_hd__a211o_1 _70_ (.A1(_01_),
    .A2(_04_),
    .B1(_07_),
    .C1(_02_),
    .X(_27_));
 sky130_fd_sc_hd__a21oi_1 _71_ (.A1(_11_),
    .A2(_13_),
    .B1(_27_),
    .Y(_28_));
 sky130_fd_sc_hd__o31ai_2 _72_ (.A1(net11),
    .A2(net3),
    .A3(_02_),
    .B1(_01_),
    .Y(_29_));
 sky130_fd_sc_hd__nor2_1 _73_ (.A(_28_),
    .B(_29_),
    .Y(_30_));
 sky130_fd_sc_hd__o31ai_2 _74_ (.A1(_26_),
    .A2(_28_),
    .A3(_29_),
    .B1(_24_),
    .Y(_31_));
 sky130_fd_sc_hd__nand2_1 _75_ (.A(net14),
    .B(net6),
    .Y(_32_));
 sky130_fd_sc_hd__nand2_1 _76_ (.A(_21_),
    .B(_32_),
    .Y(_33_));
 sky130_fd_sc_hd__o211a_1 _77_ (.A1(_31_),
    .A2(_33_),
    .B1(_20_),
    .C1(_23_),
    .X(_34_));
 sky130_fd_sc_hd__xnor2_1 _78_ (.A(_19_),
    .B(_34_),
    .Y(net26));
 sky130_fd_sc_hd__nand2_1 _79_ (.A(_20_),
    .B(_21_),
    .Y(_35_));
 sky130_fd_sc_hd__nand2_1 _80_ (.A(_22_),
    .B(_32_),
    .Y(_36_));
 sky130_fd_sc_hd__a21bo_1 _81_ (.A1(_22_),
    .A2(_31_),
    .B1_N(_32_),
    .X(_37_));
 sky130_fd_sc_hd__xnor2_1 _82_ (.A(_35_),
    .B(_37_),
    .Y(net25));
 sky130_fd_sc_hd__xnor2_1 _83_ (.A(_31_),
    .B(_36_),
    .Y(net24));
 sky130_fd_sc_hd__xnor2_1 _84_ (.A(_26_),
    .B(_30_),
    .Y(net23));
 sky130_fd_sc_hd__nand2_1 _85_ (.A(_17_),
    .B(_21_),
    .Y(_38_));
 sky130_fd_sc_hd__o221a_1 _86_ (.A1(_16_),
    .A2(_20_),
    .B1(_37_),
    .B2(_38_),
    .C1(_18_),
    .X(net18));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_17 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_18 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_22 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(a[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(a[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(a[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(a[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(a[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(a[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(a[7]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(b[0]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(b[1]),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(b[2]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(b[3]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(b[4]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(b[5]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(b[6]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(b[7]),
    .X(net16));
 sky130_fd_sc_hd__buf_1 input17 (.A(cin),
    .X(net17));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(cout));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(sum[0]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(sum[1]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(sum[2]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(sum[3]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(sum[4]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(sum[5]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(sum[6]));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(sum[7]));
endmodule
