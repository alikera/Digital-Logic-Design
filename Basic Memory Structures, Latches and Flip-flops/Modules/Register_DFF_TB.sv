`timescale 1ns/1ns
module register_dff_TB();
	logic [7:0] ii = 10110001;
	logic cc = 1, rr = 0;
	wire [7:0] oo;
	register_dff register_dff_CUT(ii, cc, rr, oo);
	
	always #1000
		cc = ~cc;

	initial begin
		repeat(12) #697 ii = $random;
		#3000 $stop;
	end

	initial begin
		#1500 rr = 1;
		#3500 rr = 0;
		#7500 rr = 1;
		#9500 rr = 0;
		#3000 $stop;
	end
		
endmodule


