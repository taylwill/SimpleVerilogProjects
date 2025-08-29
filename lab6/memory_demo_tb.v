
module memory_demo_tb;


//inputs and outputs
reg clk, button;
wire [9:0] led_addr;
wire [6:0] seg_write, seg_read;


 memory_demo uut 
 (
	.clk(clk),
	.button(button),
	.led_addr(led_addr),
	.seg_write(seg_write),
	.seg_read(seg_read)
 );
	 
always #5 clk = ~clk;

 initial begin
   clk = 0;
	button = 0;
 
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	
		$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	#5
	
	button = 1;
	
	#5
	
	button = 0;
	#5
	
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	#5
	
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	
	#5
	
		$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	
		$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	#5
	
	button = 1;
	
	#5
	
	button = 0;
	#5
	
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	#5
	
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	
		button = 0;
 
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	
		$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	#5
	
	button = 1;
	
	#5
	
	button = 0;
	#5
	
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	#5
	
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	
	#5
	
		$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	
		$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	#5
	
	button = 1;
	
	#5
	
	button = 0;
	#5
	
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	#5
	
	$display("addr: %b, seg_read: %b, seg_write: %b",led_addr ,seg_read, seg_write );
	
	button = 1;
	
	#5
	
	button = 0;
	$finish;
 end
endmodule
