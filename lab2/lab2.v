//1 bit adder
//Author: William Taylor
module lab2(x,y,cin,f,cout);

	input x,y,cin;
	output f,cout;



//compute the outputs and return them
assign f = ((~x)&(y)&(~cin)) | ((x)&(~y)&(~cin)) | ((~x)&(~y)&(cin)) | ((x)&(y)&(cin));

assign cout = (cin&x) | (cin&y) | (y&x);


endmodule 