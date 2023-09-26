`timescale 1ns/1ns
module absdiff (input [7:0] A,B, output [7:0] Diff);
	wire [7:0] smal, big, increment;
	wire eq, gt, co;

	ncs #8 n8cs(A,B,eq,gt);

	assign smal = gt ? B : A;
	assign big = gt ? A : B;

	nmi #8 n8mi({~smal[7],~smal[6],~smal[5],~smal[4],~smal[3],~smal[2],~smal[1],~smal[0]},
		increment, co);
	nma #8 n8ma(increment, big, Diff, co);
endmodule


