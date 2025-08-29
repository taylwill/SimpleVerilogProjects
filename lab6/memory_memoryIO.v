module memory_memoryIO #(parameter DATA_WIDTH = 16, parameter ADDR_WIDTH = 16)
  (
input [(DATA_WIDTH-1):0] in_dataA, in_dataB,
input [(ADDR_WIDTH-1):0] addrA, addrB,
input [(DATA_WIDTH-1):0] switch,
input                    weA, weB, clk,
output  [(DATA_WIDTH-1):0] out_dataA, out_dataB,
output reg [(DATA_WIDTH-1):0] LED
   );

// Declare the RAM variable
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];

// Variable to hold the read address
reg [ADDR_WIDTH-1:0] addr_regA;
reg [ADDR_WIDTH-1:0] addr_regB;

//Load in Memory Block
initial begin
	$display("Loading memory in exem");
	$readmemh("C:/intelFPGA_lite/memory_demo/memory.txt", ram);
	$display("done loading in exem");
end

//Port A
always @ (posedge clk)
begin

	// Write
	if (weA)
		ram[addrA] <= in_dataA;


	// register to hold the read address
	addr_regA <= addrA;

end

//Port B
always @ (posedge clk)
begin

	// Write
	if (weB)
		ram[addrB] <= in_dataB;


	// register to hold the read address
	addr_regB <= addrB;

end

always @(posedge clk) 
begin

    // Port A write to I/O space
    if (addrA >= 16'hC000 && weA) begin
        LED <= in_dataA[7:0];
		  
    // If Port A isn't writing, allow Port B to write to the LED
    end else if (addrB >= 16'hC000 && weB) begin
        LED <= in_dataB[7:0];
    end
	 
end

// Continuous assignment either 
assign out_dataA = (addrA >= 16'hC000) ? switch : ram[addr_regA];
assign out_dataB = (addrB >= 16'hC000) ? switch : ram[addr_regB];

endmodule