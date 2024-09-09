module Mips32(
	input Clk,
	output [31:0] reg_3,
	output [31:0] reg_2,
	output [31:0] reg_4,
	output [31:0] reg_0,
	output [31:0] instr_dbg,
	output [31:0] pc_debug
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

//TODO: 
//INTERFACE ENTRADA
//INTERFACE SAIDA	

ProcessUnit process_unit(
	.Clk(Clk), 
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
	.debug_reg_3(reg_3),
	.debug_reg_2(reg_2),
	.debug_reg_4(reg_4),
	.debug_reg_0(reg_0),
	.instruction_debug(instr_dbg),
	.pc_debug(pc_debug)
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
	.RegWrite(_reg_write)
);

endmodule
