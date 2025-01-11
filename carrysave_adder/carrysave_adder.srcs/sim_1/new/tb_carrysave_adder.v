`timescale 1ns / 1ps



module tb_csa;
reg [3:0] x,y,z;
  wire [4:0] s;
  wire cout;
  
  
  csa uut (
    .x(x),
    .y(y),
    .z(z),
    .s(s),
    .cout(cout)
  );

  initial begin
    $monitor("Time = %0t | x = %b, y = %b, z = %b | s = %b, cout = %b", $time, x, y, z, s, cout);

    x = 4'b0001; y = 4'b0010; z = 4'b0011; #10;
  x = 4'b0001; y = 4'b0010; z = 4'b0001; #10;

    $stop;
  end
endmodule
