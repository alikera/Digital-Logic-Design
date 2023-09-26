`timescale 1ns/1ns
module tma_tb();
	logic [1:0]aa=00;
	logic [1:0]bb=00;
	logic ii = 0;
	
	wire ss0, ss1;
	wire cc;
	tma TMA_CUT(aa, bb, ii, ss0, ss1, cc);
	initial begin

	#500 aa[1]=1;
	#500 ii = 1;
	#500 bb[1]=1;
	#500 ii = 0;
	#500 bb[0]=1;
	#500 ii = 1;
	#500 aa[0]=1;
	#500 ii = 0;

	#1000 $stop;
	end
endmodule




