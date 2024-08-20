module Registers(
	input Clk, 
	input [4:0] ReadReg1, 
	input [4:0] ReadReg2,
	input [4:0] WriteReg,
	input [31:0] WriteData,
	input [31:0] PcOut,
	input RegWrite,
	input Jal,
	output [31:0] DataRead1,
	output [31:0] DataRead2
);

reg [31:0] regs [31:0];

always @(posedge Clk) begin
	if(RegWrite) begin
		regs[WriteReg] = WriteData;
	end
	
	if(Jal) begin
		regs[31] = PcOut + 1;
	end
	
end

assign DataRead1 = regs[ReadReg1];
assign DataRead2 = regs[ReadReg2];

endmodule
