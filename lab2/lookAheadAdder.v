//4 bit ripple adder that uses a 1 bit to calculate
//Author: William Taylor
module lookAheadAdder(x0,x1,x2,x3,y0,y1,y2,y3,cin,s0,s1,s2,s3,cout);

input wire x0,x1,x2,x3,y0,y1,y2,y3,cin;
output wire s0,s1,s2,s3,cout;

//constants that user does not pass in
wire g0,g1,g2,g3,p0,p1,p2,p3,c1,c2,c3;

//calling 1 bit adder and returning values
assign g0 = x0 & y0;
assign g1 = x1 & y1;
assign g2 = x2 & y2;
assign g3 = x3 & y3;

assign p0 = x0 | y0;
assign p1 = x1 | y1;
assign p2 = x2 | y2;
assign p3 = x3 | y3;

assign c1 = g0 | p0 & cin;
assign c2 = g1 | p1 & (g0 | p0 & cin);
assign c3 = g2 | p2 & (g1 | p1 & (g0 | p0 & cin));
assign cout = g3 | p3 & (g2 | p2 & (g1 | p1 & (g0 | p0 & cin)));

assign s0 = x0 ^ y0 ^ cin;
assign s1 = x1 ^ y1 ^ c1;
assign s2 = x2 ^ y2 ^ c2;
assign s3 = x3 ^ y3 ^ c3;


endmodule 