module Mips32(
	input Clk,
	input [17:0] SW,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [6:0] HEX3,
	output [6:0] HEX4,
	output [6:0] HEX5,
	output [6:0] HEX6,
	output [6:0] HEX7
);

wire [5:0] _op_code;
wire [5:0] _alu_op;
wire _reg_dst;
wire _branch;
wire _jump_reg;
wire _jump;
wire _jal;
wire _and;
wire _mem_read;
wire _mem_to_reg;
wire _mem_write;
wire _immediate;
wire _reg_write;
wire _print;

wire _has_input;

wire [15:0] _sws_value;

wire [32:0] _hex_output;

wire _filtered_clk;

FrequencyDivisor frequency_divisor(
	.Clk(Clk),
	.FilteredClk(_filtered_clk)
);

ClockSelector clk_selector(
	.Clk(Clk),
	.Play(SW[17]),
	.SetOriginal(SW[16]),
	.FilteredClk(_filtered_clk),
	.SelectedClk(_selected_clk)
);

InputInterface input_interface(
	.Clk(_selected_clk), 
	.SwInput(SW),
	.SwValues(_sws_value),
	.InputSig(_has_input)
);

ProcessUnit process_unit(
	.Input(_sws_value),
	.Clk(_selected_clk), 
	.OpCode(_op_code),
	.AluOP(_alu_op),
	.RegDst(_reg_dst),
	.Branch(_branch),
	.JumpReg(_jump_reg),
	.Jump(_jump),
	.Jal(_jal),
	.And(_and),
	.MemRead(_mem_read),
	.MemToReg(_mem_to_reg),
	.MemWrite(_mem_write),
	.Immediate(_immediate),
	.RegWrite(_reg_write),
	.Print(_print),
	.HexOutput(_hex_output)
);

ControlUnit control_unit(
	.OpCode(_op_code),
	.AluOP(_alu_op),
	.RegDst(_reg_dst),
	.Branch(_branch),
	.JumpReg(_jump_reg),
	.Jump(_jump),
	.Jal(_jal),
	.And(_and),
	.MemRead(_mem_read),
	.MemToReg(_mem_to_reg),
	.MemWrite(_mem_write),
	.Immediate(_immediate),
	.RegWrite(_reg_write),
	.Print(_print)
);

OutputInterface output_interface(
	.Input(_hex_output),
	.Hex0(HEX0),
	.Hex1(HEX1),
	.Hex2(HEX2),
	.Hex3(HEX3),
	.Hex4(HEX4),
	.Hex5(HEX5),
	.Hex6(HEX6),
	.Hex7(HEX7)
);

endmodule
