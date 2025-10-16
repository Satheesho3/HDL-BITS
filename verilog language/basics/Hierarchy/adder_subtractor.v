module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,cin,
    output [31:0] sum
);
    wire c;
    wire [31:0]w=b^{32{sub}};
    add16 lower(.a(a[15:0]),.b(w[15:0]),.cin(sub),.sum(sum[15:0]),.cout(c));
    add16 upper(.a(a[31:16]),.b(w[31:16]),.cin(c),.sum(sum[31:16]),.cout());
endmodule
