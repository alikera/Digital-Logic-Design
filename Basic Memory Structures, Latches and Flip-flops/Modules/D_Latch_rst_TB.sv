`timescale 1ns/1ns
module d_latch_rst_TB();
	logic dd = 1, cc = 1, rr = 0;
	wire qq,qb;
	d_latch_rst d_latch_rst_CUT(dd, cc, rr, qq, qb);
	
	always #290
		cc = ~cc;

	initial begin

		repeat(12) #197 dd = ~dd;

		#5000 $stop;
	end

	always #371
		rr = ~rr;
endmodule

