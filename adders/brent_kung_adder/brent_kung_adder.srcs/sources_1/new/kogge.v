`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2025 11:44:58 AM
// Design Name: 
// Module Name: kogge
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



module kogge (
    input [3:0] A,   // 4-bit input A
    input [3:0] B,   // 4-bit input B
    input Cin,       // Carry input
    output [3:0] Sum, // 4-bit sum output
    output Cout      // Carry output
);

// Internal wires for generates and propagates
wire [3:0] G, P, C;
wire [3:0] S;

// Generate and propagate signals
assign G = A & B;          // Generate
assign P = A ^ B;          // Propagate

// Level 1 carry calculation (C0, C1, C2, C3)
assign C[0] = Cin;          // First carry input
assign C[1] = G[0] | (P[0] & Cin);
assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);

// Sum calculation (S0, S1, S2, S3)
assign S[0] = P[0] ^ C[0];
assign S[1] = P[1] ^ C[1];
assign S[2] = P[2] ^ C[2];
assign S[3] = P[3] ^ C[3];

// Output Sum and Carry
assign Sum = S;
assign Cout = C[3]; // Final carry out

endmodule
