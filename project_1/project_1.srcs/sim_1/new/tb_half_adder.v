`timescale 1ns / 1ps

module tb_ha;

    // Inputs
    reg a, b;

    // Outputs
    wire sum, co;

    // Instantiate the Unit Under Test (UUT)
    ha uut (
        .a(a),
        .b(b),
        .sum(sum),
        .co(co)
    );

    // Test stimulus
    initial begin
        // Initialize inputs
        a = 0; b = 0; // Test case 1: a=0, b=0
        a = 0; b = 1; #5;  // Test case 2: a=0, b=1
        a = 1; b = 0; #5;  // Test case 3: a=1, b=0
        a = 1; b = 1; #5;  // Test case 4: a=1, b=1

        // Stop simulation
        #10;
        $stop;
    end

    // Monitor changes in signals for debugging
    initial begin
        $monitor("Time = %0t | a = %b, b = %b | sum = %b, co = %b", $time, a, b, sum, co);
    end

endmodule
