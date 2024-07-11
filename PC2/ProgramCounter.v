/*Módulo responsável pelo Fetch de instruções*/

module ProgramCounter(clk, instr_in, instr_out, write_enable);

input clk;
input write_enable;
input [31:0] instr_in;
output reg [31:0] instr_out;

reg next_instr;

always @(posedge clk) begin 
    if (write_enable) begin
		assign next_instr = instr_in
	 else
		assign next_instr = instr_in + 1;
	 end
	 
    assign instr_out = next_instr; 
end

endmodule