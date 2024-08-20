module InstructionParser(
	input wire [31:0] InstrIn,
	output reg [5:0] Op,
	output reg [4:0] Rs,
	output reg [4:0] Rt,
	output reg [4:0] Rd,
	output reg [15:0] Immi,
	output reg [25:0] Immj,
	output reg [4:0] Shamt
);

always @(*) begin

	Op = InstrIn[31:26];
	Rs = InstrIn[25:21];
	Rt = InstrIn[20:16];
	Rd = InstrIn[15:11];
	Immi = InstrIn[15:0];
	Immj = InstrIn[25:0];
	Shamt = InstrIn[10:6];

end

endmodule
