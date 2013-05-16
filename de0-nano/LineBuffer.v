/***********************************************************
 * @author  Jon Hourany
 * @date    4/04/13
 * @class   EECE 444
 *
 * @file    LineBuffer.v
 * @proj    Video Card
 *
 * @long  
 *   
 ************************************************************/
module LineBuffer(CLK, RESET, CHAR_NUM, DATA_IN, DATA_OUT);
   input  wire         CLK;
   input  wire         RESET;
   input  wire [2:0]   CHAR_NUM;
   input  wire [9:0]   DATA_IN;
   output reg  [0:639] DATA_OUT;
   
   always @(posedge CLK) begin
      if (!RESET) begin
         DATA_OUT <= 640'b00;
      end
      else begin
         DATA_OUT[CHAR_NUM*10+:10] <= DATA_IN[9:0];
      end
   end
endmodule