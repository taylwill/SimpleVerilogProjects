module Bit4Bus
(
input wire [1:0] Control,
input wire [3:0] Input,
input wire [3:0] Input2,
output reg [3:0] Output
);

    always @(*) begin
        case(Control)
            2'b00: Output = Input; //input 1
            2'b01: Output = Input2; //input 2
            2'b10: Output = 4'b0011; //0011
            2'b11: Output = 4'b0000; //default
            default: Output = 4'b0110;
        endcase
    end
	 
endmodule 