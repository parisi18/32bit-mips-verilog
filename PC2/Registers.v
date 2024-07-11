module Registers(
	input clk, 
	input [4:0] rs, 
	input [4:0] rt,
	input [4:0] write_addr,
	input [31:0] write_reg,
	input write_enable,
	output [31:0] rd1,
	output [31:0] rd2
);


reg [31:0] regs [31:0];


rd1 = regs[rs];
rd2 = regs[rt];

always(posedge clk) begin
	if(write_enable) begin
		assign regs[write_addr] = write_reg;
	end
end

endmodule
