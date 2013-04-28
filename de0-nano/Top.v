/***********************************************************
 * @author		Jon Hourany
 * @date		4/04/13
 * @class		EECE 444
 *
 * @file		Top.v
 * @proj		Video Card
 ************************************************************/
module Top(CLOCK_50, RESET, H_SYNC, V_SYNC, RED, BLUE, GREEN);
	input  wire CLOCK_50;
	input  wire RESET;
	output wire H_SYNC;
	output wire V_SYNC;
	output wire RED;
   output wire BLUE;
   output wire GREEN;
	
	`define	X_COUNT_MAX	640
	
	reg[9:0]	x_counter;
	reg		clock_25;
	wire 		rgb_en;

	/*** Test Bench Code ***/
//	 reg reset;
//	 initial begin
//		 #0 reset 	= 0;
//		 #0 clock_25 = 0;
//		 #2 reset 	= 1;
//	 end
//	 
//	 always #1 clock_25 = ~clock_25;
	 
	Controller CNTRL(.NRST(RESET), .CLK(clock_25), .H_SYNC(H_SYNC), .V_SYNC(V_SYNC), .RGB_EN(rgb_en));
	
	always @(posedge CLOCK_50) clock_25 = ~clock_25;	/*< Divide the onboard clock in half >*/
	
	always @(posedge clock_25) begin
		if (x_counter >= `X_COUNT_MAX || !rgb_en) begin
			x_counter <= 9'b0;
		end
		else if (rgb_en) begin
			x_counter <= x_counter + 1;
		end
	end
	
	assign RED     = (x_counter < 160 || x_counter > 400 && x_counter < 640                      ? 1:1'bz);
   assign GREEN   = (x_counter > 80  && x_counter < 320 || x_counter > 480 && x_counter < 640   ? 1:1'bz);
   assign BLUE    = (x_counter > 240 && x_counter < 640                                         ? 1:1'bz);
   

endmodule 
