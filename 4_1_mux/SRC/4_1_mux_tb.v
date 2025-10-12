module mux_tb4_1;
reg [1:0]sel;
reg [3:0]d;
wire q;
mux4_1 uut(.sel(sel),.i(d),.q(q));
initial begin 
$display("Time | sel | d | q");
$monitor("%0t | %b  | %b | %b",$time,sel,d,q);
d=4'b1010;
sel=2'b00;#10;
sel=2'b01;#10;
sel=2'b10;#10;
sel=2'b11;#10;
end
endmodule
