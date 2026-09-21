`timescale 1ns / 1ps

module cla32_tb;
    reg  [31:0] a, b;
    reg         cin;
    wire [31:0] sum;
    wire        cout;
    integer     i;
    integer     errors = 0;

    cla32 dut (
        .a    (a),
        .b    (b),
        .cin  (cin),
        .sum  (sum),
        .cout (cout)
    );

    initial begin
        $dumpfile("cla32.vcd");
        $dumpvars(0, cla32_tb);

        a = 32'h00000000; b = 32'h00000000; cin = 0; #10; check_result;
        a = 32'hFFFFFFFF; b = 32'h00000001; cin = 0; #10; check_result;
        a = 32'hFFFFFFFF; b = 32'hFFFFFFFF; cin = 1; #10; check_result;

        for (i = 0; i < 200; i = i + 1) begin
            a   = $random;
            b   = $random;
            cin = $random;
            #10;
            check_result;
        end

        if (errors == 0)
            $display("ALL TESTS PASSED");
        else
            $display("%0d TEST(S) FAILED", errors);

        $finish;
    end

    task check_result;
        reg [32:0] expected;
        begin
            expected = a + b + cin;
            if ({cout, sum} !== expected) begin
                $display("MISMATCH: a=%0d b=%0d cin=%0d -> got=%0d expected=%0d",
                          a, b, cin, {cout, sum}, expected);
                errors = errors + 1;
            end
        end
    endtask
endmodule