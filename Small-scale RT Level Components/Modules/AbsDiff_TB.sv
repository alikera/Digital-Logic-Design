`timescale 1ns/1ns
module absdiff_tb();
	logic [7:0]aa=00000000;
	logic [7:0]bb=00000000;
	
	wire [7:0] dd;
	absdiff diff_CUT(aa, bb, dd);
	initial begin
	
	repeat(16) #5000 {aa,bb} = $random;		
	
	#5000 $stop;
	end
endmodule


