module StopWatch(CLK,Reset,Stop,Start,Out);

input CLK, Reset, Stop, Start;
output wire [6:0] Out;

wire [3:0] Q;
wire [3:0] D;
wire SLW_CLK;


CLK_divider divider
(	
	 .CLK(CLK),
	 .SLW_CLK(SLW_CLK)
);

Counter counter_0
 (
	  .Reset(Reset),
	  .CLK(SLW_CLK),
	  .Start(Start),
	  .Stop(Stop),
	  .Out(D)
 );
 
DFF_4 storage
 (
    .D(D),
    .CLK(SLW_CLK),
    .Reset(Reset),
    .Q(Q)
 );

 SevenSegment display
 (
	  .bcd(Q),
	  .seven_seg(Out)
);
 

endmodule

