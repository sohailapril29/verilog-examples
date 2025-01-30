`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2025 06:51:04 PM
// Design Name: 
// Module Name: tb_fsm1011
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


module tb_fsm1011;

reg din,clk,rst;
wire dout;

fsm1011 dut (din,clk,rst,dout);

initial begin
clk=0;
rst=0;
din=0;
end

always #5 clk=~clk;

initial begin
    $monitor("Time = %0t | clk = %b | rst = %b | din = %b | dout = %b",$time, clk, rst, din, dout);
end

initial begin
#2 rst=1;
@(posedge clk);
#1;

rst=0; din=0;
@(posedge clk);
#1;


din=0;
@(posedge clk);
#1;
din =1;
@(posedge clk);
din =1;
@(posedge clk);
#1;
din=0;
@(posedge clk);
#1;
din=1;
@(posedge clk);
#1;
@(posedge clk);
#5;

$stop;
end 
endmodule
