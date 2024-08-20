module DataMemMux(
	input [31:0] AluOut,
	input [31:0] ReadData,
	input MemToReg,
	output reg [31:0] WriteData
);

always@ (*) 
begin
	if(MemToReg) begin
		WriteData = ReadData;
	end
	else begin
		WriteData = AluOut;
	end
end
endmodule
