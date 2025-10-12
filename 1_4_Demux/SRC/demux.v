module demux4_1(
input wire i,
output reg [3:0]q,
input wire[1:0]sel);

always@(*) begin
q=4'b0000;   //remeber to always intialise the output to 0 for demux otherwise the output would show xxxx
case(sel)
2'b00: q[0]=i;
2'b01: q[1]=i;
2'b10: q[2]=i;
2'b11: q[3]=i;
endcase
end
endmodule
