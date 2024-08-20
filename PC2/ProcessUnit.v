/*Módulo de processamento 32bits*/

module ProcessUnit(
	input Clk,
	output [5:0] OpCode,
	input AluOP,
	input RegDst,
	input Branch,
	input JumpReg,
	input Jump,
	input Jal,
	input And,
	input MemRead,
	input MemToReg,
	input MemWrite,
	input Immediate, //ALUSrc
	input RegWrite
);

wire [31:0] _pc_out;
wire [31:0] _instruction;
wire [31:0] _reg_to_mem_dest;
wire [31:0] _data_read1;
wire [31:0] _data_read2;
wire [31:0] _reg_write;

wire [4:0] _rs;
wire [4:0] _rt;
wire [4:0] _rd;
wire [15:0] _immi;
wire [31:0] _immi_extended;
wire [25:0] _immj;
wire [4:0] _shamt;

wire [31:0] _imme_or_data_read2;

wire [31:0] _alu_out;
wire _alu_res_sig;

wire _pc_in;

wire _data_memory_out;

wire _write_data;

ProgramCounter(
	.Clk(Clk), 
	.PcIn(_pc_in),
	.PcOut(_pc_out),
	.Jump(Jump)
);

InstructionMemory(
	.Clk(Clk), 
	.Addr(_pc_out), 
	.InstrOut(_instruction)
);

InstructionParser(
	.InstrIn(_instruction),
	.Op(OpCode),
	.Rs(_rs),
	.Rt(_rt),
	.Rd(_rd),
	.Immi(_immi),
	.Immj(_immj),
	.Shamt(_shamt)
);

RtAndRdMux(
	.Rt(_rt),
	.Rd(_rd),
	.RegDst(RegDst),
	.InstrOut(_reg_write)
);

Registers(
	.Clk(Clk),
	.ReadReg1(_rs),
	.ReadReg2(_rt),
	.WriteReg(_reg_write),
	.WriteData(_write_data),
	.RegWrite(RegWrite),
	.Jal(Jal),
	.DataRead1(_data_read1),
	.DataRead2(_data_read2)
);

SignalExtend(
	.Immi(_immi),
	.ImmiExtended(_immi_extended)
);

Alu32Mux(
	.DataRead2(_data_read2),
	.ImmediateData(_immi_extended),
	.Immediate(Immediate), //ALUSrc
	.DataOut(_imme_or_data_read2)
);

ALU32 (
	.OP1(_data_read1),
	.OP2(_imme_or_data_read2),
	.Out(_alu_out),
	.AluOP(AluOP),
	.Shamt(_shamt),
	.Zero(_alu_res_sig)
);

PCMux(
	.Jump(Jump),
	.JumpReg(JumpReg),
	.And(And),
	.AluRes(_alu_res_sig),
	.ExtendedImm(_immi_extended),
	.Instruction(_instruction),
	.Reg(_data_read1),
	.PCOut(_pc_out),
	.Out(_pc_in)
);

DataMemory(
	.Clk(Clk),
	.WriteData(DataRead2),
	.Addr(_alu_out),
	.MemWrite(MemWrite),
	.MemRead(MemRead),
	.DataRead(_data_memory_out)
);

DataMemMux(
	.AluOut(_alu_out),
	.ReadData(_data_memory_out),
	.MemToReg(MemToReg),
	.WriteData(_write_data)
);

endmodule
