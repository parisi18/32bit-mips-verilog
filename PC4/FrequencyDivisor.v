module FrequencyDivisor(
	input Clk,
	output FilteredClk
);

reg [25:0] fullcount;
reg count_pulse;

always @(posedge Clk) begin
    if (fullcount == 26'd25000000) begin
        fullcount <= 26'd0;
        count_pulse <= 1;
    end
    else begin
        fullcount <= fullcount + 1;
        count_pulse <= 0;
    end
end

assign FilteredClk = count_pulse; 

endmodule
