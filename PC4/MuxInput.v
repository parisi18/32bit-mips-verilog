module MuxInput(
	input immediate,
	input [15:0] instr,
	input [15:0] addr_in,
	output reg [15:0] addr_out
);

always @(*) begin 
	if(immediate) begin
		addr_out = addr_in;
	end 
	else begin
		addr_out = instr;
	end
end

endmodule
