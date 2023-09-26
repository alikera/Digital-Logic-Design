`timescale 1ns/1ns
module demux_4b(input clk, sin, input [1:0] selector, output logic [3:0] out);
	always @(posedge clk) begin
		out <= 4'b0;
		if(selector == 2'b00)
			out[0] <= sin;
		
		if(selector == 2'b01)
			out[1] <= sin;

		if(selector == 2'b10)
			out[2] <= sin;

		if(selector == 2'b11)
			out[3] <= sin;
	end
endmodule