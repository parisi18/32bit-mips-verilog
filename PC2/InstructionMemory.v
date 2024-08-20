module InstructionMemory(
	input Clk, 
	input [31:0] Addr,
	output [31:0] InstrOut
);

reg [31:0] mem [31:0];

always @(Clk) begin
	/********TODO**********/
	/***Aqui contera o programa instruçao por instrucao***/
end
assign InstrOut = mem[Addr];
endmodule
