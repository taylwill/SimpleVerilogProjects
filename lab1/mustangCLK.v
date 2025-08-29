//Author: William Taylor
//Verion Date: 09/09/2024
//
// just a simple clock divider that will divide 
// a 50Mhz clock into a .8hz processor with the use
// of a counter
module mustangCLK
(
	input wire CLK,
	output reg slowCLK
);

reg [22:0] adder;

initial begin
	adder = 23'b00000000000000000000000;
	slowCLK = 0;
end

always @(posedge CLK)
begin
	if(adder == 23'b11111111111111111111111) begin
		slowCLK = ~slowCLK;
		adder = 23'b00000000000000000000000;
	end
	else begin
		adder = adder + 1;
	end
end
endmodule 