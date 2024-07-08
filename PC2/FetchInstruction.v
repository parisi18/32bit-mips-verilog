/*Módulo responsável pelo Fetch de instruções*/

module FetchInstruction(clk, addr_in, pc_out);

input clk;
input [31:0] addr_in;
output reg [31:0] pc_out;

reg addr_out;
always @(*) begin 
    assign addr_out = addr_in + 4;
    assign pc_out = addr_out; 
end

endmodule