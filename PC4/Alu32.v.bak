module Alu32(
	input [31:0] Op1,
	input [31:0] Op2,
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
				Out = Op1 + Op2;
				Zero = 0;
			end
			
		6'b000001: //SUB
			begin
				Out = Op1 - Op2;
				Zero = 0;
			end
			
		6'b000010: //MUL
			begin
				Out = Op1 * Op2;
				Zero = 0;
			end
		
		6'b000011: //DIV
			begin
				Out = Op1 / Op2;
				Zero = 0;
			end
			
		//*****LOGIC*****
		6'b000101: //AND
			begin
				Out = Op1 & Op2;
				Zero = 0;
			end
		
		6'b000110: //OR
			begin
				Out = Op1 | Op2;
				Zero = 0;
			end
			
		6'b000111: //XOR
			begin
				Out = Op1 ^ Op2;
				Zero = 0;
			end
			
		6'b001000: //NOT
			begin
				Out = ~Op1;
				Zero = 0;
			end
		
		//*****COMPARISON*****
		6'b001001: //BLT
			begin
				Out = ( $signed(Op1) < $signed(Op2)) ? 1 : 0;
				Zero = Out;
			end
			
		6'b001010: //SLT
			begin
				Out = ( $signed(Op1) <= $signed(Op2) ) ? 1 : 0;
				Zero = Out;
			end
		
		6'b001011: //SGT
			begin
				Out = ( $signed(Op1) > $signed(Op2) ) ? 1 : 0;
				Zero = Out;
			end
			
		6'b001100: //SGE
			begin
				Out = ( $signed(Op1) >= $signed(Op2) ) ? 1 : 0;
				Zero = Out;
			end
			
		6'b001101: //JR
			begin
				Out = ( $signed(Op1) >= $signed(Op2)) ? 1 : 0;
				Zero = Out;
			end
			
		6'b001110: //BNQ
			begin
				Out = ( $signed(Op1) != $signed(Op2)) ? 1 : 0;
				Zero = Out;
			end

		6'b001111: //BLTZ
			begin
				Out = ( $signed(Op1) < 0) ? 1 : 0;
				Zero = Out;
			end
			
		6'b010001: //SLE
			begin
				Out = ( $signed(Op1) > 0) ? 1 : 0;
				Zero = Out;
			end
			
		6'b010001: //BGTZ
			begin
				Out = ( $signed(Op1) > 0) ? 1 : 0;
				Zero = Out;
			end
			
		6'b010010: //BGZ
			begin
				Out = ( $signed(Op1) >= 0) ? 1 : 0;
				Zero = Out;
			end
		
		//*****SHIFT OPERATIONS*****
		6'b010011: //SRL
			begin
				Out = Op1 >> Shamt;
				Zero = Out;
			end
			
		6'b010100: //SLL
			begin
				Out = Op1 << Shamt;
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
