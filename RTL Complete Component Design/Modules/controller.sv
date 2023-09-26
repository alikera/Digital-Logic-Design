`timescale 1ns/1ns
module controller(input clk, rst, start, co, output logic done, ld_x, init_t, ld_t, init_r, ld_r, z_c, 
		en_c, s_mux, s_signop, input flag);
	parameter [2:0] idle = 0,Initialization = 1,Begin = 2, 
	                Mult1 = 3,Mult2 = 4,Add = 5;
    logic [2:0] ps, ns;
	always @(ps, co, start) begin
		ns <= idle;
		case (ps)
			idle:
				ns <= (start) ? Initialization : idle;
				
			Initialization:
				ns <= (start) ? Initialization : Begin;
				
			Begin:
				ns <= Mult1;
				
			Mult1:
				ns <= Mult2;
				
			Mult2:
				ns <= Add;
				
			Add:
				ns <= (co || flag) ? idle : Mult1;
				
		endcase
	end

	always @(ps, co, start) begin
		done <= 1'b0; 
		ld_x <= 1'b0; 
		init_t <= 1'b0; 
		ld_t <= 1'b0;
		init_r <= 1'b0; 
		ld_r <= 1'b0; 
		z_c <= 1'b0; 
		en_c <= 1'b0; 
		s_mux <= 1'b0;
		
		case (ps)
			idle:
				done <= 1'b1;
				
			Begin: begin
			    s_signop <= 1'b0;
			    ld_x <= 1'b1;
				init_r <= 1'b1;
				init_t <= 1'b1;
				z_c <= 1'b1;
			end
			
			Mult1: begin
				s_mux <= 1'b0;
				ld_t <= 1'b1;
			end
			
			Mult2: begin
				s_mux <= 1'b1;
				ld_t <= 1'b1;
			end
			
			Add: begin
				s_signop <= ~s_signop;
				ld_r <= 1'b1;
				en_c <= 1'b1;
			end
			
		endcase
	end

	always @(posedge clk, posedge rst) begin
		if (rst)
			ps <= idle;
		else
			ps <= ns;
	end

endmodule