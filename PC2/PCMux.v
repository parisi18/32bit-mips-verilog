module PCMux(
	input Jump,
	input JumpReg,
	input And,
	input AluRes,
	input ExtendedImm,
	input [31:0] Instruction,
	input [31:0] Reg,
	input PCOut,
	output reg [31:0] Out
);

always@ (*)
begin

	if(Jump) begin
		Out = Instruction;
	end
	else if((And & AluRes) == 1) begin
		Out = ExtendedImm;
	end
	else if(JumpReg) begin
		Out = Reg;
	end
	else begin
		Out = PCOut;
	end

end
endmodule
