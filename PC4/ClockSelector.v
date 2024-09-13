module ClockSelector(
	input Clk,
	input Play,
	input SetOriginal,
	input FilteredClk,
	output SelectedClk
);

reg selected_clk;

always @(*) begin
	if(Play) begin
		if(SetOriginal)
			selected_clk = Clk;
		else
			selected_clk = FilteredClk;
	end
end

assign SelectedClk = selected_clk;

endmodule
