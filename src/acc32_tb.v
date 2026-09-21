`timescale 1ns / 1ps

module acc32_tb;
    reg         clk = 0;
    reg         rst;
    reg  [31:0] data_in;
    wire [31:0] acc;

    integer     i;
    integer     errors = 0;
    reg  [31:0] model_acc;

    acc32 dut (
        .clk     (clk),
        .rst     (rst),
        .data_in (data_in),
        .acc     (acc)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("acc32.vcd");
        $dumpvars(0, acc32_tb);

        rst = 1;
        data_in = 0;
        model_acc = 0;
        @(posedge clk);
        @(posedge clk);
        rst = 0;

        for (i = 0; i < 50; i = i + 1) begin
            data_in = $random;
            @(posedge clk);
            #1;
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