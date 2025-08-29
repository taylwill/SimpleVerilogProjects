module VGA_timer (
	input clk50MHz, clr, 				// system clock and clear
	output hSync, vSync, 				// sync signals to the VGA interface
	output bright, 						// asserted when the pixel is bright
	output reg [9:0] hCount, vCount 	// horiz and vertical count (you pick the X!)
												// these tell you where you are on the screen
);

	reg [4:0] vhdelay;
	reg [4:0] hdelay;
	reg [4:0] vdelay;

initial begin
	hcount [9:0] = 10'b0000000000;
	vcount [9:0] = 10'b0000000000;
	vhdelay [4:0] = 5'b00000;
	hdelay [4:0] = 5'b00000;
	vdelay [4:0] = 5'b00000;
	
end

always @(posedge clk50MHz, negedge clr) begin
	if(hcount [9:0] == 10'b1001111111 && vcount [9:0] == 10'b0111011111) begin //initial case for each frame
		if(vhdelay[3:0] == 5'b11000)begin
			vhdelay[3:0] = 5'b00000;
		end
			hcount = hcount + 1;
			vcount = vcount + 1;
	end
	
	if(hcount [9:0] == 10'b1001111111) begin	//end of line
		
		vcount = vcount + 1;
		
	end
	
	if(vcount [9:0] == 10'b0111011111) begin 	//end of frame
	
	end
	
	hcount = hcount + 1;

end

endmodule