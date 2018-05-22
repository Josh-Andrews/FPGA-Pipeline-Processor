//ID_EX_pipe.v



module ID_EX_PIPE(
	input wire clock,
	input wire reset,
	input wire [31:0] pc_in,
	
	// non-controller stuff
	input wire [31:0] data_in_1,
	input wire [31:0] data_in_2,
	input wire [31:0] sextend_in,
	input wire [31:0] instr_in,
	output reg [31:0] data_out_1,
	output reg [31:0] data_out_2,
	output reg [31:0] pc_out,
	output reg [31:0] instr_out,
	output reg [31:0] sextend_out,
	
	
	//controller stuff
	input wire reg_write_in,
	input wire reg_dst_in,
	input wire mem_reg_dst_in,
	output reg reg_write_out,
	output reg reg_dst_out,
	output reg mem_reg_dst_out,
	
	//jump stuff
	input wire jump_in,
	output reg jump_out);
	
	
	initial begin
		data_out_1 = 32'h00000000;
		data_out_2 = 32'h00000000;
		sextend_out = 32'h00000000;
		instr_out <= 32'h00000000;
		pc_out = 32'h00000000;
		reg_dst_out = 0;
		mem_reg_dst_out = 0;
		reg_write_out = 0;
		jump_out = 0;
	end
	
	always @(posedge clock) begin
		if (reset == 1'b1) begin
			data_out_1 <= 32'h00000000;
			data_out_2 <= 32'h00000000;
			sextend_out <= 32'h00000000;
			instr_out <= 32'h00000000;
			pc_out <= 32'h00000000;
			reg_dst_out <= 0;
			mem_reg_dst_out <= 0;
			reg_write_out <= 0;
			jump_out <= 0;
		end else begin
			data_out_1 <= data_in_1;
			data_out_2 <= data_in_2;
			sextend_out <= sextend_in;
			instr_out <= instr_in;
			pc_out <= pc_in;
			reg_dst_out <= reg_dst_in;
			mem_reg_dst_out <= mem_reg_dst_in;
			reg_write_out <= reg_write_in;
			jump_out <= jump_in;
		end
	end
endmodule
