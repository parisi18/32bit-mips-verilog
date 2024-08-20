module SignalExtend(
	input [15:0] Immi,
	output reg [31:0] ImmiExtended
);

always@ (*)
begin
	ImmiExtended = {{16{ Immi[15]}}, Immi};
end

endmodule
