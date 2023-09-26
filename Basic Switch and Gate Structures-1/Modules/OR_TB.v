`timescale 1ns/1ns
module OR_TB();
	reg kk=1, gg=1;
	wire ww;

	my_or OCUT(kk,gg,ww);
	initial begin
	#50 kk=0;
	#0 gg=0;
	#50 gg=1;
	
	#100 $stop;
	end
endmodule
