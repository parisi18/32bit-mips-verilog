module DataMemory
#(parameter DATA_WIDTH=32, parameter ADDR_WIDTH=32)
(
	input Clk,
	input [(DATA_WIDTH-1):0] WriteData,
	input [(ADDR_WIDTH-1):0] Addr,
	input MemWrite,
	input MemRead,
	output reg [(DATA_WIDTH-1):0] DataRead
);

reg [DATA_WIDTH-1:0] mem[ADDR_WIDTH-1:0];

always@ (posedge Clk) begin
	if(MemWrite) begin
		mem[Addr] <= WriteData;
	end
end
	
always@ (*) begin
	if(MemRead) begin
		DataRead <= mem[Addr];
	end
end
endmodule
