//8 bit ripple adder that uses a 1 bit to calculate
//Author: William Taylor
module EightBitAdder(x0,x1,x2,x3,x4,x5,x6,x7,y0,y1,y2,y3,y4,y5,y6,y7,cin,s0,s1,s2,s3,s4,s5,s6,s7,cout);

input wire x0,x1,x2,x3,x4,x5,x6,x7,y0,y1,y2,y3,y4,y5,y6,y7,cin;
output wire s0,s1,s2,s3,s4,s5,s6,s7,cout;

//constants that user does not pass in
wire c0;


//calling 1 bit adder and returning values
lookAheadAdder	fa1(.x0(x0),.x1(x1),.x2(x2),.x3(x3),.y0(y0),.y1(y1),.y2(y2),.y3(y7),.cin(cin),.s0(s0),.s1(s1),.s2(s2),.s3(s3),.cout(c0));
lookAheadAdder	fa2(.x0(x4),.x1(x5),.x2(x6),.x3(x7),.y0(y4),.y1(y5),.y2(y6),.y3(y7),.cin(c0),.s0(s4),.s1(s5),.s2(s6),.s3(s7),.cout(cout));


endmodule 