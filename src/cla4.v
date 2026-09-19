module cla4(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire cin,
    output [3:0] sum,
    output cout
);

wire [3:0] p;
wire [3:0] g;
assign p = a ^ b;
assign g = a & b;

wire [3:0] c;
assign c[0] = cin;

assign c[1] = g[0] | (p[0] & cin);                                         
assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);                    
assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);  
assign cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1])
            | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);
genvar i;
generate 
    for(i = 0; i < 4; i = i+1) begin: sum_gen
            assign sum[i] = p[i] ^ c[i];
        end
endgenerate 

endmodule 
