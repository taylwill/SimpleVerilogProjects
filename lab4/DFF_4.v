module DFF_4(D,CLK,Reset,Q);

input wire CLK, Reset;
input wire [3:0] D;

output reg [3:0] Q;

always@ (posedge CLK) 
begin

	if(Reset == 1) begin
		Q<=4'b0000;
	end
	
	else begin
		Q<=D;
	end
	
end

endmodule 