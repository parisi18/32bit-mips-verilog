module Alu32Mux(
	input [31:0] DataRead2,
	input [31:0] ImmediateData,
	input Immediate,
	output reg [31:0] DataOut
);

always@ (*)
begin
	if(Immediate) begin
		DataOut = ImmediateData;
	end
	else begin
		DataOut = DataRead2;
	end
end

endmodule
