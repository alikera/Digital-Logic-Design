`timescale 1ns/1ns
module AND3in_TB();
	reg aa=1, bb=0, ee=0;
	wire ww;

	my_and3in A3CUT(aa,bb,ee,ww);
	initial begin
	#50 aa=0;
	#0 bb=1;
	#0 ee=1;
	#50 aa=1;
	#0 bb=0;
	#0 ee=0;
	
	#100 $stop;
	end
endmodule
