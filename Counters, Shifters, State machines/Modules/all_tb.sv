
`timescale 1ns/1ns
module mssd2_TB();
	logic clk = 0, sin = 1;
	wire [3:0] p, pp;
	wire outva, err, outvaa, errr;
	wire [1:0] d, dd;
	MSSD MM(sin, clk, p, d, outva, err);
	MSSD2 MM2(sin,clk, pp, dd, outvaa, errr);
	always #100 clk = ~clk;
	initial begin
	#150 sin = 0;
	#200 sin = 1;
	#400 sin = 0;
	#1000 sin = 1;
	
	#600 sin = 0;
	#200 sin = 0;
	#200 sin = 1;
	#200 sin = 1;
	#200 sin = 0;
	#200 sin = 0;
	
	#200 sin = 1;
	#500 $stop;
	end
endmodule
