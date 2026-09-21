module acc32 (
    input  wire        clk,
    input  wire        rst,
    input  wire [31:0] data_in,
    output reg  [31:0] acc
);
    wire [31:0] sum_next;
    wire        cout_unused;

    cla32 adder (
        .a    (acc),
        .b    (data_in),
        .cin  (1'b0),
        .sum  (sum_next),
        .cout (cout_unused)
    );

    always @(posedge clk or posedge rst) begin
        if (rst)
            acc <= 32'b0;
        else
            acc <= sum_next;
    end
endmodule