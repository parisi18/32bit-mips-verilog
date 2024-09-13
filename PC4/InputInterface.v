module InputInterface(
	input Clk,
	input [17:0] SwInput,
	output [15:0] SwValues,
	output InputSig
);

integer clk_single_count = 0;
reg input_sig;
reg [17:0] sw_input;
reg [31:0] extended_input;

assign InputSig = input_sig;
assign SwValues = SwInput[15:0];

endmodule
