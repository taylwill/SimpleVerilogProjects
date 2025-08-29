module decoder #(parameter WIDTH = 16, REGBITS = 4, IMMBITS = 8)
(
	input  [WIDTH-1:0]   Inst,
	input 					clk,
	input 					enable,
	output reg [REGBITS-1:0] regdest,
	output reg [REGBITS-1:0] regsrc,
	output reg [REGBITS-1:0] opcode,
	output reg [REGBITS-1:0] func,
	output reg [IMMBITS-1:0] imm
	
);

	reg [15:0] oldinsra;
	//15-12 = opcode
	//11-8 = regdest
	//7-4 = function code
	//3-0 = regsrc
	//7-0 = immidiate 

	//will run with each posedge of the clock
   always @(posedge clk)
	begin
		if(!enable)
		begin
			oldinstra[15:0] = Inst[15:0];
			regdest [REGBITS-1:0] = Inst[11:8];
			regsrc [REGBITS-1:0] = Inst[3:0];
			opcode [REGBITS-1:0] = Inst[15:12];
			func [REGBITS-1:0] = Inst[7:4];
			imm [IMMBITS-1:0] = Inst[7:0];
		end
		else
		begin
			regdest [REGBITS-1:0] = oldinstra[11:8];
			regsrc [REGBITS-1:0] = oldinstra[3:0];
			opcode [REGBITS-1:0] = oldinstra[15:12];
			func [REGBITS-1:0] = oldinstra[7:4];
			imm [IMMBITS-1:0] = oldinstra[7:0];
		end
	end
	
endmodule 