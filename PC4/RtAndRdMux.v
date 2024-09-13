module RtAndRdMux(
	input [4:0] Rt,
	input [4:0] Rd,
	input RegDst, //Sinal imediato
	output reg [4:0] Reg
);

always@ (*) begin
		if(RegDst) 
			Reg = Rt;
		else 
			Reg = Rd;
end

endmodule
