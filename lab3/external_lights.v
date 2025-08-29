module external_lights(
	input clk, reset, speed1, speed2, speed3,
	output reg red,green, white, yellow
);

	wire div_clk;
	reg [1:0]color;

	clk_div divider(
		.clk(clk),
		.div_clk(div_clk),
		.reset(reset),
		.speed1(speed1),
		.speed2(speed2),
		.speed3(speed3)
	);

	always @(posedge div_clk) begin
	red = 0;
	green = 0;
	white = 0;
	yellow = 0;
	
		case (color)
        2'b00: red = 1;  
        2'b01: green = 1;  
        2'b10: white = 1;  
        2'b11: yellow = 1;  
        default: red = 1; // Default case
		endcase
		
		if(color == 2'b11) begin
			color = 2'b00;
		end
		else begin
			color = color + 1;
		end
		
	end
	
	
endmodule



