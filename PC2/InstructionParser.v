module InstructionParser(
	input [31:0] instr_in,
	output [5:0] op,
	output [4:0] rs,
	output [4:0] rt,
	output [4:0] rd,
	output [15:0] immi,
	output [25:0] immj,
	output [4:0] shamt,
	output [5:0] funct
);

always (*) begin

	assign op = instr_int[31:26];
	assign rs = instr_in[25:21];
	assign rt = instr_in[20:16];
	assign rd = instr_in[15:11];
	assign immi = instr_in[15:0];
	assign immj = instr_in[25:0];
	assign shamt = instr_in[10:6];
	assign funct = instr_in[5:0];

end




endmodule
