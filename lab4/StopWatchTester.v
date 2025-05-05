//tester class for a 4 bit ripple adder
//Author: William Taylor

module StopWatchTester;

//inputs
reg CLK; 
reg Reset;
reg Stop;
reg Start;

//outputs
wire [3:0] Out;

//call the ripple adder class with name of the reg in ripple on the left
//and the reg of this class on the right
StopWatch uut(
.CLK(CLK),
.Reset(Reset),
.Stop(Stop),
.Start(Start),
.Out(Out)
);


always #1_000_000_000 begin
	CLK = ~CLK;
end



initial begin

	// set the variables to a specific number
	CLK = 0;
	Reset = 1;
	Stop = 1;
	Start = 1;
	
		#1_000_000_000

	//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		#1_000_000_000
		Reset = 0;
		Start = 0;
	
	
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		#1_000_000_000
		
		
		
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		#1_000_000_000
		
		
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		#1_000_000_000
		
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		#1_000_000_000
		
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		Stop = 0;
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		Reset = 1;
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
		
		Reset = 0;
		
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
				#1_000_000_000
				Start = 0;
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number
				#1_000_000_000
			//display all the values 					 
	$display("CLK:%b,Reset:%b,Stop:%b,Start:%b,Out:%b",CLK,Reset,Stop,Start,Out);
		// set the variables to a specific number

end
endmodule 