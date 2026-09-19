`timescale 1ns / 1ps

module cla8_tb;
    reg  [7:0] a, b;
    reg        cin;
    wire [7:0] sum;
    wire       cout;
    integer    i;
    integer    errors = 0;

    cla8 dut (
        .a    (a),
        .b    (b),
        .cin  (cin),
        .sum  (sum),
        .cout (cout)
    );

    initial begin
        $dumpfile("cla8.vcd");
        $dumpvars(0, cla8_tb);

        // Vài corner case kiểm tra tay trước
        a = 8'h00; b = 8'h00; cin = 0; #10; check_result;
        a = 8'hFF; b = 8'h01; cin = 0; #10; check_result;  // kỳ vọng cout=1
        a = 8'hFF; b = 8'hFF; cin = 1; #10; check_result;  // max + max + cin
        a = 8'h0F; b = 8'h01; cin = 0; #10; check_result;  // carry giữa 2 nibble

        // 200 test ngẫu nhiên
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
        reg [8:0] expected;
        begin
            expected = a + b + cin;  // 8-bit + 8-bit + 1-bit -> tự tràn thành 9-bit
            if ({cout, sum} !== expected) begin
                $display("MISMATCH: a=%0d b=%0d cin=%0d -> got {cout,sum}=%0d expected=%0d",
                          a, b, cin, {cout, sum}, expected);
                errors = errors + 1;
            end
        end
    endtask
endmodule