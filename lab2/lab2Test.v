//tester class for a 4 bit ripple adder
//Author: William Taylor

module lab2Test;

//inputs
reg x0,x1,x2,x3,x4,x5,x6,x7,y0,y1,y2,y3,y4,y5,y6,y7,cin;

//outputs
wire s0;
wire s1;
wire s2;
wire s3;
wire s4;
wire s5;
wire s6;
wire s7;
wire cout;

//call the ripple adder class with name of the reg in ripple on the left
//and the reg of this class on the right
EightBitAdder uut(
.x0(x0),
.x1(x1),
.x2(x2),
.x3(x3),
.x4(x4),
.x5(x5),
.x6(x6),
.x7(x7),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3),
.y4(y4),
.y5(y5),
.y6(y6),
.y7(y7),
.cin(cin),
.s0(s0),
.s1(s1),
.s2(s2),
.s3(s3),
.s4(s4),
.s5(s5),
.s6(s6),
.s7(s7),
.cout(cout)
);

initial begin

	// set the variables to a specific number
	x0 = 1;
	x1 = 0;
	x2 = 0;
	x3 = 0;
	x4 = 0;
	x5 = 0;
	x6 = 0;
	x7 = 0;
	y0 = 1;
	y1 = 1;
	y2 = 0;
	y3 = 0;
	y4 = 0;
	y5 = 0;
	y6 = 0;
	y7 = 0;
	
	cin = 0;
	
	#1
	
	//display all the values 					 
	$display("x0:%b, x1:%b, x2:%b, x3:%b, x4:%b, x5:%b, x6:%b, x7:%b, y0:%b, y1:%b, y2:%b, y3:%b, y4:%b, y5:%b, y6:%b, y7:%b, cin:%b, s0:%b, s1:%b, s2:%b, s3:%b, s4:%b, s5:%b, s6:%b, s7:%b, cout:%b",x0,x1,x2,x3,x4,x5,x6,x7,y0,y1,y2,y3,y4,y5,y6,y7,cin,s0,s1,s2,s3,s4,s5,s6,s7,cout);
	
	end
endmodule
	