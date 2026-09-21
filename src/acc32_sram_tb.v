`timescale 1ns / 1ps

module acc32_sram_tb;
    reg         clk = 0;
    reg         rst;
    reg         wr_en;
    reg  [7:0]  wr_addr;
    reg  [31:0] wr_data;
    wire [31:0] acc_out;

    integer     i;
    integer     errors = 0;
    reg  [31:0] model_mem [0:255];

    reg  [7:0]  m_rd_addr;
    reg         m_valid_d1, m_valid_d2, m_valid_d3;
    reg  [31:0] m_dout0_q;
    reg  [31:0] m_acc;

    // **ĐẶT KHAI BÁO BIẾN Ở NGOÀI KHỐI ALWAYS**
    reg  [31:0] m_sram_dout; 

    acc32_sram dut (
        .clk(clk), .rst(rst), .wr_en(wr_en),
        .wr_addr(wr_addr), .wr_data(wr_data), .acc_out(acc_out)
    );

    always #5 clk = ~clk;

    // Model mirror CHÍNH XÁC cấu trúc thật, không tính offset bằng tay
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            m_rd_addr   <= 8'b0;
            m_valid_d1  <= 1'b0;
            m_valid_d2  <= 1'b0;
            m_valid_d3  <= 1'b0;
            m_dout0_q   <= 32'b0;
            m_acc       <= 32'b0;
            m_sram_dout <= 32'b0; 
        end else begin
            // Đọc mất 1 chu kỳ để ra sram_dout, mất thêm 1 chu kỳ để chốt vào dout0_q
            m_sram_dout <= model_mem[m_rd_addr]; 
            m_dout0_q   <= m_sram_dout; 

            if (!wr_en) begin
                m_rd_addr  <= m_rd_addr + 1'b1;
                m_valid_d1 <= 1'b1;
            end else begin
                m_valid_d1 <= 1'b0;
            end
            
            m_valid_d2 <= m_valid_d1;
            m_valid_d3 <= m_valid_d2;
            
            if (m_valid_d2)
                m_acc <= m_acc + m_dout0_q;
        end
    end

    initial begin
        $dumpfile("acc32_sram.vcd");
        $dumpvars(0, acc32_sram_tb);

        rst = 1; wr_en = 0; wr_addr = 0; wr_data = 0;
        @(posedge clk); #1;
        @(posedge clk); #1;
        rst = 0;

        wr_en = 1;
        for (i = 0; i < 16; i = i + 1) begin
            wr_addr = i;
            wr_data = $random;
            model_mem[i] = wr_data;
            @(posedge clk); #1;
        end
        wr_en = 0;

        for (i = 0; i < 22; i = i + 1) begin
            @(posedge clk); #1;
            $display("t=%0t | rd_addr=%0d acc_out=%0d | m_acc=%0d",
                      $time, dut.rd_addr, acc_out, m_acc);
            
            // **KIỂM TRA LỖI DỰA TRÊN m_valid_d2**
            if (m_valid_d2) begin
                if (acc_out !== m_acc) begin
                    $display("MISMATCH tai chu ky %0d: acc_out=%0d model=%0d", i, acc_out, m_acc);
                    errors = errors + 1;
                end
            end
        end

        if (errors == 0) $display("ALL TESTS PASSED");
        else $display("%0d TEST(S) FAILED", errors);
        $finish;
    end
endmodule