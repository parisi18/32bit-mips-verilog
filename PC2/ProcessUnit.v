/*Módulo de processamento 32bits*/
/*
INSTRUÇÕES SELECIONADAS:
Lógicas:
    - ADD
    - SUB
    - MULT
    - DIV
Aritméticas:
    - AND
    - OR
    - Shift Left
    - Shift Right
Transferência de Dados:
    - LOAD
    - STORE
Branchs condicionais:
    - BEQ
    - BNE
Comparação:
    - SLT
Jump incondicional:
    - JUMP
    - JAL
*/

module ProcessUnit(
	input clk,
	input [31:0] instr,
	input write_enable
);
	
wire [31:0] fetched_instr;
wire [31:0] instr_in;
wire [5:0] op;
wire [4:0] rs;
wire [4:0] rt;
wire [4:0] rd;
wire [15:0] immi;
wire [25:0] immj;
wire [4:0] shamt;
wire [5:0] funct;

ProgramCounter(
	.clk, 
	.instr_in(instr), 
	.instr_out(fetched_instr),
	.write_enable(write_enable)
);

InstructionMemory(
	.clk, 
	.instr_in(fetched_instr), 
	.instr_out()
);

InstructionParser(
	.instr_in(fetched_instr),
	.op,
	.rs,
	.rt,
	.rd,
	.immi,
	.immj,
	.shamt,
	.funct
);

Registers(
	.clk, 
	.rs,
	.rt,
	.write_addr(),
	.write_reg(),
	.write_enable(),
	.rd1(),
	.rd2()
);

ALU32 (
	
);

//DataMemory();

endmodule
