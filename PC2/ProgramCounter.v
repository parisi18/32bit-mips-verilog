/*Módulo responsável pelo Fetch de instruções*/

module ProgramCounter(
	input Clk,
	input [31:0] PcIn,
	output reg [31:0] PcOut,
	input Jump
);

always @(posedge Clk) begin
   if (Jump)
		PcOut = PcIn;
	else
		PcOut = PcIn + 1;
end

endmodule
