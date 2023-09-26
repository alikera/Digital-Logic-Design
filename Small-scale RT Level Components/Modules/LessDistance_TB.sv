`timescale 1ns/1ns
module lessdistance_tb();
	logic [7:0]rr=00000000;
	logic [7:0]aa=00000000;
	logic [7:0]bb=00000000;
	
	wire [7:0] dd;
	lessdistance less_CUT(rr,aa, bb, dd);
	initial begin
	
	repeat(16) #5000 {aa,bb} = $random;
	repeat(16) #5000 {aa,bb, rr} = $random;

	#5000 $stop;
	end
endmodule



