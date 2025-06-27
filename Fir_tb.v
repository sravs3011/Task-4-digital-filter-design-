`timescale 1ns/1ps
module fir_tb;
reg clk;
reg reset;
reg[7:0]x_in;
wire[15:0]y_out;
fir_filter uut(
. clk(clk),
. reset(reset),
. x_in(x_in),
. y_out(y_out)
);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0,fir_tb);
clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
x_in=0;
#10;
reset=0;
x_in=8'd1;#10;
x_in=8'd2;#10;
x_in=8'd3;#10;
x_in=8'd4;#10;
x_in=8'd5;#10;
x_in=8'd0;#10;
$finish;
end
endmodule
