`timescale 1ns/1ns
module AND_TB();
	reg jj=0, ee=0;
	wire ww;

	my_and ACUT(jj,ee,ww);
	initial begin
	#50 jj=1;
	#0 ee=1;
	#50 ee=0;

	#100 $stop;
	end
endmodule