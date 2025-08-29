module Bit4FSM
(
 input wire Reset,
 input wire CLK,
 output reg Enable1,
 output reg Enable2,
 output reg EnableOut,
 output reg [1:0]ControlALU,
 output reg [1:0]ControlBus,
 output reg SetReset,
 output reg WriteBuffer
);
 reg [3:0] State;
 
 always @(posedge CLK)
 begin
 
 
 if(Reset ==1) begin
	State[3:0] = 4'b0000;
 end
 
 else begin
	case(State)
	default: begin
		//stage0
		Enable1 = 1;
		Enable2 = 1;
		EnableOut = 1;
		SetReset = 1;
		State = State + 1;
	end
	4'b0001: begin
		//stage1
		Enable2 = 0;
		SetReset = 0;
		ControlBus [1:0] = 2'b00;
		State = State + 1;
	end
	4'b0010: begin
		//stage2
		Enable1 = 0;
		Enable2 = 1;
		ControlBus [1:0] = 2'b10;
		State = State + 1;
	end
	4'b0011: begin
		//stage3
		Enable1 = 0;
		Enable2 = 0;
		EnableOut = 1;
		ControlALU = 2'b00;
		WriteBuffer = 1;
		State = State + 1;
	end
	4'b0100: begin
		//stage4
		Enable1 = 0;
		Enable2 = 1;
		ControlBus = 2'b01;
		WriteBuffer = 1;
		State = State + 1;
	end
	4'b0101: begin
		//stage5
		EnableOut = 1;
		WriteBuffer = 1;
		ControlALU = 2'b11;
		State = State + 1;
	end
	4'b0110: begin
		//stage6
		Enable1 = 1;
		Enable2 = 0;
		ControlBus = 2'b01;
		State = State + 1;
	end
	4'b0111: begin
		//stage7
		ControlALU = 2'b01;
		EnableOut = 1;
		WriteBuffer = 1;
		State = State + 1;
	end
	4'b1000: begin
		//stage8
		Enable1 = 1;
		Enable2 = 0;
		EnableOut = 1;
		ControlBus = 2'b01;
		State = State + 1;
	end
	4'b1001: begin
		//stage9
		ControlALU = 2'b10;
		EnableOut = 1;
		WriteBuffer = 1;
		State = State + 1;
	end
	4'b1010: begin
		EnableOut = 0;
		WriteBuffer = 0;
	end
	endcase
	end
	
end 
	
endmodule

