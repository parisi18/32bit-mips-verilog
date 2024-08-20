module ControlUnit(
	input OpCode,
	output reg [5:0] AluOP,
	output reg RegDst,
	output reg Branch,
	output reg JumpReg,
	output reg Jump,
	output reg Jal,
	output reg And,
	output reg MemRead,
	output reg MemToReg,
	output reg MemWrite,
	output reg Immediate,
	output reg RegWrite
);

always@ (*)
	begin
		case(OpCode)
			//ADD
			6'b000000:
				begin
					AluOP     = 6'b000000;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
			
			//ADDi
			6'b000001:
				begin
					AluOP     = 6'b000000;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
				
			//SUB
			6'b000010:
				begin
					AluOP     = 6'b000001;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//SUBi
			6'b000011:
				begin
					AluOP     = 6'b000001;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
				
			//MUL
			6'b000100:
				begin
					AluOP     = 6'b000010;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//MULi
			6'b000101:
				begin
					AluOP     = 6'b000010;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
				
			//DIV
			6'b000110:
				begin
					AluOP     = 6'b000011;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//DIVi
			6'b000111:
				begin
					AluOP     = 6'b000011;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
				
			//AND
			6'b001000:
				begin
					AluOP     = 6'b000101;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//ANDi
			6'b001001:
				begin
					AluOP     = 6'b000101;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
				
			//OR
			6'b001010:
				begin
					AluOP     = 6'b000110;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//ORi
			6'b001011:
				begin
					AluOP     = 6'b000110;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
				
			//XOR
			6'b001100:
				begin
					AluOP     = 6'b000111;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//XORi
			6'b001101:
				begin
					AluOP     = 6'b000111;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
				
			//NOT
			6'b001110:
				begin
					AluOP     = 6'b001000;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//SLL
			6'b001111:
				begin
					AluOP     = 6'b010100;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//SRL
			6'b010000:
				begin
					AluOP     = 6'b010011;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//JUMP
			6'b010001:
				begin
					AluOP     = 6'bxxxxxx;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 1;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 0;
				end
				
			//JAL
			6'b010001:
				begin
					AluOP     = 6'bxxxxxx;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 1;
					Jal       = 1;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 0;
				end
				
			//JR
			6'b010001:
				begin
					AluOP     = 6'bxxxxxx;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 1;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 0;
				end
				
			//BEQ
			6'b010100:
				begin
					AluOP     = 6'b001101;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 1;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 0;
				end
				
			//BNQ
			6'b010101:
				begin
					AluOP     = 6'b001110;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 1;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 0;
				end
				
			//BLT
			6'b010110:
				begin
					AluOP     = 6'b001001;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 1;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 0;
				end
				
			//BGT
			6'b010111:
				begin
					AluOP     = 6'b001011;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 1;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 0;
				end
				
			//BLTZ
			6'b011000:
				begin
					AluOP     = 6'b001111;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 1;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 0;
				end
				
			//BGTZ
			6'b011001:
				begin
					AluOP     = 6'b010001;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 1;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 0;
				end
				
			//SLT
			6'b011010:
				begin
					AluOP     = 6'b001001;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//SLET
			6'b011011:
				begin
					AluOP     = 6'b001010;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//SGT
			6'b011100:
				begin
					AluOP     = 6'b001011;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//SGE
			6'b011101:
				begin
					AluOP     = 6'b001100;
					RegDst    = 0;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 0;
					RegWrite  = 1;
				end
				
			//LI
			6'b011110:
				begin
					AluOP     = 6'b000000;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
				
			//LW
			6'b011111:
				begin
					AluOP     = 6'b000000;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 1;
					MemToReg  = 1;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
				
			//SW
			6'b100000:
				begin
					AluOP     = 6'b000000;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 1;
					Immediate = 1;
					RegWrite  = 0;
				end
				
			//MOVE
			6'b100001:
				begin
					AluOP     = 6'b000000;
					RegDst    = 1;
					Branch    = 0;
					JumpReg   = 0;
					Jump      = 0;
					Jal       = 0;
					And       = 0;
					MemRead   = 0;
					MemToReg  = 0;
					MemWrite  = 0;
					Immediate = 1;
					RegWrite  = 1;
				end
		endcase
	end
	
endmodule
