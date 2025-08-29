module clk_div(
    input clk, reset, speed1, speed2, speed3,
    output reg div_clk
);

reg [24:0] counter;  // 25-bit counter (enough to store 25M)
reg [24:0] div_value; // Stores the value for the division

// Determine the division value based on the speed inputs
always @(*) begin
    case ({speed3, speed2, speed1})
        3'b000: div_value = 59_999_999;  // Base speed, divide by 25M
        3'b001: div_value = 49_499_999;   // Faster speed, divide by 12.5M
        3'b010: div_value = 39_749_999;   // Even faster speed, divide by 6.25M
        3'b011: div_value = 29_874_999;   // Even faster speed, divide by 3.125M
        3'b100: div_value = 19_937_499;     // Maximum speed, divide by 1.5625M
		  3'b101: div_value = 10_937_499;     // Maximum speed, divide by 1.5625M
		  3'b110: div_value = 5_937_499;     // Maximum speed, divide by 1.5625M
	     3'b111: div_value = 1_937_499;     // Maximum speed, divide by 1.5625M 	  
        default: div_value = 24_999_999; // Default division
    endcase
end

// Main counter logic
always @(posedge clk or posedge reset) begin
    if (reset) begin
        div_clk <= 0;
        counter <= 0;
    end else if (counter == div_value) begin  // Use the dynamically set div_value
        div_clk <= ~div_clk;
        counter <= 0;
    end else begin
        counter <= counter + 1;
    end
end

endmodule