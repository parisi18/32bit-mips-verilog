/*Módulo responsável pelo Fetch de instruções*/

module ProgramCounter(
	input Clk,
	input [31:0] PcIn,
	output reg [31:0] PcOut,
	input Jump,
	input And,
	input AluRes,
	input JumpReg
);

reg reset = 1;

always @(posedge Clk) begin
	if(reset == 1) begin
		PcOut <= 32'b0;
		reset = 0;
	end
	else begin
		if (Jump || JumpReg)
			PcOut <= PcIn;
		else if ((And & AluRes) == 1)
			PcOut <= PcIn;
		else
			PcOut <= PcIn + 32'b1;
	end
end

endmodule
