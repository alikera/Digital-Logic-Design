`timescale 1ns/1ns
module d_latch_delay(input D, CLK, output Q, Q_b);
	wire W1, W2;
	nand#8 N1(W1, D, CLK);
	nand#8 N2(W2, W1, CLK);
	nand#8 N3(Q_b, Q, W2);
	nand#8 N4(Q, W1, Q_b);
endmodule

