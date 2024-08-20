module RtAndRdMux(
	input [31:0] Rt,
	input [31:0] Rd,
	input RegDst, //Sinal imediato
	output reg [31:0] InstrOut
);

always@ (*)
	begin
		if(RegDst) begin
			InstrOut = Rt;
		end
		else begin
			InstrOut = Rd;
		end
	end

endmodule
