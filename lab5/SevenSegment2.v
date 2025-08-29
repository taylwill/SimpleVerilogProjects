module SevenSegment2(bcd,seven_seg,seven_seg2);

input [3:0] bcd;
output reg [6:0] seven_seg;
output reg [6:0] seven_seg2;

always @*
 begin
  case (bcd)
   4'b0000 : begin
	seven_seg = ~7'b1111110;
	seven_seg2 = ~7'b0000000;
	end
   4'b0001 : begin 
	seven_seg = ~7'b0110000;
   seven_seg2 = ~7'b0000000;
	end
   4'b0010 : begin 
	seven_seg = ~7'b1101101; 
	seven_seg2 = ~7'b0000000;
	end
   4'b0011 : begin 
	seven_seg = ~7'b1111001; 
	seven_seg2 = ~7'b0000000;
	end
   4'b0100 : begin 
	seven_seg = ~7'b0110011; 
	seven_seg2 = ~7'b0000000;
	end
   4'b0101 : begin 
	seven_seg = ~7'b1011011; 
	seven_seg2 = ~7'b0000000;
	end
   4'b0110 : begin 
	seven_seg = ~7'b1011111; 
	seven_seg2 = ~7'b0000000;
	end
   4'b0111 : begin 
	seven_seg = ~7'b1110000; 
	seven_seg2 = ~7'b0000000;
	end
   4'b1000 : begin 
	seven_seg = ~7'b1111111; 
	seven_seg2 = ~7'b0000000;
	end
   4'b1001 : begin 
	seven_seg = ~7'b1110011; 
	seven_seg2 = ~7'b0000000;
	end
	4'b1010 : begin 
	seven_seg = ~7'b1111110; 
	seven_seg2 = ~7'b0110000;
	end
   4'b1011 : begin 
	seven_seg = ~7'b0110000; 
	seven_seg2 = ~7'b0110000;
	end
   4'b1100 : begin 
	seven_seg = ~7'b1101101; 
	seven_seg2 = ~7'b0110000;
	end
   4'b1101 : begin 
	seven_seg = ~7'b1111001; 
	seven_seg2 = ~7'b0110000;
	end
   4'b1110 : begin 
	seven_seg = ~7'b0110011; 
	seven_seg2 = ~7'b0110000;
	end
	4'b1111 : begin 
	seven_seg = ~7'b1011011; 
	seven_seg2 = ~7'b0110000;
	end
   default : begin 
	seven_seg = ~7'b0000000; 
	seven_seg2 = ~7'b0000000;end
  endcase
 end
endmodule



/*
PIN ASSIGNMENTS FOR LATER

seven_seg[6]		Output		PIN_C14
seven_seg[5]		Output		PIN_E15
seven_seg[4]		Output		PIN_C15
seven_seg[3]		Output		PIN_C16
seven_seg[2]		Output		PIN_E16
seven_seg[1]		Output		PIN_D17
seven_seg[0]		Output		PIN_C17

*/