module Mips32(clk);

input clk;
wire [31:0] data_bus;

ProcessUnit(
	.clk(clk), 
	.instr(data_bus)
);

//ControlUnit(clk);

endmodule
