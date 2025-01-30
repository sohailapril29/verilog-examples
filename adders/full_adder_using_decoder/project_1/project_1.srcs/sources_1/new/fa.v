module decoder(
    input a,b,cin,
    output [7:0] y
    );
    
    assign y[0] = ~a&~b&~cin;
    assign y[1] = ~a&~b&cin;
    assign y[2] = ~a&b&~cin;
    assign y[3] = ~a&b&cin;
    assign y[4] = a&~b&~cin;
    assign y[5] = a&~b&cin;
    assign y[6] = a&b&~cin;
    assign y[7] = a&b&cin;
endmodule


module fa_decoder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire [7:0] adder_y;

decoder dut(
.a(a),
.b(b),
.cin(cin),
.y(adder_y)
);
assign sum= adder_y[1] | adder_y[2] |adder_y[4] |adder_y[7];
assign carry= adder_y[3] | adder_y[5] |adder_y[6] |adder_y[7];

endmodule