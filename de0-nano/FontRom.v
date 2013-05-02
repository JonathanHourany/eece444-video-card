module FontRom(CLK, CHAR_IN, ROW_NUM, DATA_OUT);
   input    wire  [7:0]  CHAR_IN;
   input    wire  [3:0]  ROW_NUM;
   input    wire         CLK;
   output   reg   [0:9]  DATA_OUT;
   
   parameter   char       = 2'h48;
   parameter   font_value = 40'h000008120481204813FC81204812048120400000;
   
   reg [0:159] char_font  = font_value;
   
   always @(negedge CLK)
      if (CHAR_IN == char) begin
         DATA_OUT = char_font[2*ROW_NUM+:10];
      end
      else begin
         DATA_OUT = 8'bZZ;
      end
endmodule