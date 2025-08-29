//4 bit ripple adder that uses a 1 bit to calculate
//Author: William Taylor
module ripple_adder(x0,x1,x2,x3,y0,y1,y2,y3,cin,s0,s1,s2,s3,cout);

input wire x0,x1,x2,x3,y0,y1,y2,y3,cin;
output wire s0,s1,s2,s3,cout;

//constants that user does not pass in
wire c0,c1,c2;


//calling 1 bit adder and returning values
lab2	fa1(.x(x0),.y(y0),.cin(cin),.f(s0),.cout(c0));
lab2	fa2(.x(x1),.y(y1),.cin(c0),.f(s1),.cout(c1));
lab2	fa3(.x(x2),.y(y2),.cin(c1),.f(s2),.cout(c2));
lab2	fa4(.x(x3),.y(y3),.cin(c2),.f(s3),.cout(cout));

endmodule





