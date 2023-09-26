`timescale 1ns/1ns
module BCS_TB();
	reg aa, bb, ee, gg;
	wire w1,w2;

	my_bcs CUT(aa,bb,ee,gg,w1,w2);
	initial begin
	#50 aa=0;
	#0 bb=1;
	#0 gg=0;
	#50 ee=0;
	#100 aa=1;
	#0 bb=0;
	#100 aa=0;
	#0 bb=1;
	#0 ee=1;
	#100 aa=1;
	#0 bb=0;
	#0 ee=0;
	
	#100 $stop;
	end
endmodule
