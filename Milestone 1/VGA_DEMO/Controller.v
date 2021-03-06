//Controller.v

module Controller(
	input wire [31:0] ins,
	output reg reg_write,
	output reg reg_dest,
	output reg mem_reg_dst);
	
	always @* begin
		if (ins[31:26] == 6'b000000) begin
			reg_write = 1;
			mem_reg_dst = 0;
			reg_dest = 0;
		end else begin
			reg_write = 0;
		end
	end
endmodule