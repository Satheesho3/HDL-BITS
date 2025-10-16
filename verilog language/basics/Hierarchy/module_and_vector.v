module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    reg [7:0]w,w1,w2;
     my_dff8 dff1(clk,d,w);
    my_dff8 dff2(clk,w,w1);
    my_dff8 dff3(clk,w1,w2);

    always @(*)begin
        case (sel)
            2'b00:q=d;
            2'b01:q=w;
            2'b10:q=w1;
            2'b11:q=w2;
        endcase
    end
endmodule
