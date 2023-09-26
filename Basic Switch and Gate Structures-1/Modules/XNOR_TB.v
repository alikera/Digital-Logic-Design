`timescale 1ns/1ns
module XNOR_TB();
	reg aa=0, bb=0;
	wire ww;

	my_xnor XCUT(aa,bb,ww);
	initial begin
	#17 bb=1;
	#17 aa=1;
	#17 bb=0;
	#17 bb=1;
	#50 $stop;
	end
endmodule