module FontRom(CLK, CHAR_IN, ROW_NUM, DATA_OUT);
   input    wire  [7:0]  CHAR_IN;
   input    wire  [3:0]  ROW_NUM;
   input    wire         CLK;
   output   reg   [0:9]  DATA_OUT;
   
   parameter   char       = 2'h48;
   parameter   font_value = 160'h000000004210842100000000;
   
   reg [159:0] char_font  = font_value;
   
   always @(negedge CLK)
      if (CHAR_IN == char) begin
         DATA_OUT = font_value[10*ROW_NUM+:10];
      end
      else begin
         DATA_OUT = 8'bZZ;
      end
endmodule