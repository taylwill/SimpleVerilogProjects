module Bit4ALU
(
    input [3:0] Arg1,
    input [3:0] Arg2,
    input [1:0] Control,
    output reg [3:0] Result
);

    always @(*) begin
        case(Control)
            2'b00: Result = Arg1 + Arg2; //add
            2'b01: Result = ~Arg1; //not
            2'b10: Result = Arg1 ^ Arg2; //xor
            2'b11: Result = Arg1[3:0] | Arg2[3:0]; //or
            default: Result = 4'b0000;
        endcase
    end
endmodule
