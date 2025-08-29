module load_block (
    input [7:0] imm,
    input upper_enable,
    output reg [15:0] out
);

    always @(*) begin
        case (upper_enable)
            1'b0: out = {8'b00000000, imm}; // Places `imm` in the lower 8 bits
            1'b1: out = {imm, 8'b00000000}; // Places `imm` in the upper 8 bits
        endcase
    end
endmodule

				LOADR:
					begin
						reg_pc_load_sel <=0; //reg 2 goes to mem
						wr_reg_mux_ctrl <= 00;    //memory output goes to reg 1
					end
				LOADW:
					begin
						rf_wr_en <=1;
					end
				STORR:
					begin
						reg_pc_load_sel <=0;
					end
				STORW:
					begin
						mem_wr_en <=1;
					end
				LUIEX:
					begin
						 load_block_up_ind <= 1;		 //lui box goes to write port
						 wr_reg_mux_ctrl <= 10;
						 rf_wr_en <= 1;
					end
				MOVEX:
					begin
						wr_reg_mux_ctrl <= 10; //reg2 goes into write port
						rf_wr_en <= 1;
					end