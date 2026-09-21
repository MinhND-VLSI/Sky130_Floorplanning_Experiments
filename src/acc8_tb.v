`timescale 1ns / 1ps

module acc8_tb;
    reg        clk = 0;
    reg        rst;
    reg  [7:0] data_in;
    wire [7:0] acc;

    integer    i;
    integer    errors = 0;
    reg  [7:0] model_acc;   // "mô hình" tính tay song song để so sánh

    acc8 dut (
        .clk     (clk),
        .rst     (rst),
        .data_in (data_in),
        .acc     (acc)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("acc8.vcd");
        $dumpvars(0, acc8_tb);

        // Reset
        rst = 1;
        data_in = 0;
        model_acc = 0;
        @(posedge clk);
        @(posedge clk);
        rst = 0;

        // Chạy 50 vòng, mỗi vòng cộng thêm giá trị ngẫu nhiên
        for (i = 0; i < 50; i = i + 1) begin
            data_in = $random;
            @(posedge clk);
            #1; // đợi 1ns sau cạnh clock để tín hiệu ổn định trước khi check
            model_acc = model_acc + data_in;
            if (acc !== model_acc) begin
                $display("MISMATCH tai vong %0d: acc=%0d model=%0d", i, acc, model_acc);
                errors = errors + 1;
            end
        end

        if (errors == 0)
            $display("ALL TESTS PASSED");
        else
            $display("%0d TEST(S) FAILED", errors);

        $finish;
    end
endmodule