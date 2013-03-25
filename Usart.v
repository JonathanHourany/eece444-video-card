module Uart(CLK, RESET, RX_IN, TX_OUT);
	input 	wire CLK;
	input 	wire RESET;
	input 	wire RX_IN;
	output 	reg	 TX_OUT;
	
	define `DATA_FRAME	8
	
	reg	   [`DATA_FRAME-1:0] rx_buffer;
	
	always @(posedge CLK) begin
		rx_buffer[7] <= {RX_IN, rx_buffer[`DATA_FRAME-1:1};
	end
		
	
endmodule