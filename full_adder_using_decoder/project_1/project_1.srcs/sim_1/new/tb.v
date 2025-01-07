`timescale 1ns / 1ps



module tb_fa_decoder;

reg a,b,cin;
wire sum,carry;


fa_decoder dut(a,b,cin,sum,carry);

initial begin
a=0; b=0; cin=0;
end
initial begin
$monitor("time =%0t, a=%b,b=%b,cin=%b,sum=%b,carry=%b",$time,a,b,cin,sum,carry);

a=0; b=0; cin=0; #5
a=0; b=0; cin=1; #5
a=0; b=1; cin=0; #5
a=0; b=1; cin=1; #5
a=1; b=0; cin=0; #5
a=1; b=0; cin=1; #5
a=1; b=1; cin=0; #5
a=1; b=1; cin=1; #5
#5 $stop;
end
endmodule
