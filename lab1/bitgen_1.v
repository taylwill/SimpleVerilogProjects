//Author: William Taylor
//Verion Date: 10/01/2024
//
// simple bit gen that will just look at what the inputs are and make a 3 bit 
// number that will be the colors
module bitgen_1(
    input bright,               // asserted if the pixel is in the bright region
    input [9:0] hCount, vCount, // the horizontal and vertical counts
    input r, g, b,             // each of the 3 inputs from the switches
    output reg [2:0] rgbout     // the RGB value of the (hCount,vCount) pixel
);

    always @(*) begin
        // Assign rgbout based on the inputs r, g, b if it is bright. I guess this really doesnt do much here
		  if(bright == 1) begin
				rgbout = {r, g, b}; // rgbout = {r, g, b} creates a 3-bit output
		  end
		  
    end

endmodule
