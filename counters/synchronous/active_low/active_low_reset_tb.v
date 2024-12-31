`timescale 1ns / 1ps
module active_low_reset_tb;

reg clk,rst;
wire [3:0] count;

active_low_reset dut(
.clk(clk),
.rst(rst),
.count(count)
);

initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin
rst = 1;

#5 rst = 0;
#5 rst = 1;
#20;
#5 rst = 0;
#5 rst = 1;

#50 $stop;
end

 initial begin
        $monitor("Time=%0dns, clk=%b, rst=%b, count=%b", $time, clk, rst, count);
    end
endmodule
