`timescale 1ns/1ns
module shift_register_d_TB();
	logic ss = 0, cc = 1, rr = 0;
	wire [7:0] oo;
	wire so;
	shift_register_d shift_register_d_CUT(cc, rr, ss, oo, so);
	
	always #40
		cc = ~cc;

	initial begin
		#300 rr = 1;
		#300 rr = 0;
		repeat(8) #459 ss = ~ss;

		#1500 $stop;
	end
endmodule