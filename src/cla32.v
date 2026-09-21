module cla32 (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire        cin,
    output       [31:0] sum,
    output              cout
);

    wire [8:0] carry;
    assign carry[0] = cin;
    assign cout = carry[8];

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : cla_blocks
            cla4 block (
                .a    (a[i*4 + 3 : i*4]),
                .b    (b[i*4 + 3 : i*4]),
                .cin  (carry[i]),
                .sum  (sum[i*4 + 3 : i*4]),
                .cout (carry[i+1])
            );
        end
    endgenerate

endmodule