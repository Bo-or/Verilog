module d_ff(
input wire d,
input wire en,
input wire rst,
input wire clk,
output reg q);
always@(posedge clk or posedge rst)begin
if (rst)
q<=1'b0;
else if (en)
q<=d;
end
endmodule

