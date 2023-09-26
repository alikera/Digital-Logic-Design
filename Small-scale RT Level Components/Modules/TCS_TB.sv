`timescale 1ns/1ns
module tcs_tb();
	logic [1:0]aa=00;
	logic [1:0]bb=00;
	
	wire ee, gg;
	tcs TCS_CUT(aa, bb, 1, 0, ee, gg);
	initial begin

	#500 aa[1]=1;
	#500 bb[1]=1;
	#500 bb[0]=1;
	#500 aa[0]=1;

	#1000 $stop;
	end
endmodule



