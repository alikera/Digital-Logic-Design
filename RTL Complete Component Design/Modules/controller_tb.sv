`timescale 1ns/1ns
module controller_tb();
	logic clk, rst, start, flag, co;

	wire done, ld_x, init_t, ld_t, init_r, ld_r, z_c, en_c, s_mux, s_signop;

    controller controller(clk, rst, start, co,
        done, ld_x, init_t, ld_t, init_r, ld_r, z_c, en_c, s_mux, s_signop, flag);

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        start = 1'b0;
        co = 1'b0;
        flag = 1'b0;
        #10 rst = 1'b0;
    end
    
    always #10 clk = ~clk;
    
    initial begin
    #50 start = 1'b1;
    #50 start = 1'b0;
    #50 co = 1'b1;
    #50 co = 1'b0;
    #50 start = 1'b1;
    #50 start = 1'b0;
    #50 flag = 1'b1;
    #50 co = 1'b1;
    #50 flag = 1'b0;
    #50 co = 1'b0;
    #50 start = 1'b1;
    #50 start = 1'b0;

    #100 $stop;
    end
endmodule


