`timescale 1ns/1ns
module shift_8b(input clk, en, si, output logic[7:0] out);
	logic[7:0] t_out;
 	always @(posedge clk) begin
		if(en)
			t_out <= {si, t_out[7:1]};
		else
			t_out <= 8'b0;
	end
	assign out = t_out;
endmodule
