module Bit4Tester;

reg CLK;
reg [3:0] Input1;
reg setReset;
wire [3:0] Output;
wire Wire4;
	 
	 wire [1:0] ControlBus;
	 wire [1:0] ControlALU;
	 wire EnableOut;
	 wire Enable1;
	 wire Enable2;

always #1 begin
CLK = ~CLK;
end

Bit4Cpu uut(
.Input1(Input1),
.setReset(setReset),
.CLK(CLK),
.Output(Output),
.ControlBus(ControlBus),
.ControlALU(ControlALU),
.EnableOut(EnableOut),
.Enable1(Enable1),
.Enable2(Enable2)
);


initial begin


CLK = 1;
setReset = 0;
Input1[3:0] = 4'b0001;

#1

$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1



$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);


#1

$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1

$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1

$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1

$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1

$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1

$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);

#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);

#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);

$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);

#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);

#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);

$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);
#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);

#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);

#1


$display("CLK:%b,SetReset:%b,input:%b,Output:%b,Wire4:%b",CLK,setReset,Input1,Output,Wire4);



end

endmodule 