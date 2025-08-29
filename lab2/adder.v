module adder(A,B,Cin);

	input A0,B0,Cin;
	output F,Cout;




assign F = ((~A)&(B)&(~C)) | ((A)&(~B)&(~C)) | ((~A)&(~B)&(C)) | ((A)&(B)&(C));

assign Cout = (Cin&A) | (Cin&B) | (B&A);


endmodule 