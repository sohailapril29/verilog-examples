`timescale 1ns / 1ps


module fa(a,b,c,sum,carry);
input a,b,c;
output sum,carry;

assign sum = a^b^c;
assign carry=a&b | b&c| a&c;

endmodule


