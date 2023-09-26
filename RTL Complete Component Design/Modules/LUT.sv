`timescale 1ns/1ns
module lut(input [2:0] adr, input clk, output [7:0] data);
    logic [7:0] temp_data;
	always @(adr) begin
		case(adr+1'b1)
			1: temp_data = 8'h80;//1/2
			2: temp_data = 8'h15;//1/12
			3: temp_data = 8'h08;//1/30
			4: temp_data = 8'h04;//1/56
			5: temp_data = 8'h02;//1/90
			6: temp_data = 8'h01;//1/132
			7: temp_data = 8'h01;//1/182
			8: temp_data = 8'h01;//1/240
			
        endcase
    end
    assign data = temp_data;
endmodule