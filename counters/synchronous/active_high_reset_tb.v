`timescale 1ns / 1ps

module active_high_reset_tb;

    reg clk, rst;
    wire [3:0] count;

    // Instantiate the DUT (Device Under Test)
    active_high_reset dut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 ns
    end

    // Test sequence
  
  initial
    begin
       rst=0;
       #5;
      rst=1;
      #5;
      rst=0;
     #50 $stop;
    end

    // Display counter values on the terminal
    initial begin
        $monitor("Time=%0dns, clk=%b, rst=%b, count=%b", $time, clk, rst, count);
    end

endmodule

