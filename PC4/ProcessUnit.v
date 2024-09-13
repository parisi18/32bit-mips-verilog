/*Módulo de processamento 32bits*/

module ProcessUnit(
	input [15:0] Input,
	input Clk,
	output [5:0] OpCode,
	input [5:0] AluOP,
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
	input RegWrite,
	input Print,
	output [31:0] HexOutput
);

wire [31:0] _pc_out;
wire [31:0] _instruction;
wire [31:0] _reg_to_mem_dest;
wire [31:0] _data_read1;
wire [31:0] _data_read2;
wire [4:0] _write_reg;
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
wire [31:0] _pc_in;
wire [31:0] _data_memory_out;
wire [31:0] _write_data;
wire [15:0] _sw_values;


ProgramCounter program_counter(
	.Clk(Clk),
	.PcIn(_pc_in),
	.PcOut(_pc_out),
	.Jump(Jump),
	.And(And),
	.AluRes(_alu_res_sig),
	.JumpReg(JumpReg)
);

InstructionMemory instruction_memory(
	.Clk(Clk), 
	.Addr(_pc_out), 
	.Input(Input),
	.InstrOut(_instruction)
);

InstructionParser instruction_parser(
	.InstrIn(_instruction),
	.Op(OpCode),
	.Rs(_rs),
	.Rt(_rt),
	.Rd(_rd),
	.Immi(_immi),
	.Immj(_immj),
	.Shamt(_shamt)
);

RtAndRdMux rt_and_rd_mux(
	.Rt(_rt),
	.Rd(_rd),
	.RegDst(RegDst),
	.Reg(_write_reg)
);

SignalExtend sig_extend(
	.Immi(_immi),
	.ImmiExtended(_immi_extended)
);

Registers regs(
	.Clk(Clk),
	.ReadReg1(_rs),
	.ReadReg2(_rt),
	.WriteReg(_write_reg),
	.WriteData(_write_data),
	.ImmiAddr(_pc_out),
	.RegWrite(RegWrite),
	.Jal(Jal),
	.DataRead1(_data_read1),
	.DataRead2(_data_read2)
);

RegToOutputInterface reg_to_out_interface(
	.Clk(Clk),
	.DataRead1(_data_read1),
	.Print(Print),
	.HexOutput(HexOutput)
);

Alu32Mux alu_32_mux(
	.DataRead2(_data_read2),
	.ImmediateData(_immi_extended),
	.Immediate(Immediate), //ALUSrc
	.DataOut(_imme_or_data_read2)
);

Alu32 alu_32(
	.Op1(_data_read1),
	.Op2(_imme_or_data_read2),
	.Out(_alu_out),
	.AluOP(AluOP),
	.Shamt(_shamt),
	.Zero(_alu_res_sig)
);

PCMux pc_mux(
	.Jump(Jump),
	.JumpReg(JumpReg),
	.And(And),
	.AluRes(_alu_res_sig),
	.ExtendedImm(_immi_extended),
	.Addr(_immi_extended),
	.Reg(_data_read1),
	.PCOut(_pc_out),
	.Out(_pc_in)
);

DataMemory data_mem(
	.Clk(Clk),
	.WriteData(_data_read2),
	.Addr(_alu_out),
	.MemWrite(MemWrite),
	.MemRead(MemRead),
	.DataRead(_data_memory_out)
);

DataMemMux data_mem_mux(
	.AluOut(_alu_out),
	.ReadData(_data_memory_out),
	.MemToReg(MemToReg),
	.WriteData(_write_data)
);

endmodule
