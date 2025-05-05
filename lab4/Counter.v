module Counter(
    input Reset, CLK, Stop,Start,
    output[3:0] Out
);

reg [3:0] Count;
reg state;


always @(posedge CLK) begin
    if (Reset == 1) begin
        Count = 4'b0000;
    end 
	 else begin
	 
			 if (Stop == 0)begin
				  state = 0;
			 end
			 
			 if (Start == 0)begin
				  state = 1;
			 end
			 
			 if(state == 1)begin 
			 
				 if (Count == 4'b1001) begin
					  Count = 4'b0000;
				 end 
				 
				 else begin
					  Count = Count + 4'b0001;
				 end 
				 
			 end
			 
			 else begin
				 Count = Count;
			 end
	end
		 	 
end

assign Out[3:0] = Count[3:0];


endmodule 