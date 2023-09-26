`timescale 1ns/1ns
module TB_all();
	logic [0:7]aa=00000000;
	logic [0:7]bb=00000000;
	
	wire ee, ll;
	wire ee2, gg;
	eight_bit_Comparator eight_2_CUT(aa, bb, ee, ll);
	eight_bit_TCS eight_TCS_2_CUT(aa, bb, ee2, gg);

	initial begin

	#500 bb[0]=1;
	#500 aa[0]=1;
	#500 bb[0]=0;
	#500 aa[0]=0;
	#500 aa[0]=1;
	#500 bb[0]=1;
	#500 aa[2]=1;
	#500 bb[1]=1;
	#500 aa[1]=1;
	#500 bb[2]=1;
	#500 aa[3]=1;
	#500 bb[5]=1;
	#500 aa[4]=1;
	#500 bb[3]=1;
	#500 bb[4]=1;
	#500 aa[5]=1;
	#500 aa[7]=1;
	#500 bb[6]=1;
	#500 bb[7]=1;
	#500 aa[6]=1;

	#1000 $stop;
	end
endmodule
