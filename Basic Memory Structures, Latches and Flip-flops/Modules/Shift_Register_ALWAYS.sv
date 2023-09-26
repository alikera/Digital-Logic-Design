`timescale 1ns/1ns
module shift_register_always(input [7:0] In, input clk, rst, sIn, output logic [7:0] Out, output sOut);
	always @ (posedge clk, posedge rst) begin
		if (rst == 0)
			Out <= {sIn, In[7:1]};
		else
			Out <= 8'b0;
	end
	assign sOut = In[0];
endmodule
