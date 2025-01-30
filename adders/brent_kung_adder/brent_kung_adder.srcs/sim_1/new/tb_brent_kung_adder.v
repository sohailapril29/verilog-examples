`timescale 1ns / 1ps

module tb_BrentKungAdder4;

// Testbench signals
reg [3:0] A, B;         // 4-bit input A and B
reg Cin;                // Carry input
wire [3:0] Sum;         // 4-bit sum output
wire Cout;              // Carry output

// Instantiate the 4-bit Brent-Kung Adder
BrentKungAdder4 uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

// Test Vectors
initial begin
    // Monitor the outputs
    $monitor("Time: %0t | A: %b | B: %b | Cin: %b | Sum: %b | Cout: %b", 
              $time, A, B, Cin, Sum, Cout);
    
    // Apply Test Cases
    A = 4'b0000; B = 4'b0000; Cin = 1'b0; #10;
    A = 4'b1010; B = 4'b0101; Cin = 1'b0; #10;
    A = 4'b1111; B = 4'b0001; Cin = 1'b1; #10;
    A = 4'b1101; B = 4'b1011; Cin = 1'b0; #10;
    
    // Finish the simulation
    $finish;
end

endmodule
