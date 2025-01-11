`timescale 1ns / 1ps

module csa(x,y,z,s,cout);
input [3:0] x,y,z;
output [4:0] s;
output cout;

wire [3:0] s1,c1,c2;

fa ins1(x[0],y[0],z[0],s1[0],c1[0]);
fa ins2(x[1],y[1],z[1],s1[1],c1[1]);
fa ins3(x[2],y[2],z[2],s1[2],c1[2]);
fa ins4(x[3],y[3],z[3],s1[3],c1[3]);
// second full
fa ins5(s1[1],c1[0],1'b0,s[1],c2[1]);
fa ins6(s1[2],c1[1],c2[1],s[2],c2[2]);
fa ins7(s1[3],c1[2],c2[2],s[3],c2[3]);
fa ins8(1'b0,c1[3],c2[3],s[4],cout);

assign s[0]=s1[0];
endmodule
