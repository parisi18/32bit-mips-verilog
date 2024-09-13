module Registers(
	input Clk, 
	input [4:0] ReadReg1, 
	input [4:0] ReadReg2,
	input [4:0] WriteReg,
	input [31:0] WriteData,
	input [31:0] ImmiAddr,
	input RegWrite,
	input Jal,
	output [31:0] DataRead1,
	output [31:0] DataRead2
);

reg [31:0] regs [31:0];

always @(posedge Clk) begin
	if(RegWrite)
		regs[WriteReg] <= WriteData;
	
	if(Jal)
		regs[31] <= ImmiAddr + 1; //$ra = next instr
end

assign DataRead1 = (ReadReg1 == 0) ? 31'b0 : regs[ReadReg1];
assign DataRead2 = (ReadReg2 == 0) ? 31'b0 : regs[ReadReg2];

endmodule
