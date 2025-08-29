module WriteBuffer
(
input wire Enable,
input wire [3:0] Input,
output reg [3:0] Output
);

always @(*) begin
    if(Enable == 0) begin
        Output = 4'bzzzz;
    end
    else begin
        Output = Input;
    end
end

endmodule