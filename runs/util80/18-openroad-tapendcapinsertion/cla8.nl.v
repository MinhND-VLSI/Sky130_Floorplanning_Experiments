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

 sky130_fd_sc_hd__nor2_2 _39_ (.A(b[3]),
    .B(a[3]),
    .Y(_00_));
 sky130_fd_sc_hd__or2_2 _40_ (.A(b[3]),
    .B(a[3]),
    .X(_01_));
 sky130_fd_sc_hd__and2_2 _41_ (.A(b[3]),
    .B(a[3]),
    .X(_02_));
 sky130_fd_sc_hd__nor2_2 _42_ (.A(_00_),
    .B(_02_),
    .Y(_03_));
 sky130_fd_sc_hd__and2_2 _43_ (.A(b[2]),
    .B(a[2]),
    .X(_04_));
 sky130_fd_sc_hd__nor2_2 _44_ (.A(b[2]),
    .B(a[2]),
    .Y(_05_));
 sky130_fd_sc_hd__nor2_2 _45_ (.A(_04_),
    .B(_05_),
    .Y(_06_));
 sky130_fd_sc_hd__and2_2 _46_ (.A(b[1]),
    .B(a[1]),
    .X(_07_));
 sky130_fd_sc_hd__nand2_2 _47_ (.A(b[0]),
    .B(a[0]),
    .Y(_08_));
 sky130_fd_sc_hd__or2_2 _48_ (.A(b[0]),
    .B(a[0]),
    .X(_09_));
 sky130_fd_sc_hd__nand2_2 _49_ (.A(_08_),
    .B(_09_),
    .Y(_10_));
 sky130_fd_sc_hd__a21bo_2 _50_ (.A1(cin),
    .A2(_09_),
    .B1_N(_08_),
    .X(_11_));
 sky130_fd_sc_hd__nor2_2 _51_ (.A(b[1]),
    .B(a[1]),
    .Y(_12_));
 sky130_fd_sc_hd__nor2_2 _52_ (.A(_07_),
    .B(_12_),
    .Y(_13_));
 sky130_fd_sc_hd__a21oi_2 _53_ (.A1(_11_),
    .A2(_13_),
    .B1(_07_),
    .Y(_14_));
 sky130_fd_sc_hd__o21ba_2 _54_ (.A1(_05_),
    .A2(_14_),
    .B1_N(_04_),
    .X(_15_));
 sky130_fd_sc_hd__xnor2_2 _55_ (.A(_03_),
    .B(_15_),
    .Y(sum[3]));
 sky130_fd_sc_hd__xnor2_2 _56_ (.A(_06_),
    .B(_14_),
    .Y(sum[2]));
 sky130_fd_sc_hd__xor2_2 _57_ (.A(_11_),
    .B(_13_),
    .X(sum[1]));
 sky130_fd_sc_hd__xnor2_2 _58_ (.A(cin),
    .B(_10_),
    .Y(sum[0]));
 sky130_fd_sc_hd__and2_2 _59_ (.A(b[7]),
    .B(a[7]),
    .X(_16_));
 sky130_fd_sc_hd__nand2_2 _60_ (.A(b[7]),
    .B(a[7]),
    .Y(_17_));
 sky130_fd_sc_hd__or2_2 _61_ (.A(b[7]),
    .B(a[7]),
    .X(_18_));
 sky130_fd_sc_hd__nand2_2 _62_ (.A(_17_),
    .B(_18_),
    .Y(_19_));
 sky130_fd_sc_hd__or2_2 _63_ (.A(b[6]),
    .B(a[6]),
    .X(_20_));
 sky130_fd_sc_hd__nand2_2 _64_ (.A(b[6]),
    .B(a[6]),
    .Y(_21_));
 sky130_fd_sc_hd__or2_2 _65_ (.A(b[5]),
    .B(a[5]),
    .X(_22_));
 sky130_fd_sc_hd__nand2b_2 _66_ (.A_N(_22_),
    .B(_21_),
    .Y(_23_));
 sky130_fd_sc_hd__nand2_2 _67_ (.A(b[4]),
    .B(a[4]),
    .Y(_24_));
 sky130_fd_sc_hd__or2_2 _68_ (.A(b[4]),
    .B(a[4]),
    .X(_25_));
 sky130_fd_sc_hd__nand2_2 _69_ (.A(_24_),
    .B(_25_),
    .Y(_26_));
 sky130_fd_sc_hd__a211o_2 _70_ (.A1(_01_),
    .A2(_04_),
    .B1(_07_),
    .C1(_02_),
    .X(_27_));
 sky130_fd_sc_hd__a21oi_2 _71_ (.A1(_11_),
    .A2(_13_),
    .B1(_27_),
    .Y(_28_));
 sky130_fd_sc_hd__o31ai_2 _72_ (.A1(b[2]),
    .A2(a[2]),
    .A3(_02_),
    .B1(_01_),
    .Y(_29_));
 sky130_fd_sc_hd__nor2_2 _73_ (.A(_28_),
    .B(_29_),
    .Y(_30_));
 sky130_fd_sc_hd__o31ai_2 _74_ (.A1(_26_),
    .A2(_28_),
    .A3(_29_),
    .B1(_24_),
    .Y(_31_));
 sky130_fd_sc_hd__nand2_2 _75_ (.A(b[5]),
    .B(a[5]),
    .Y(_32_));
 sky130_fd_sc_hd__nand2_2 _76_ (.A(_21_),
    .B(_32_),
    .Y(_33_));
 sky130_fd_sc_hd__o211a_2 _77_ (.A1(_31_),
    .A2(_33_),
    .B1(_20_),
    .C1(_23_),
    .X(_34_));
 sky130_fd_sc_hd__xnor2_2 _78_ (.A(_19_),
    .B(_34_),
    .Y(sum[7]));
 sky130_fd_sc_hd__nand2_2 _79_ (.A(_20_),
    .B(_21_),
    .Y(_35_));
 sky130_fd_sc_hd__nand2_2 _80_ (.A(_22_),
    .B(_32_),
    .Y(_36_));
 sky130_fd_sc_hd__a21bo_2 _81_ (.A1(_22_),
    .A2(_31_),
    .B1_N(_32_),
    .X(_37_));
 sky130_fd_sc_hd__xnor2_2 _82_ (.A(_35_),
    .B(_37_),
    .Y(sum[6]));
 sky130_fd_sc_hd__xnor2_2 _83_ (.A(_31_),
    .B(_36_),
    .Y(sum[5]));
 sky130_fd_sc_hd__xnor2_2 _84_ (.A(_26_),
    .B(_30_),
    .Y(sum[4]));
 sky130_fd_sc_hd__nand2_2 _85_ (.A(_17_),
    .B(_21_),
    .Y(_38_));
 sky130_fd_sc_hd__o221a_2 _86_ (.A1(_16_),
    .A2(_20_),
    .B1(_37_),
    .B2(_38_),
    .C1(_18_),
    .X(cout));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_15 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_16 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_17 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_18 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_20 ();
endmodule
