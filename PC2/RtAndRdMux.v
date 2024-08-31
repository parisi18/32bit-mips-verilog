module RtAndRdMux(
	input [4:0] Rt,
	input [4:0] Rd,
	input RegDst, //Sinal imediato
	output reg [4:0] InstrOut
);

always@ (*) begin
		if(RegDst) 
			InstrOut = Rt;
		else 
			InstrOut = Rd;
end

endmodule
