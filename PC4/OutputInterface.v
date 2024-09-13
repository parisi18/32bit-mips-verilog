	module OutputInterface(
	input [31:0] Input,
	output [7:0] Hex0,
	output [7:0] Hex1,
	output [7:0] Hex2,
	output [7:0] Hex3,
	output [7:0] Hex4,
	output [7:0] Hex5,
	output [7:0] Hex6,
	output [7:0] Hex7
);


wire [0:7] hexes [0:7];

genvar i;
generate
	for(i=0; i<8; i=i+1) begin : loop
		wire [3:0] hex_val = (Input / 10**i) % 10;
		assign hexes[i] = (hex_val == 4'b0000 ? 7'b1000000 : 
								 hex_val == 4'b0001 ? 7'b1111001 :
								 hex_val == 4'b0010 ? 7'b0100100 :
								 hex_val == 4'b0011 ? 7'b0110000 :
								 hex_val == 4'b0100 ? 7'b0011001 :
								 hex_val == 4'b0101 ? 7'b0010010 :
								 hex_val == 4'b0110 ? 7'b0000010 :
								 hex_val == 4'b0111 ? 7'b1111000 :
								 hex_val == 4'b1000 ? 7'b0000000 :
								 hex_val == 4'b1001 ? 7'b0010000 :
								 7'b1111111);                       
	end
endgenerate

assign Hex0 = hexes[0];
assign Hex1 = hexes[1];
assign Hex2 = hexes[2];
assign Hex3 = hexes[3];
assign Hex4 = hexes[4];
assign Hex5 = hexes[5];
assign Hex6 = hexes[6];
assign Hex7 = hexes[7];

endmodule

