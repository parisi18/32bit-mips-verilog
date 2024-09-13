module RegToOutputInterface(
	input Clk,
	input [31:0] DataRead1,
	input Print,
	output [31:0] HexOutput
);

reg [31:0] hex_out = 31'b0;

always @(posedge Clk) begin
	if(Print)
		hex_out = DataRead1;
end

assign HexOutput = hex_out;

endmodule
