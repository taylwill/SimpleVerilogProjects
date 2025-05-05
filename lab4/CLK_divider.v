module CLK_divider(CLK,SLW_CLK);

input CLK;
output reg SLW_CLK;

reg [24:0] count;

always @ (posedge CLK) begin

if(count == 25'b1011111010111100001000000) begin //b1011111010111100001000000 or b0000000010001100001000000
	count = 25'b0000000000000000000000000;
	SLW_CLK = ~SLW_CLK;
end

count = count + 25'b0000000000000000000000001;

end 

endmodule 