module InstructionParser(
	input [31:0] InstrIn,
	output [5:0] Op,
	output [4:0] Rs,
	output [4:0] Rt,
	output [4:0] Rd,
	output [15:0] Immi,
	output [25:0] Immj,
	output [4:0] Shamt
);

assign Op = InstrIn[31:26];
assign Rs = InstrIn[25:21];
assign Rt = InstrIn[20:16];
assign Rd = InstrIn[15:11];
assign Immi = InstrIn[15:0];
assign Immj = InstrIn[25:0];
assign Shamt = InstrIn[10:6];



endmodule
