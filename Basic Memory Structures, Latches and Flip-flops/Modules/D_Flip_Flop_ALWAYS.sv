`timescale 1ns/1ns
module d_flip_flop_always(input D, CLK, rst, output logic Q, Q_b);
	always @(posedge CLK) begin
		if(rst == 0) begin
			Q <= D;
			Q_b <= ~D;
		end
	
		else begin
			Q <= 1'b0;
			Q_b <= 1'b1;
		end
	end
endmodule

