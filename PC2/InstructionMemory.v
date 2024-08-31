module InstructionMemory(
	input Clk, 
	input [31:0] Addr,
	output [31:0] InstrOut
);

reg [31:0] mem [10:0];
integer clk_single_count = 0;
always @(Clk) begin

	/***Simple program that gets two numbers, sum each other and then multiply by 2***/
	if(clk_single_count == 0) begin
		mem[0] = 32'b000001_00000_00001_00000_00000000110; //ADDi: $1 = $0 + 5
		mem[1] = 32'b000001_00000_00010_00000_00000001010; //ADDi: $2 = $0 + 10
		mem[2] = 32'b010000_00001_00010_00011_00000000111; //ADD: $3 = $1 + $2 = 15
		mem[3] = 32'b010011_00000_00000_00000_00000000110; //Jal subroutine
		mem[4] = 32'b111111_00011_00000_00000_00000000000; //Show 7-seg display $4 value: 15 (TODO: USE 2 SEVEN-SEG DISPLAY OR MORE)
		mem[5] = 32'b111111_11111_11111_11111_11111111111; //Exit Program (TODO: STOP ALL PROGRAM)
		mem[6] = 32'b000101_00011_00100_00000_00000000010; //MULi: $4 = $3 * 2 (subroutine)
		mem[7] = 32'b010011_11111_00000_00000_00000000000; //JR $ra
		
		clk_single_count = 1;
	end
end
assign InstrOut = mem[Addr];
endmodule
