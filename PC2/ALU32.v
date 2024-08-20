module ALU32(
	input [31:0] OP1,
	input [31:0] OP2,
	output reg [31:0] Out,
	input [5:0] AluOP,
	input [4:0] Shamt,
	output reg Zero
);

always@ (*) begin

	case(AluOP)
	
		//*****ARITMETIC*****
		6'b000000: //ADD
			begin
				Out = OP1 + OP2;
				Zero = 0;
			end
			
		6'b000001: //SUB
			begin
				Out = OP1 - OP2;
				Zero = 0;
			end
			
		6'b000010: //MUL
			begin
				Out = OP1 * OP2;
				Zero = 0;
			end
		
		6'b000011: //DIV
			begin
				Out = OP1 / OP2;
				Zero = 0;
			end
			
		//*****LOGIC*****
		6'b000101: //AND
			begin
				Out = OP1 & OP2;
				Zero = 0;
			end
		
		6'b000110: //OR
			begin
				Out = OP1 | OP2;
				Zero = 0;
			end
			
		6'b000111: //XOR
			begin
				Out = OP1 ^ OP2;
				Zero = 0;
			end
			
		6'b001000: //NOT
			begin
				Out = ~OP1;
				Zero = 0;
			end
		
		//*****COMPARISON*****
		6'b001001: //BLT
			begin
				Out = ( $signed(OP1) < $signed(OP2)) ? 1 : 0;
				Zero = Out;
			end
			
		6'b001010: //SLT
			begin
				Out = ( $signed(OP1) <= $signed(OP2) ) ? 1 : 0;
				Zero = Out;
			end
		
		6'b001011: //SGT
			begin
				Out = ( $signed(OP1) > $signed(OP2) ) ? 1 : 0;
				Zero = Out;
			end
			
		6'b001100: //SGE
			begin
				Out = ( $signed(OP1) >= $signed(OP2) ) ? 1 : 0;
				Zero = Out;
			end
			
		6'b001101: //JR
			begin
				Out = ( $signed(OP1) >= $signed(OP2)) ? 1 : 0;
				Zero = Out;
			end
			
		6'b001110: //BNQ
			begin
				Out = ( $signed(OP1) != $signed(OP2)) ? 1 : 0;
				Zero = Out;
			end

		6'b001111: //BLTZ
			begin
				Out = ( $signed(OP1) < 0) ? 1 : 0;
				Zero = Out;
			end
			
		6'b010001: //SLE
			begin
				Out = ( $signed(OP1) > 0) ? 1 : 0;
				Zero = Out;
			end
			
		6'b010001: //BGTZ
			begin
				Out = ( $signed(OP1) > 0) ? 1 : 0;
				Zero = Out;
			end
			
		6'b010010: //BGZ
			begin
				Out = ( $signed(OP1) >= 0) ? 1 : 0;
				Zero = Out;
			end
		
		//*****SHIFT OPERATIONS*****
		6'b010011: //SRL
			begin
				Out = OP1 >> Shamt;
				Zero = Out;
			end
			
		6'b010100: //SLL
			begin
				Out = OP1 << Shamt;
				Zero = Out;
			end
		
		default:
			begin
				Out = 0;
				Zero = 0;
			end
			
	endcase
end


endmodule
