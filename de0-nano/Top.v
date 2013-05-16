/***********************************************************
 * @author	Jon Hourany
 * @date		4/04/13
 * @class	EECE 444
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
	
	`define MAX_BUF_LEN  48
   
   reg 	 	  clock_25;
   reg  [47:0] string_buff;
   reg  [2:0]char_num; 
   wire [0:639] line_buffer;
   wire [9:0] font_bus; 
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

   defparam    FNT_E.char       = 8'h45; 
   defparam    FNT_E.font_value = 160'h3F08020080200FC20080200803F00000;
   
   defparam    FNT_H.char       = 8'h48;
   defparam    FNT_H.font_value = 160'h4210842108421F842108421084200000;
   
   defparam    FNT_L.char       = 8'h4C;                   
   defparam    FNT_L.font_value = 160'h20080200802008020080200803F00000;
   
   defparam    FNT_O.char       = 8'h4F; 
   defparam    FNT_O.font_value = 160'h3F084210842108421084210843F00000;  

   defparam    FNT_W.char       = 8'h57; 
   defparam    FNT_W.font_value = 160'h40902409024093254952330842100000;  
	
   Controller  CNTRL(.NRST(RESET), .CLK(clock_25), .H_SYNC(H_SYNC), .V_SYNC(V_SYNC), 
                     .PIXEL_CNTR(pixel_cntr), .ROW_NUM(row_num));
   
   FontRom     FNT_H(.CLK(clock_25), .RESET(RESET), .CHAR_IN(string_buff[`MAX_BUF_LEN-1:`MAX_BUF_LEN-8]), .ROW_NUM(row_num), 
                      .DATA_OUT(font_bus));
   
   FontRom     FNT_E(.CLK(clock_25), .RESET(RESET), .CHAR_IN(string_buff[`MAX_BUF_LEN-1:`MAX_BUF_LEN-8]), .ROW_NUM(row_num), 
                      .DATA_OUT(font_bus));

   FontRom     FNT_L(.CLK(clock_25), .RESET(RESET), .CHAR_IN(string_buff[`MAX_BUF_LEN-1:`MAX_BUF_LEN-8]), .ROW_NUM(row_num), 
                      .DATA_OUT(font_bus));
   
   FontRom     FNT_O(.CLK(clock_25), .RESET(RESET), .CHAR_IN(string_buff[`MAX_BUF_LEN-1:`MAX_BUF_LEN-8]), .ROW_NUM(row_num), 
                      .DATA_OUT(font_bus));
                      
   FontRom     FNT_W(.CLK(clock_25), .RESET(RESET), .CHAR_IN(string_buff[`MAX_BUF_LEN-1:`MAX_BUF_LEN-8]), .ROW_NUM(row_num), 
                      .DATA_OUT(font_bus));
                      
   LineBuffer  LINE_BUFFER(.CLK(clock_25), .RESET(RESET), .CHAR_NUM(char_num), 
                           .DATA_IN(font_bus), .DATA_OUT(line_buffer));
                           
   always @(posedge CLOCK_50) clock_25 = ~clock_25;	/*< Divide the onboard clock in half >*/
	
	always @(posedge clock_25) begin
         if (!RESET || char_num == 3) begin
            string_buff <= 48'h48454C4C4F57;
            char_num    <= 1'b0;
         end
         else begin
            string_buff <= {string_buff[`MAX_BUF_LEN-9:0], string_buff[`MAX_BUF_LEN-1:`MAX_BUF_LEN-8]};
            char_num    <= char_num + 1'b1;
         end
	end
	
   assign RED     = line_buffer[pixel_cntr];
   assign GREEN   = line_buffer[pixel_cntr];
   assign BLUE    = line_buffer[pixel_cntr];
   
   //assign RED     = (pixel_cntr < 160 || pixel_cntr > 400 && pixel_cntr < 640                      ? 1:1'bz);
   //assign GREEN   = (pixel_cntr > 80  && pixel_cntr < 320 || pixel_cntr > 480 && pixel_cntr < 640  ? 1:1'bz);
   //assign BLUE    = (pixel_cntr > 240 && pixel_cntr < 640                                          ? 1:1'bz);
   

endmodule 
