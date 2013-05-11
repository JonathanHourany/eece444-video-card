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
	
	reg 	 	  clock_25;
   reg  [7:0] string_h;
   reg  [159:0] line_buffer;
   wire [9:0] data_bus; 
	wire [9:0] pixel_cntr;
   wire [9:0] row_num;

	/*** Test Bench Code ***/
//	 reg reset;
//	 initial begin
//		 #0 reset 	= 0;
//		 #0 clock_25 = 0;
//		 #2 reset 	= 1;
//	 end
//	 
//	 always #1 clock_25 = ~clock_25;

	Controller  CNTRL(.NRST(RESET), .CLK(clock_25), .H_SYNC(H_SYNC), .V_SYNC(V_SYNC), 
                     .PIXEL_CNTR(pixel_cntr), .ROW_NUM(row_num));
   //FontRom     FNT_RM(.CLK(clock_25), .CHAR_IN(string_h), .ROW_NUM(row_num), .DATA_OUT(data_bus));
   
   always @(posedge CLOCK_50) clock_25 = ~clock_25;	/*< Divide the onboard clock in half >*/
	
	always @(posedge clock_25) begin
         string_h  <= 2'h48;
         //line_buffer[pixel_cntr] <= 
	end
	
   assign RED     = (pixel_cntr < 160 || pixel_cntr > 400 && pixel_cntr < 640                      ? 1:1'bz);
   assign GREEN   = (pixel_cntr > 80  && pixel_cntr < 320 || pixel_cntr > 480 && pixel_cntr < 640  ? 1:1'bz);
   assign BLUE    = (pixel_cntr > 240 && pixel_cntr < 640                                          ? 1:1'bz);
   

endmodule 
