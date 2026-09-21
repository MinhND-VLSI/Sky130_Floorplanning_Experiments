module acc32_sram (
    input  wire        clk,
    input  wire        rst,
    input  wire        wr_en,
    input  wire [7:0]  wr_addr,
    input  wire [31:0] wr_data,
    output wire [31:0] acc_out
);
    reg [7:0]  rd_addr;
    reg        valid_d1, valid_d2, valid_d3;
    reg [31:0] dout0_q;      // Chốt dout0 tại posedge, cắt đứt phụ thuộc vào negedge

    wire [31:0] dout0;
    wire [31:0] unused_dout1; // Dây ảo để nhận tín hiệu không dùng từ chân dout1 của SRAM

    wire [7:0]  addr0  = wr_en ? wr_addr : rd_addr;
    wire        web0   = wr_en ? 1'b0 : 1'b1;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            rd_addr  <= 8'b0;
            valid_d1 <= 1'b0;
            valid_d2 <= 1'b0;
            valid_d3 <= 1'b0;
            dout0_q  <= 32'b0;
        end else begin
            dout0_q <= dout0;   // Luôn chốt dout0 hiện tại vào thanh ghi mỗi posedge

            if (!wr_en) begin
                rd_addr  <= rd_addr + 1'b1;
                valid_d1 <= 1'b1;
            end else begin
                valid_d1 <= 1'b0;
            end
            valid_d2 <= valid_d1;
            valid_d3 <= valid_d2;
        end
    end

    sky130_sram_1kbyte_1rw1r_32x256_8 sram0 (
        .clk0   (clk),
        .csb0   (1'b0),
        .web0   (web0),
        .wmask0 (4'b1111),
        .addr0  (addr0),
        .din0   (wr_data),
        .dout0  (dout0),
        .clk1   (1'b0),
        .csb1   (1'b1),
        .addr1  (8'b0),
        .dout1  (unused_dout1)
    );

    acc32 acc_core (
        .clk     (clk),
        .rst     (rst),
        // Sử dụng valid_d2 thay vì valid_d3
        .data_in (valid_d2 ? dout0_q : 32'b0),  
        .acc     (acc_out)
    );
endmodule