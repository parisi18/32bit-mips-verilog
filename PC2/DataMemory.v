module DataMemory(
	input Clk,
	input [31:0] WriteData,
	input [31:0] Addr,
	input MemWrite,
	input MemRead,
	output reg [31:0] DataRead 
);

reg [31:0] mem[31:0];

always@ (posedge Clk) 
begin
		if(MemWrite) begin
			mem[Addr] <= WriteData;
		end
		
		if(MemRead) begin
			DataRead <= mem[Addr];
		end
end
endmodule
