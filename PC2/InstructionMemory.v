module InstructionMemory(
	input clk, 
	input [31:0] instr_in,
	output [31:0] instr_out
);

reg [100000:0] mem [31:0];

instr_out = mem[instr_in];

endmodule
