module Mips32(
	input Clk
);

wire _op_code;
wire _alu_op;
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
//CONTROLE DE EXEC

ProcessUnit(
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
	.RegWrite(_reg_write)
);

ControlUnit(
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
