/*Módulo responsável pelo Fetch de instruções*/

module FetchInstruction(clk, instr_in, instr_out);

input clk;
input [31:0] instr_in;
output reg [31:0] instr_out;

reg next_instr;

always @(posedge clk) begin 
    assign next_instr = instr_in + 1;
    assign instr_out = next_instr; 
end

endmodule