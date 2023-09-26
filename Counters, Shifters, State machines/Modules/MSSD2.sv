// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

// DATE "12/27/2020 02:26:26"

// 
// Device: Altera EP4CE6E22A7 Package TQFP144
// 

// 
// This Verilog file should be used for ModelSim-Altera (SystemVerilog) only
// 

`timescale 1 ps/ 1 ps

module MSSD (
	serIn,
	clk,
	p,
	dest,
	outvalid,
	error);
input 	reg serIn ;
input 	reg clk ;
output 	logic [3:0] p ;
output 	logic [1:0] dest ;
output 	logic outvalid ;
output 	logic error ;

// Design Ports Information
// p[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
// p[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
// p[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
// p[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
// dest[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
// dest[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
// outvalid	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
// error	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
// serIn	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
// clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("MSSD_v.sdo");
// synopsys translate_on

wire \p[0]~output_o ;
wire \p[1]~output_o ;
wire \p[2]~output_o ;
wire \p[3]~output_o ;
wire \dest[0]~output_o ;
wire \dest[1]~output_o ;
wire \outvalid~output_o ;
wire \error~output_o ;
wire \clk~input_o ;
wire \clk~inputclkctrl_outclk ;
wire \serIn~input_o ;
wire \C1|count_up~1_combout ;
wire \C1|count_up~2_combout ;
wire \C1|count_up~0_combout ;
wire \Selector2~0_combout ;
wire \C2|count_up[0]~9_combout ;
wire \~GND~combout ;
wire \C2|count_up[0]~10 ;
wire \C2|count_up[1]~11_combout ;
wire \C2|count_up[1]~12 ;
wire \C2|count_up[2]~13_combout ;
wire \C2|count_up[2]~14 ;
wire \C2|count_up[3]~15_combout ;
wire \C2|count_up[3]~16 ;
wire \C2|count_up[4]~17_combout ;
wire \S2|Add0~1_cout ;
wire \S2|Add0~2_combout ;
wire \C2|count_up[4]~18 ;
wire \C2|count_up[5]~19_combout ;
wire \S2|Add0~3 ;
wire \S2|Add0~4_combout ;
wire \C2|count_up[5]~20 ;
wire \C2|count_up[6]~21_combout ;
wire \S2|Add0~5 ;
wire \S2|Add0~6_combout ;
wire \C2|count_up[6]~22 ;
wire \C2|count_up[7]~23_combout ;
wire \S2|Add0~7 ;
wire \S2|Add0~8_combout ;
wire \C2|count_up[7]~24 ;
wire \C2|count_up[8]~25_combout ;
wire \S2|Add0~9 ;
wire \S2|Add0~10_combout ;
wire \C2|WideAnd0~0_combout ;
wire \C2|WideAnd0~1_combout ;
wire \Selector2~1_combout ;
wire \Selector2~2_combout ;
wire \pstate.xmit~q ;
wire \outvalid~0_combout ;
wire \pstate.stop~q ;
wire \Selector0~0_combout ;
wire \pstate.idle~q ;
wire \Selector1~0_combout ;
wire \pstate.second~q ;
wire \S1|t_out~3_combout ;
wire \S1|t_out~4_combout ;
wire \S1|t_out~5_combout ;
wire \S1|t_out~6_combout ;
wire \S1|t_out~7_combout ;
wire \S1|t_out~2_combout ;
wire \S1|t_out~1_combout ;
wire \S1|t_out~0_combout ;
wire \D1|out~0_combout ;
wire \D1|out~1_combout ;
wire \D1|out~2_combout ;
wire \D1|out~3_combout ;
wire \error~0_combout ;
wire [8:0] \C2|count_up ;
wire [3:0] \D1|out ;
wire [7:0] \S1|t_out ;
wire [2:0] \C1|count_up ;


hard_block auto_generated_inst(
	.devpor(devpor),
	.devclrn(devclrn),
	.devoe(devoe));

// Location: IOOBUF_X16_Y0_N23
cycloneive_io_obuf \p[0]~output (
	.i(\D1|out [0]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\p[0]~output_o ),
	.obar());
// synopsys translate_off
defparam \p[0]~output .bus_hold = "false";
defparam \p[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X16_Y0_N2
cycloneive_io_obuf \p[1]~output (
	.i(\D1|out [1]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\p[1]~output_o ),
	.obar());
// synopsys translate_off
defparam \p[1]~output .bus_hold = "false";
defparam \p[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X16_Y0_N9
cycloneive_io_obuf \p[2]~output (
	.i(\D1|out [2]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\p[2]~output_o ),
	.obar());
// synopsys translate_off
defparam \p[2]~output .bus_hold = "false";
defparam \p[2]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X18_Y0_N16
cycloneive_io_obuf \p[3]~output (
	.i(\D1|out [3]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\p[3]~output_o ),
	.obar());
// synopsys translate_off
defparam \p[3]~output .bus_hold = "false";
defparam \p[3]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X5_Y0_N23
cycloneive_io_obuf \dest[0]~output (
	.i(\S1|t_out [0]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\dest[0]~output_o ),
	.obar());
// synopsys translate_off
defparam \dest[0]~output .bus_hold = "false";
defparam \dest[0]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X5_Y0_N16
cycloneive_io_obuf \dest[1]~output (
	.i(\S1|t_out [1]),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\dest[1]~output_o ),
	.obar());
// synopsys translate_off
defparam \dest[1]~output .bus_hold = "false";
defparam \dest[1]~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X7_Y0_N2
cycloneive_io_obuf \outvalid~output (
	.i(\outvalid~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\outvalid~output_o ),
	.obar());
// synopsys translate_off
defparam \outvalid~output .bus_hold = "false";
defparam \outvalid~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y0_N16
cycloneive_io_obuf \error~output (
	.i(!\error~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\error~output_o ),
	.obar());
// synopsys translate_off
defparam \error~output .bus_hold = "false";
defparam \error~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X0_Y11_N8
cycloneive_io_ibuf \clk~input (
	.i(clk),
	.ibar(gnd),
	.o(\clk~input_o ));
// synopsys translate_off
defparam \clk~input .bus_hold = "false";
defparam \clk~input .simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G2
cycloneive_clkctrl \clk~inputclkctrl (
	.ena(vcc),
	.inclk({vcc,vcc,vcc,\clk~input_o }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~inputclkctrl_outclk ));
// synopsys translate_off
defparam \clk~inputclkctrl .clock_type = "global clock";
defparam \clk~inputclkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: IOIBUF_X13_Y0_N1
cycloneive_io_ibuf \serIn~input (
	.i(serIn),
	.ibar(gnd),
	.o(\serIn~input_o ));
// synopsys translate_off
defparam \serIn~input .bus_hold = "false";
defparam \serIn~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N6
cycloneive_lcell_comb \C1|count_up~1 (
// Equation(s):
// \C1|count_up~1_combout  = (!\C1|count_up [0] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\C1|count_up [0]),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\C1|count_up~1_combout ),
	.cout());
// synopsys translate_off
defparam \C1|count_up~1 .lut_mask = 16'h0F00;
defparam \C1|count_up~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y3_N7
dffeas \C1|count_up[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C1|count_up~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C1|count_up [0]),
	.prn(vcc));
// synopsys translate_off
defparam \C1|count_up[0] .is_wysiwyg = "true";
defparam \C1|count_up[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N30
cycloneive_lcell_comb \C1|count_up~2 (
// Equation(s):
// \C1|count_up~2_combout  = (\Selector1~0_combout  & (\C1|count_up [0] $ (\C1|count_up [1])))

	.dataa(\C1|count_up [0]),
	.datab(gnd),
	.datac(\C1|count_up [1]),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\C1|count_up~2_combout ),
	.cout());
// synopsys translate_off
defparam \C1|count_up~2 .lut_mask = 16'h5A00;
defparam \C1|count_up~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y3_N31
dffeas \C1|count_up[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C1|count_up~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C1|count_up [1]),
	.prn(vcc));
// synopsys translate_off
defparam \C1|count_up[1] .is_wysiwyg = "true";
defparam \C1|count_up[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N26
cycloneive_lcell_comb \C1|count_up~0 (
// Equation(s):
// \C1|count_up~0_combout  = (\Selector1~0_combout  & (\C1|count_up [2] $ (((\C1|count_up [1] & \C1|count_up [0])))))

	.dataa(\C1|count_up [1]),
	.datab(\C1|count_up [0]),
	.datac(\C1|count_up [2]),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\C1|count_up~0_combout ),
	.cout());
// synopsys translate_off
defparam \C1|count_up~0 .lut_mask = 16'h7800;
defparam \C1|count_up~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N27
dffeas \C1|count_up[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C1|count_up~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C1|count_up [2]),
	.prn(vcc));
// synopsys translate_off
defparam \C1|count_up[2] .is_wysiwyg = "true";
defparam \C1|count_up[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N28
cycloneive_lcell_comb \Selector2~0 (
// Equation(s):
// \Selector2~0_combout  = (\C1|count_up [0] & (\C1|count_up [1] & \C1|count_up [2]))

	.dataa(\C1|count_up [0]),
	.datab(gnd),
	.datac(\C1|count_up [1]),
	.datad(\C1|count_up [2]),
	.cin(gnd),
	.combout(\Selector2~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~0 .lut_mask = 16'hA000;
defparam \Selector2~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N8
cycloneive_lcell_comb \C2|count_up[0]~9 (
// Equation(s):
// \C2|count_up[0]~9_combout  = \C2|count_up [0] $ (VCC)
// \C2|count_up[0]~10  = CARRY(\C2|count_up [0])

	.dataa(gnd),
	.datab(\C2|count_up [0]),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\C2|count_up[0]~9_combout ),
	.cout(\C2|count_up[0]~10 ));
// synopsys translate_off
defparam \C2|count_up[0]~9 .lut_mask = 16'h33CC;
defparam \C2|count_up[0]~9 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X8_Y3_N26
cycloneive_lcell_comb \~GND (
// Equation(s):
// \~GND~combout  = GND

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\~GND~combout ),
	.cout());
// synopsys translate_off
defparam \~GND .lut_mask = 16'h0000;
defparam \~GND .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y3_N9
dffeas \C2|count_up[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C2|count_up[0]~9_combout ),
	.asdata(\~GND~combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~2_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C2|count_up [0]),
	.prn(vcc));
// synopsys translate_off
defparam \C2|count_up[0] .is_wysiwyg = "true";
defparam \C2|count_up[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N10
cycloneive_lcell_comb \C2|count_up[1]~11 (
// Equation(s):
// \C2|count_up[1]~11_combout  = (\C2|count_up [1] & (!\C2|count_up[0]~10 )) # (!\C2|count_up [1] & ((\C2|count_up[0]~10 ) # (GND)))
// \C2|count_up[1]~12  = CARRY((!\C2|count_up[0]~10 ) # (!\C2|count_up [1]))

	.dataa(\C2|count_up [1]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\C2|count_up[0]~10 ),
	.combout(\C2|count_up[1]~11_combout ),
	.cout(\C2|count_up[1]~12 ));
// synopsys translate_off
defparam \C2|count_up[1]~11 .lut_mask = 16'h5A5F;
defparam \C2|count_up[1]~11 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X9_Y3_N11
dffeas \C2|count_up[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C2|count_up[1]~11_combout ),
	.asdata(\~GND~combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~2_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C2|count_up [1]),
	.prn(vcc));
// synopsys translate_off
defparam \C2|count_up[1] .is_wysiwyg = "true";
defparam \C2|count_up[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N12
cycloneive_lcell_comb \C2|count_up[2]~13 (
// Equation(s):
// \C2|count_up[2]~13_combout  = (\C2|count_up [2] & (\C2|count_up[1]~12  $ (GND))) # (!\C2|count_up [2] & (!\C2|count_up[1]~12  & VCC))
// \C2|count_up[2]~14  = CARRY((\C2|count_up [2] & !\C2|count_up[1]~12 ))

	.dataa(\C2|count_up [2]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\C2|count_up[1]~12 ),
	.combout(\C2|count_up[2]~13_combout ),
	.cout(\C2|count_up[2]~14 ));
// synopsys translate_off
defparam \C2|count_up[2]~13 .lut_mask = 16'hA50A;
defparam \C2|count_up[2]~13 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X9_Y3_N13
dffeas \C2|count_up[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C2|count_up[2]~13_combout ),
	.asdata(\~GND~combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~2_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C2|count_up [2]),
	.prn(vcc));
// synopsys translate_off
defparam \C2|count_up[2] .is_wysiwyg = "true";
defparam \C2|count_up[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N14
cycloneive_lcell_comb \C2|count_up[3]~15 (
// Equation(s):
// \C2|count_up[3]~15_combout  = (\C2|count_up [3] & (!\C2|count_up[2]~14 )) # (!\C2|count_up [3] & ((\C2|count_up[2]~14 ) # (GND)))
// \C2|count_up[3]~16  = CARRY((!\C2|count_up[2]~14 ) # (!\C2|count_up [3]))

	.dataa(gnd),
	.datab(\C2|count_up [3]),
	.datac(gnd),
	.datad(vcc),
	.cin(\C2|count_up[2]~14 ),
	.combout(\C2|count_up[3]~15_combout ),
	.cout(\C2|count_up[3]~16 ));
// synopsys translate_off
defparam \C2|count_up[3]~15 .lut_mask = 16'h3C3F;
defparam \C2|count_up[3]~15 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X9_Y3_N15
dffeas \C2|count_up[3] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C2|count_up[3]~15_combout ),
	.asdata(\S1|t_out [2]),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~2_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C2|count_up [3]),
	.prn(vcc));
// synopsys translate_off
defparam \C2|count_up[3] .is_wysiwyg = "true";
defparam \C2|count_up[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N16
cycloneive_lcell_comb \C2|count_up[4]~17 (
// Equation(s):
// \C2|count_up[4]~17_combout  = (\C2|count_up [4] & (\C2|count_up[3]~16  $ (GND))) # (!\C2|count_up [4] & (!\C2|count_up[3]~16  & VCC))
// \C2|count_up[4]~18  = CARRY((\C2|count_up [4] & !\C2|count_up[3]~16 ))

	.dataa(gnd),
	.datab(\C2|count_up [4]),
	.datac(gnd),
	.datad(vcc),
	.cin(\C2|count_up[3]~16 ),
	.combout(\C2|count_up[4]~17_combout ),
	.cout(\C2|count_up[4]~18 ));
// synopsys translate_off
defparam \C2|count_up[4]~17 .lut_mask = 16'hC30C;
defparam \C2|count_up[4]~17 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N6
cycloneive_lcell_comb \S2|Add0~1 (
// Equation(s):
// \S2|Add0~1_cout  = CARRY(!\S1|t_out [2])

	.dataa(gnd),
	.datab(\S1|t_out [2]),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\S2|Add0~1_cout ));
// synopsys translate_off
defparam \S2|Add0~1 .lut_mask = 16'h0033;
defparam \S2|Add0~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N8
cycloneive_lcell_comb \S2|Add0~2 (
// Equation(s):
// \S2|Add0~2_combout  = (\S1|t_out [3] & ((\S2|Add0~1_cout ) # (GND))) # (!\S1|t_out [3] & (!\S2|Add0~1_cout ))
// \S2|Add0~3  = CARRY((\S1|t_out [3]) # (!\S2|Add0~1_cout ))

	.dataa(\S1|t_out [3]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\S2|Add0~1_cout ),
	.combout(\S2|Add0~2_combout ),
	.cout(\S2|Add0~3 ));
// synopsys translate_off
defparam \S2|Add0~2 .lut_mask = 16'hA5AF;
defparam \S2|Add0~2 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X9_Y3_N17
dffeas \C2|count_up[4] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C2|count_up[4]~17_combout ),
	.asdata(\S2|Add0~2_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~2_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C2|count_up [4]),
	.prn(vcc));
// synopsys translate_off
defparam \C2|count_up[4] .is_wysiwyg = "true";
defparam \C2|count_up[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N18
cycloneive_lcell_comb \C2|count_up[5]~19 (
// Equation(s):
// \C2|count_up[5]~19_combout  = (\C2|count_up [5] & (!\C2|count_up[4]~18 )) # (!\C2|count_up [5] & ((\C2|count_up[4]~18 ) # (GND)))
// \C2|count_up[5]~20  = CARRY((!\C2|count_up[4]~18 ) # (!\C2|count_up [5]))

	.dataa(gnd),
	.datab(\C2|count_up [5]),
	.datac(gnd),
	.datad(vcc),
	.cin(\C2|count_up[4]~18 ),
	.combout(\C2|count_up[5]~19_combout ),
	.cout(\C2|count_up[5]~20 ));
// synopsys translate_off
defparam \C2|count_up[5]~19 .lut_mask = 16'h3C3F;
defparam \C2|count_up[5]~19 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N10
cycloneive_lcell_comb \S2|Add0~4 (
// Equation(s):
// \S2|Add0~4_combout  = (\S1|t_out [4] & (!\S2|Add0~3  & VCC)) # (!\S1|t_out [4] & (\S2|Add0~3  $ (GND)))
// \S2|Add0~5  = CARRY((!\S1|t_out [4] & !\S2|Add0~3 ))

	.dataa(gnd),
	.datab(\S1|t_out [4]),
	.datac(gnd),
	.datad(vcc),
	.cin(\S2|Add0~3 ),
	.combout(\S2|Add0~4_combout ),
	.cout(\S2|Add0~5 ));
// synopsys translate_off
defparam \S2|Add0~4 .lut_mask = 16'h3C03;
defparam \S2|Add0~4 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X9_Y3_N19
dffeas \C2|count_up[5] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C2|count_up[5]~19_combout ),
	.asdata(\S2|Add0~4_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~2_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C2|count_up [5]),
	.prn(vcc));
// synopsys translate_off
defparam \C2|count_up[5] .is_wysiwyg = "true";
defparam \C2|count_up[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N20
cycloneive_lcell_comb \C2|count_up[6]~21 (
// Equation(s):
// \C2|count_up[6]~21_combout  = (\C2|count_up [6] & (\C2|count_up[5]~20  $ (GND))) # (!\C2|count_up [6] & (!\C2|count_up[5]~20  & VCC))
// \C2|count_up[6]~22  = CARRY((\C2|count_up [6] & !\C2|count_up[5]~20 ))

	.dataa(gnd),
	.datab(\C2|count_up [6]),
	.datac(gnd),
	.datad(vcc),
	.cin(\C2|count_up[5]~20 ),
	.combout(\C2|count_up[6]~21_combout ),
	.cout(\C2|count_up[6]~22 ));
// synopsys translate_off
defparam \C2|count_up[6]~21 .lut_mask = 16'hC30C;
defparam \C2|count_up[6]~21 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N12
cycloneive_lcell_comb \S2|Add0~6 (
// Equation(s):
// \S2|Add0~6_combout  = (\S1|t_out [5] & ((\S2|Add0~5 ) # (GND))) # (!\S1|t_out [5] & (!\S2|Add0~5 ))
// \S2|Add0~7  = CARRY((\S1|t_out [5]) # (!\S2|Add0~5 ))

	.dataa(gnd),
	.datab(\S1|t_out [5]),
	.datac(gnd),
	.datad(vcc),
	.cin(\S2|Add0~5 ),
	.combout(\S2|Add0~6_combout ),
	.cout(\S2|Add0~7 ));
// synopsys translate_off
defparam \S2|Add0~6 .lut_mask = 16'hC3CF;
defparam \S2|Add0~6 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X9_Y3_N21
dffeas \C2|count_up[6] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C2|count_up[6]~21_combout ),
	.asdata(\S2|Add0~6_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~2_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C2|count_up [6]),
	.prn(vcc));
// synopsys translate_off
defparam \C2|count_up[6] .is_wysiwyg = "true";
defparam \C2|count_up[6] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N22
cycloneive_lcell_comb \C2|count_up[7]~23 (
// Equation(s):
// \C2|count_up[7]~23_combout  = (\C2|count_up [7] & (!\C2|count_up[6]~22 )) # (!\C2|count_up [7] & ((\C2|count_up[6]~22 ) # (GND)))
// \C2|count_up[7]~24  = CARRY((!\C2|count_up[6]~22 ) # (!\C2|count_up [7]))

	.dataa(\C2|count_up [7]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\C2|count_up[6]~22 ),
	.combout(\C2|count_up[7]~23_combout ),
	.cout(\C2|count_up[7]~24 ));
// synopsys translate_off
defparam \C2|count_up[7]~23 .lut_mask = 16'h5A5F;
defparam \C2|count_up[7]~23 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N14
cycloneive_lcell_comb \S2|Add0~8 (
// Equation(s):
// \S2|Add0~8_combout  = (\S1|t_out [6] & (!\S2|Add0~7  & VCC)) # (!\S1|t_out [6] & (\S2|Add0~7  $ (GND)))
// \S2|Add0~9  = CARRY((!\S1|t_out [6] & !\S2|Add0~7 ))

	.dataa(gnd),
	.datab(\S1|t_out [6]),
	.datac(gnd),
	.datad(vcc),
	.cin(\S2|Add0~7 ),
	.combout(\S2|Add0~8_combout ),
	.cout(\S2|Add0~9 ));
// synopsys translate_off
defparam \S2|Add0~8 .lut_mask = 16'h3C03;
defparam \S2|Add0~8 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X9_Y3_N23
dffeas \C2|count_up[7] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C2|count_up[7]~23_combout ),
	.asdata(\S2|Add0~8_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~2_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C2|count_up [7]),
	.prn(vcc));
// synopsys translate_off
defparam \C2|count_up[7] .is_wysiwyg = "true";
defparam \C2|count_up[7] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N24
cycloneive_lcell_comb \C2|count_up[8]~25 (
// Equation(s):
// \C2|count_up[8]~25_combout  = \C2|count_up[7]~24  $ (!\C2|count_up [8])

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\C2|count_up [8]),
	.cin(\C2|count_up[7]~24 ),
	.combout(\C2|count_up[8]~25_combout ),
	.cout());
// synopsys translate_off
defparam \C2|count_up[8]~25 .lut_mask = 16'hF00F;
defparam \C2|count_up[8]~25 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N16
cycloneive_lcell_comb \S2|Add0~10 (
// Equation(s):
// \S2|Add0~10_combout  = \S2|Add0~9  $ (!\S1|t_out [7])

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\S1|t_out [7]),
	.cin(\S2|Add0~9 ),
	.combout(\S2|Add0~10_combout ),
	.cout());
// synopsys translate_off
defparam \S2|Add0~10 .lut_mask = 16'hF00F;
defparam \S2|Add0~10 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X9_Y3_N25
dffeas \C2|count_up[8] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\C2|count_up[8]~25_combout ),
	.asdata(\S2|Add0~10_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\Selector2~2_combout ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\C2|count_up [8]),
	.prn(vcc));
// synopsys translate_off
defparam \C2|count_up[8] .is_wysiwyg = "true";
defparam \C2|count_up[8] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N26
cycloneive_lcell_comb \C2|WideAnd0~0 (
// Equation(s):
// \C2|WideAnd0~0_combout  = (\C2|count_up [1] & (\C2|count_up [0] & (\C2|count_up [3] & \C2|count_up [2])))

	.dataa(\C2|count_up [1]),
	.datab(\C2|count_up [0]),
	.datac(\C2|count_up [3]),
	.datad(\C2|count_up [2]),
	.cin(gnd),
	.combout(\C2|WideAnd0~0_combout ),
	.cout());
// synopsys translate_off
defparam \C2|WideAnd0~0 .lut_mask = 16'h8000;
defparam \C2|WideAnd0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N0
cycloneive_lcell_comb \C2|WideAnd0~1 (
// Equation(s):
// \C2|WideAnd0~1_combout  = (\C2|count_up [7] & (\C2|count_up [5] & (\C2|count_up [4] & \C2|count_up [6])))

	.dataa(\C2|count_up [7]),
	.datab(\C2|count_up [5]),
	.datac(\C2|count_up [4]),
	.datad(\C2|count_up [6]),
	.cin(gnd),
	.combout(\C2|WideAnd0~1_combout ),
	.cout());
// synopsys translate_off
defparam \C2|WideAnd0~1 .lut_mask = 16'h8000;
defparam \C2|WideAnd0~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N2
cycloneive_lcell_comb \Selector2~1 (
// Equation(s):
// \Selector2~1_combout  = (\pstate.xmit~q  & (((!\C2|WideAnd0~1_combout ) # (!\C2|WideAnd0~0_combout )) # (!\C2|count_up [8])))

	.dataa(\pstate.xmit~q ),
	.datab(\C2|count_up [8]),
	.datac(\C2|WideAnd0~0_combout ),
	.datad(\C2|WideAnd0~1_combout ),
	.cin(gnd),
	.combout(\Selector2~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~1 .lut_mask = 16'h2AAA;
defparam \Selector2~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X9_Y3_N4
cycloneive_lcell_comb \Selector2~2 (
// Equation(s):
// \Selector2~2_combout  = (\Selector2~1_combout ) # ((\Selector2~0_combout  & \pstate.second~q ))

	.dataa(gnd),
	.datab(\Selector2~0_combout ),
	.datac(\pstate.second~q ),
	.datad(\Selector2~1_combout ),
	.cin(gnd),
	.combout(\Selector2~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~2 .lut_mask = 16'hFFC0;
defparam \Selector2~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X9_Y3_N5
dffeas \pstate.xmit (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector2~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\pstate.xmit~q ),
	.prn(vcc));
// synopsys translate_off
defparam \pstate.xmit .is_wysiwyg = "true";
defparam \pstate.xmit .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X8_Y3_N28
cycloneive_lcell_comb \outvalid~0 (
// Equation(s):
// \outvalid~0_combout  = (\pstate.xmit~q  & (\C2|WideAnd0~0_combout  & (\C2|WideAnd0~1_combout  & \C2|count_up [8])))

	.dataa(\pstate.xmit~q ),
	.datab(\C2|WideAnd0~0_combout ),
	.datac(\C2|WideAnd0~1_combout ),
	.datad(\C2|count_up [8]),
	.cin(gnd),
	.combout(\outvalid~0_combout ),
	.cout());
// synopsys translate_off
defparam \outvalid~0 .lut_mask = 16'h8000;
defparam \outvalid~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X8_Y3_N29
dffeas \pstate.stop (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\outvalid~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\pstate.stop~q ),
	.prn(vcc));
// synopsys translate_off
defparam \pstate.stop .is_wysiwyg = "true";
defparam \pstate.stop .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y3_N30
cycloneive_lcell_comb \Selector0~0 (
// Equation(s):
// \Selector0~0_combout  = (!\pstate.stop~q  & ((\pstate.idle~q ) # (!\serIn~input_o )))

	.dataa(gnd),
	.datab(\serIn~input_o ),
	.datac(\pstate.idle~q ),
	.datad(\pstate.stop~q ),
	.cin(gnd),
	.combout(\Selector0~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~0 .lut_mask = 16'h00F3;
defparam \Selector0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y3_N31
dffeas \pstate.idle (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\pstate.idle~q ),
	.prn(vcc));
// synopsys translate_off
defparam \pstate.idle .is_wysiwyg = "true";
defparam \pstate.idle .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N20
cycloneive_lcell_comb \Selector1~0 (
// Equation(s):
// \Selector1~0_combout  = (\serIn~input_o  & (((\pstate.second~q  & !\Selector2~0_combout )))) # (!\serIn~input_o  & (((\pstate.second~q  & !\Selector2~0_combout )) # (!\pstate.idle~q )))

	.dataa(\serIn~input_o ),
	.datab(\pstate.idle~q ),
	.datac(\pstate.second~q ),
	.datad(\Selector2~0_combout ),
	.cin(gnd),
	.combout(\Selector1~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~0 .lut_mask = 16'h11F1;
defparam \Selector1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N21
dffeas \pstate.second (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector1~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\pstate.second~q ),
	.prn(vcc));
// synopsys translate_off
defparam \pstate.second .is_wysiwyg = "true";
defparam \pstate.second .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N18
cycloneive_lcell_comb \S1|t_out~3 (
// Equation(s):
// \S1|t_out~3_combout  = (\serIn~input_o  & (\pstate.second~q  & !\Selector2~0_combout ))

	.dataa(\serIn~input_o ),
	.datab(gnd),
	.datac(\pstate.second~q ),
	.datad(\Selector2~0_combout ),
	.cin(gnd),
	.combout(\S1|t_out~3_combout ),
	.cout());
// synopsys translate_off
defparam \S1|t_out~3 .lut_mask = 16'h00A0;
defparam \S1|t_out~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N19
dffeas \S1|t_out[7] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\S1|t_out~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\S1|t_out [7]),
	.prn(vcc));
// synopsys translate_off
defparam \S1|t_out[7] .is_wysiwyg = "true";
defparam \S1|t_out[7] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N4
cycloneive_lcell_comb \S1|t_out~4 (
// Equation(s):
// \S1|t_out~4_combout  = (\S1|t_out [7] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(\S1|t_out [7]),
	.datac(gnd),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\S1|t_out~4_combout ),
	.cout());
// synopsys translate_off
defparam \S1|t_out~4 .lut_mask = 16'hCC00;
defparam \S1|t_out~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N5
dffeas \S1|t_out[6] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\S1|t_out~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\S1|t_out [6]),
	.prn(vcc));
// synopsys translate_off
defparam \S1|t_out[6] .is_wysiwyg = "true";
defparam \S1|t_out[6] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N2
cycloneive_lcell_comb \S1|t_out~5 (
// Equation(s):
// \S1|t_out~5_combout  = (\S1|t_out [6] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\S1|t_out [6]),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\S1|t_out~5_combout ),
	.cout());
// synopsys translate_off
defparam \S1|t_out~5 .lut_mask = 16'hF000;
defparam \S1|t_out~5 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N3
dffeas \S1|t_out[5] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\S1|t_out~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\S1|t_out [5]),
	.prn(vcc));
// synopsys translate_off
defparam \S1|t_out[5] .is_wysiwyg = "true";
defparam \S1|t_out[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N24
cycloneive_lcell_comb \S1|t_out~6 (
// Equation(s):
// \S1|t_out~6_combout  = (\S1|t_out [5] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(\S1|t_out [5]),
	.datac(gnd),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\S1|t_out~6_combout ),
	.cout());
// synopsys translate_off
defparam \S1|t_out~6 .lut_mask = 16'hCC00;
defparam \S1|t_out~6 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N25
dffeas \S1|t_out[4] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\S1|t_out~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\S1|t_out [4]),
	.prn(vcc));
// synopsys translate_off
defparam \S1|t_out[4] .is_wysiwyg = "true";
defparam \S1|t_out[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N30
cycloneive_lcell_comb \S1|t_out~7 (
// Equation(s):
// \S1|t_out~7_combout  = (\S1|t_out [4] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(\S1|t_out [4]),
	.datac(gnd),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\S1|t_out~7_combout ),
	.cout());
// synopsys translate_off
defparam \S1|t_out~7 .lut_mask = 16'hCC00;
defparam \S1|t_out~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N31
dffeas \S1|t_out[3] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\S1|t_out~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\S1|t_out [3]),
	.prn(vcc));
// synopsys translate_off
defparam \S1|t_out[3] .is_wysiwyg = "true";
defparam \S1|t_out[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N0
cycloneive_lcell_comb \S1|t_out~2 (
// Equation(s):
// \S1|t_out~2_combout  = (\S1|t_out [3] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\S1|t_out [3]),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\S1|t_out~2_combout ),
	.cout());
// synopsys translate_off
defparam \S1|t_out~2 .lut_mask = 16'hF000;
defparam \S1|t_out~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N1
dffeas \S1|t_out[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\S1|t_out~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\S1|t_out [2]),
	.prn(vcc));
// synopsys translate_off
defparam \S1|t_out[2] .is_wysiwyg = "true";
defparam \S1|t_out[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N22
cycloneive_lcell_comb \S1|t_out~1 (
// Equation(s):
// \S1|t_out~1_combout  = (\S1|t_out [2] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(\S1|t_out [2]),
	.datac(gnd),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\S1|t_out~1_combout ),
	.cout());
// synopsys translate_off
defparam \S1|t_out~1 .lut_mask = 16'hCC00;
defparam \S1|t_out~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N23
dffeas \S1|t_out[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\S1|t_out~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\S1|t_out [1]),
	.prn(vcc));
// synopsys translate_off
defparam \S1|t_out[1] .is_wysiwyg = "true";
defparam \S1|t_out[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X10_Y3_N28
cycloneive_lcell_comb \S1|t_out~0 (
// Equation(s):
// \S1|t_out~0_combout  = (\S1|t_out [1] & \Selector1~0_combout )

	.dataa(gnd),
	.datab(gnd),
	.datac(\S1|t_out [1]),
	.datad(\Selector1~0_combout ),
	.cin(gnd),
	.combout(\S1|t_out~0_combout ),
	.cout());
// synopsys translate_off
defparam \S1|t_out~0 .lut_mask = 16'hF000;
defparam \S1|t_out~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X10_Y3_N29
dffeas \S1|t_out[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\S1|t_out~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\S1|t_out [0]),
	.prn(vcc));
// synopsys translate_off
defparam \S1|t_out[0] .is_wysiwyg = "true";
defparam \S1|t_out[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y3_N24
cycloneive_lcell_comb \D1|out~0 (
// Equation(s):
// \D1|out~0_combout  = (!\S1|t_out [0] & (\serIn~input_o  & !\S1|t_out [1]))

	.dataa(\S1|t_out [0]),
	.datab(\serIn~input_o ),
	.datac(gnd),
	.datad(\S1|t_out [1]),
	.cin(gnd),
	.combout(\D1|out~0_combout ),
	.cout());
// synopsys translate_off
defparam \D1|out~0 .lut_mask = 16'h0044;
defparam \D1|out~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y3_N25
dffeas \D1|out[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\D1|out~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\D1|out [0]),
	.prn(vcc));
// synopsys translate_off
defparam \D1|out[0] .is_wysiwyg = "true";
defparam \D1|out[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y3_N6
cycloneive_lcell_comb \D1|out~1 (
// Equation(s):
// \D1|out~1_combout  = (\S1|t_out [0] & (\serIn~input_o  & !\S1|t_out [1]))

	.dataa(\S1|t_out [0]),
	.datab(\serIn~input_o ),
	.datac(gnd),
	.datad(\S1|t_out [1]),
	.cin(gnd),
	.combout(\D1|out~1_combout ),
	.cout());
// synopsys translate_off
defparam \D1|out~1 .lut_mask = 16'h0088;
defparam \D1|out~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y3_N7
dffeas \D1|out[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\D1|out~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\D1|out [1]),
	.prn(vcc));
// synopsys translate_off
defparam \D1|out[1] .is_wysiwyg = "true";
defparam \D1|out[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y3_N12
cycloneive_lcell_comb \D1|out~2 (
// Equation(s):
// \D1|out~2_combout  = (!\S1|t_out [0] & (\serIn~input_o  & \S1|t_out [1]))

	.dataa(\S1|t_out [0]),
	.datab(\serIn~input_o ),
	.datac(gnd),
	.datad(\S1|t_out [1]),
	.cin(gnd),
	.combout(\D1|out~2_combout ),
	.cout());
// synopsys translate_off
defparam \D1|out~2 .lut_mask = 16'h4400;
defparam \D1|out~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y3_N13
dffeas \D1|out[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\D1|out~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\D1|out [2]),
	.prn(vcc));
// synopsys translate_off
defparam \D1|out[2] .is_wysiwyg = "true";
defparam \D1|out[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y3_N10
cycloneive_lcell_comb \D1|out~3 (
// Equation(s):
// \D1|out~3_combout  = (\S1|t_out [0] & (\serIn~input_o  & \S1|t_out [1]))

	.dataa(\S1|t_out [0]),
	.datab(\serIn~input_o ),
	.datac(gnd),
	.datad(\S1|t_out [1]),
	.cin(gnd),
	.combout(\D1|out~3_combout ),
	.cout());
// synopsys translate_off
defparam \D1|out~3 .lut_mask = 16'h8800;
defparam \D1|out~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X13_Y3_N11
dffeas \D1|out[3] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\D1|out~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\D1|out [3]),
	.prn(vcc));
// synopsys translate_off
defparam \D1|out[3] .is_wysiwyg = "true";
defparam \D1|out[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X13_Y3_N8
cycloneive_lcell_comb \error~0 (
// Equation(s):
// \error~0_combout  = (\serIn~input_o ) # (!\pstate.stop~q )

	.dataa(gnd),
	.datab(\pstate.stop~q ),
	.datac(gnd),
	.datad(\serIn~input_o ),
	.cin(gnd),
	.combout(\error~0_combout ),
	.cout());
// synopsys translate_off
defparam \error~0 .lut_mask = 16'hFF33;
defparam \error~0 .sum_lutc_input = "datac";
// synopsys translate_on

assign p[0] = \p[0]~output_o ;

assign p[1] = \p[1]~output_o ;

assign p[2] = \p[2]~output_o ;

assign p[3] = \p[3]~output_o ;

assign dest[0] = \dest[0]~output_o ;

assign dest[1] = \dest[1]~output_o ;

assign outvalid = \outvalid~output_o ;

assign error = \error~output_o ;

endmodule

module hard_block (

	devpor,
	devclrn,
	devoe);

// Design Ports Information
// ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

input 	devpor;
input 	devclrn;
input 	devoe;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

wire \~ALTERA_ASDO_DATA1~~padout ;
wire \~ALTERA_FLASH_nCE_nCSO~~padout ;
wire \~ALTERA_DATA0~~padout ;
wire \~ALTERA_ASDO_DATA1~~ibuf_o ;
wire \~ALTERA_FLASH_nCE_nCSO~~ibuf_o ;
wire \~ALTERA_DATA0~~ibuf_o ;


endmodule

