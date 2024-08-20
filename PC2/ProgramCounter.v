/*Módulo responsável pelo Fetch de instruções*/

module ProgramCounter(
	input Clk, 
	input [31:0] PcIn, 
	output reg [31:0] PcOut, 
	input Jump
);

reg next_instr;

always @(posedge Clk) begin
    if (Jump) begin
		next_instr = PcIn;
	 end
	 else begin
		next_instr = PcIn + 1;
	 end
	 
    PcOut = next_instr;
end

endmodule
