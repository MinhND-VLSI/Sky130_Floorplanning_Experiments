module cla8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    input  wire       cin,
    output      [7:0] sum,
    output             cout
);
wire c4;   

cla4 low(
    .a    (a[3:0]),
    .b    (b[3:0]),
    .cin  (cin),
    .sum  (sum[3:0]),
    .cout (c4)
);

cla4 high(
    .a    (a[7:4]),
    .b    (b[7:4]),
    .cin  (c4),
    .sum  (sum[7:4]),
    .cout (cout)
);

endmodule