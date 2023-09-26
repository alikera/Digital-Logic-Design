`timescale 1ns/1ns
module d_latch_TB();
	logic dd = 1, cc = 1;
	wire qq,qb;
	d_latch_delay d_latch_d_CUT(dd, cc, qq, qb);
	
	always #200
	cc = ~cc;

	initial begin

	repeat(12) #120 dd = ~dd;

	#100 $stop;
	end
endmodule

