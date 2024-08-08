`timescale 10ns/100ps


module tb();
	
	reg [31:0] a, b;
	reg cin;
	wire [31:0] s;
	wire cout;
	integer i, j;
	
	RCA32 test(s, cout, a, b, cin);
	
	initial begin
	
	a = 0; b = 0; cin = 0; #10;

		
	for(i = 0; i < 2; i = i + 1)
	begin
		for(j = 0; j < 2; j = j + 1)
		begin
			a = i; b = j; #10;
		end
	end
	
	#50;
	
	for(i = 0; i < 6; i = i + 1)
	begin
		for(j = 0;j < 6; j= j + 1)
		begin
			a = i; b = j; #10;
		end
	end

	
	end
	
endmodule