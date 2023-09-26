`timescale 1ns/1ns
module count_9b(input clk,en, input [5:0] start, output[8:0] out, output logic co);
	logic [8:0] count_up;
	always @(posedge clk)
	begin
		if(en)
			count_up <= count_up + 1;
		else
			count_up <= {start, 3'b0};
	end
	assign out = count_up;
	assign co = &{out[0], out[1], out[2],out[3], out[4], out[5],out[6], out[7], out[8]};
endmodule
