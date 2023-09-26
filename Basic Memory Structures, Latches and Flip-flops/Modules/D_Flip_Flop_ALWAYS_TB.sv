`timescale 1ns/1ns
module d_flip_flop_always_TB();
	logic dd = 1, cc = 1, rr = 0;
	wire qq,qb;
	d_flip_flop_always d_flip_flop_always_CUT(dd, cc, rr, qq, qb);
	
	always #99
		cc = ~cc;

	initial begin

		repeat(12) #230 dd = ~dd;

		#5000 $stop;
	end

	always #472
		rr = ~rr;
endmodule


