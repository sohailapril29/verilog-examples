`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2025 06:50:26 PM
// Design Name: 
// Module Name: fsm1011
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fsm1011(din,clk,rst,dout);
input din,clk,rst;
output reg dout;

parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
reg [1:0] cs, ns;


always @ (posedge clk or posedge rst) begin
if(rst)
cs<=s0;
else
cs<=ns;
end

always @ (*) begin
ns=s0;
dout=0;

case(cs)
s0 : if(din)
begin
ns=s1;
dout=0;
end
else
begin
ns=s0;
dout=0;
end

s1 : if(din)
begin
ns=s1;
dout=0;
end
else
begin
ns=s2;
dout=0;
end

s2 : if(din)
begin
ns=s3;
dout=0;
end
else
begin
ns=s0;
dout=0;
end

s3 : if(din)
begin
ns=s1;
dout=1;
end
else
begin
ns=s2;
dout=0;
end

default : begin
ns=s0;
dout=0;
end
endcase
end
endmodule

