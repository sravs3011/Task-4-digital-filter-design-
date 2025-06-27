module fir_filter(
input clk,
input reset,
input[7:0]x_in,
output reg[15:0]y_out
);
parameter N=4;
//coefficients:b0=1, b1=2, b2=3, b3=4
reg[7:0]coeff[0:N-1];
initial begin
coeff[0]=8'd1;
coeff[1]=8'd2;
coeff[2]=8'd3;
coeff[3]=8'd4;
end
reg[7:0]x_reg[0:N-1];
integer i;
always@(posedge clk or posedge reset) begin
if(reset)begin
for(i=0;i<=N;i=i+1) begin
x_reg[i]<=8'd0;
end
y_out<=16'd0;
end else begin
for(i=N-1;i>0;i=i-1)begin
x_reg[i]<=x_reg[i-1];
end
x_reg[0]<=x_in;
y_out<=0;
for(i=0;i<N;i=i+1) begin
y_out<=y_out+x_reg[i]*coeff [i];
end
end
end
endmodule
