module PCMux(
	input Jump,
	input JumpReg,
	input And,
	input AluRes,
	input ExtendedImm,
	input [31:0] Instruction,
	input [31:0] Reg,
	input [31:0] PCOut,
	output reg [31:0] Out
);

always@ (*)
begin

	if(Jump)
		Out = Instruction;
	else if((And & AluRes) == 1)
		Out = ExtendedImm;
	else if(JumpReg)
		Out = Reg;
	else
		Out = PCOut;

end

endmodule
