`timescale 1ns/1ns
module nma_tb();
	logic [7:0]aa=00000000;
	logic [7:0]bb=00000000;
	
	wire [7:0] ss;
	wire cc;
	nma#8 eight_TMA_CUT(aa, bb, ss, cc);
	initial begin

	#500 aa[7]=1;
	#500 bb[7]=1;
	#500 aa[5]=1;
	#500 bb[6]=1;
	#500 aa[6]=1;
	#500 bb[5]=1;
	#500 aa[4]=1;
	#500 bb[2]=1;
	#500 aa[3]=1;
	#500 bb[4]=1;
	#500 bb[3]=1;
	#500 aa[2]=1;
	#500 aa[0]=1;
	#500 bb[1]=1;
	#500 bb[0]=1;
	#500 aa[1]=1;

	#1000 $stop;
	end
endmodule



