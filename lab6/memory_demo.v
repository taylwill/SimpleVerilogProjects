module memory_demo (
    input  clk,
    input  button,                          // Active-low pushbutton input
    output  [9:0] led_addr,                  // Only 10 bits for LED display
    output  [6:0] seg_write,  
    output  [6:0] seg_read   
);

	reg weA;
	reg[2:0] state;
	reg[15:0] addrA;
	reg[15:0] in_dataA;
	reg[15:0] big_seg_write;
	reg[15:0] big_seg_read;
	wire[15:0] out_dataA;
	
	
	assign led_addr = addrA[9:0];
	

    // State encoding
	 parameter READ_BEFORE = 3'b000;
	 parameter WRITE = 3'b001;
	 parameter READ_AFTER = 3'b010;
	 parameter INCREMENT = 3'b011;


    // Memory instantiation
    memory_memoryIO memory_inst (
        .in_dataA(in_dataA),
        .in_dataB(16'b0),
        .addrA(addrA),
        .addrB(16'b0),
        .weA(weA),
        .weB(1'b0),
        .clk(clk),
        .out_dataA(out_dataA),
        .out_dataB()
    );
	 
	 seven_seg_decoder segread(
		.bin_in(big_seg_read),
		.seg_out(seg_read)
	 );
	 
	 seven_seg_decoder segwrite(
	 	.bin_in(big_seg_write),
		.seg_out(seg_write)
	 );
	 
    // FSM next state logic and outputs
    always @(posedge button) begin
		weA = 0;
        case (state)
            READ_BEFORE: begin
					big_seg_read = out_dataA;
					state = WRITE;
            end

            WRITE: begin
					weA = 1;
					big_seg_write = in_dataA;
					state = READ_AFTER;
            end

            READ_AFTER: begin
					big_seg_read = out_dataA;
					state = 	INCREMENT;
            end

            INCREMENT: begin
					addrA = addrA + 16'h0001;
					in_dataA = in_dataA + 16'h0001;
					state = READ_BEFORE;
            end
				
				default: begin
					addrA[15:0] = 16'h0000;
					in_dataA[15:0] = 16'h0000;
					big_seg_write[15:0] = 16'h0000;
					big_seg_read[15:0] = 16'h0000;
					state = READ_BEFORE;
				end

        endcase
    end
endmodule

module seven_seg_decoder (
    input [15:0] bin_in,      // 4-bit binary input
    output reg [6:0] seg_out      // 7-segment display output
);

    always @(*) begin
        case (bin_in)
            4'h0000: seg_out = 7'b0111111; // 0
            4'h0001: seg_out = 7'b0000110; // 1
            4'h0002: seg_out = 7'b1011011; // 2
            4'h0003: seg_out = 7'b1001111; // 3
            4'h0004: seg_out = 7'b1100110; // 4
            4'h0005: seg_out = 7'b1101101; // 5
            4'h0006: seg_out = 7'b1111101; // 6
            4'h0007: seg_out = 7'b0000111; // 7
            4'h0008: seg_out = 7'b1111111; // 8
            4'h0009: seg_out = 7'b1100111; // 9
            4'h000a: seg_out = 7'b1110111; // A
            4'h000b: seg_out = 7'b1111100; // B
            4'h000c: seg_out = 7'b1011000; // C
            4'h000d: seg_out = 7'b1011110; // D
            4'h000e: seg_out = 7'b1111001; // E
            4'h000f: seg_out = 7'b1110001; // F
            default: seg_out = 7'b0000000; // Off
        endcase
		  
		  seg_out = ~seg_out;
    end
endmodule