module REG1(Enable,In,CLK,Reset,Out);

input wire CLK, Reset,Enable;
input wire [3:0] In;

output reg [3:0] Out;

always@ (posedge CLK) 
begin

	if(Reset == 1) begin
		Out<=4'b0000;
	end

	else begin
		if(Enable == 1) begin
			Out<=In;
		end
	end
end

endmodule 