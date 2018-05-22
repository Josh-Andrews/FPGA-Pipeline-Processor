//ZeroExtend.v


module ZeroExtend(
	input wire [4:0] in,
	output reg [31:0] out);
	
	always @(in) begin
		out = 32'h00000000;
		out = out + in[4:0];
	end
endmodule