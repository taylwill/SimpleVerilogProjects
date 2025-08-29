//Author: William Taylor
//Verion Date: 09/09/2024
//
// Module for the state of the mustang lights
// total of 7 states that chose which lights go on

module mustangFSM
(
	input wire RIGHT,
	input wire LEFT,
	input wire HAZ,
	input wire RESET,
	input wire CLK,
	output reg [2:0] lightR,
	output reg [2:0] lightL
);
 reg [3:0] State;
 
 //set each of the registers to initial be zero
 initial begin
 State[3:0] = 4'b0000;
 lightR[2:0] = 3'b000;
 lightL[2:0] = 3'b000;
 end
 
 //run everytime the clock goes high
 always @(posedge CLK)
 begin
	 //if reset is hit then set everything to base
	 if(RESET == 1) begin
		State[3:0] = 4'b0000;
		lightR [2:0] = 3'b000;
		lightL [2:0] = 3'b000;
	 end
	 else begin
		case(State)
			default: begin
			//stage0 base stage
				lightR [2:0] = 3'b000;
				lightL [2:0] = 3'b000;
				if(HAZ == 0) begin
					State[3:0] = 4'b0001;
				end 
				else begin
					if(RIGHT == 0) begin
						State[3:0] = 4'b0010;
					end 
					
					if(LEFT == 0) begin
							State[3:0] = 4'b0101;
					end
				end
			end
			4'b0001: begin
			//stage1 hazard
				lightR [2:0] = 3'b111;
				lightL [2:0] = 3'b111;
				State[3:0] = 4'b0000;
			end
			4'b0010: begin
			//stage2 right 1
				if(HAZ == 0) begin
					State[3:0] = 4'b0001;
				end
				else begin
					lightR [2:0] = 3'b001;
					lightL [2:0] = 3'b000;
					State = State + 1;
				end
			end
			4'b0011: begin
			//stage3 right 2
				if(HAZ == 0) begin
					State[3:0] = 4'b0001;
				end
				else begin
					lightR [2:0] = 3'b011;
					lightL [2:0] = 3'b000;
					State = State + 1;
				end
			end
			4'b0100: begin
			//stage4 right 3
				if(HAZ == 0) begin
					State[3:0] = 4'b0001;
				end
				else begin
					lightR [2:0] = 3'b111;
					lightL [2:0] = 3'b000;
					// go back to the base state
					State[3:0] = 4'b0000;
				end
			end
			4'b0101: begin
			//stage 5 left 1
				if(HAZ == 0) begin
					State[3:0] = 4'b0001;
				end
				else begin
					lightR [2:0] = 3'b000;
					lightL [2:0] = 3'b001;
					State = State + 1;
				end
			end
			4'b0110: begin
			//stage6 left 2
				if(HAZ == 0) begin
					State[3:0] = 4'b0001;
				end
				else begin
					lightR [2:0] = 3'b000;
					lightL [2:0] = 3'b011;
					State = State + 1;
				end
			end
			4'b0111: begin
			//stage7 left 3
				if(HAZ == 0) begin
					State[3:0] = 4'b0001;
				end
				else begin
					lightR [2:0] = 3'b000;
					lightL [2:0] = 3'b111;
					// go back to the base state
					State[3:0] = 4'b0000;
				end
			end
		endcase
	end
end	
	
endmodule

