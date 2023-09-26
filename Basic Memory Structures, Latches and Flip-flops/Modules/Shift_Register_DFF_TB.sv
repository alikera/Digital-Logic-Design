`timescale 1ns/1ns
module shift_register_dff_TB();
	logic ss = 1, cc = 1, rr = 0;
	wire [7:0] oo;
	wire so;
	shift_register_dff shift_register_dff_CUT(cc, rr, ss, oo, so);
	
	always #100
		cc = ~cc;

	initial begin
		#300 rr = 1;
		#300 rr = 0;
		repeat(8) #1000 ss = ~ss;

		#1500 $stop;
	end
	always #3000
		rr = ~rr;
endmodule