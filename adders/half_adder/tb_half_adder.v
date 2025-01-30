module ha_tb;

  reg a, b;
  wire sum, co;

  ha dut (a,b,sum,co);

  initial begin
  $monitor("a=%b,b=%b,sum=%b,co=%b",a,b,sum,co);
  a = 0; b = 0; #5;
  a = 0; b = 1; #5;
  a = 1; b = 0; #5;
  a = 1; b = 1; #5;
  // $finish;  // Remove or comment this out
end

endmodule
