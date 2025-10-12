module d_ff_tb;
reg clk;
reg en;
reg d;
wire q;
reg rst;

d_ff uut(.clk(clk),.d(d),.q(q),.en(en),.rst(rst));



initial begin
$display("Time | Clk | rst | d | q");
$monitor("%0t | %b |%b |%b|%b",$time,rst,en,d,q);
clk=0; rst=0; d=0; en=0;
rst=1;#5;
rst=0; #5; //if no timescale mentioned then it is in ns
en=1;d=1;#10;
d=0;#10;
rst=1;
#10;
$stop;
end
always #10 clk=~clk;
endmodule 