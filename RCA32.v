

module adder1bit(s, cout, a, b, cin);

	input a, b;
	input cin;
	output s;
	output cout;
	
	assign s = (~a & ~b & cin) + (~a & b & ~cin) + (a & ~b & ~cin) + ( a & b & cin);
	assign cout = (a & b) + (a & cin) + (b & cin);

endmodule


module adder4bit(s4, cout4, a4, b4, cin4);

	input [3:0] a4, b4;
	input cin4;
	output [3:0] s4;
	output cout4;
	wire  [2:0] w;
	
	adder1bit first(s4[0], w[0], a4[0], b4[0], cin4);
	adder1bit second(s4[1], w[1], a4[1], b4[1], w[0]);
	adder1bit third(s4[2], w[2], a4[2], b4[2], w[1]);
	adder1bit fourth(s4[3], cout4, a4[3], b4[3], w[2]);

endmodule


module adder2byte(s2b, cout2b, a2b, b2b, cin2b);

	input [15:0] a2b, b2b;
	input cin2b;
	output [15:0] s2b;
	output cout2b;
	wire  [2:0] wb;
	
	adder4bit byte1(s2b[3:0], wb[0], a2b[3:0], b2b[3:0], cin2b);
	adder4bit byte2(s2b[7:4], wb[1], a2b[7:4], b2b[7:4], wb[0]);
	adder4bit byte3(s2b[11:8], wb[2], a2b[11:8], b2b[11:8], wb[1]);
	adder4bit byte4(s2b[15:12], cout2b, a2b[15:12], b2b[15:12], wb[2]);	
	
	
endmodule


module RCA32 (S, Cout, A, B, Cin);

	input [31:0] A, B;
	input 			Cin;
	output [31:0] S;
	output			Cout;
	
	adder2byte add1(S[15:0], w1, A[15:0], B[15:0], Cin);
	adder2byte add2(S[31:16], Cout, A[31:16], B[31:16], w1);

endmodule
