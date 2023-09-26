`timescale 1ns/1ns
module d_latch(input D, CLK, output Q, Q_b);
	wire W1, W2;
	nand N1(W1, D, CLK);
	nand N2(W2, W1, CLK);
	nand N3(Q_b, Q, W2);
	nand N4(Q, W1, Q_b);
endmodule
