module FontRom(CHAR_IN, ROW_NUM, DATA_OUT);
   input    wire  [7:0]  CHAR_IN;
   input    wire  [3:0]  ROW_NUM;
   output   reg   [9:0]  DATA_OUT;
   
   parameter char    = 2'h48;
   parameter value   = 40'h000008120481204813FC81204812048120400000;
   
   always @(*)
      if (CHAR_IN == char) begin
         DATA_OUT = value[2*ROW_NUM:2*ROW_NUM-8];
      end
      else begin
         DATA_OUT = 8'bZZ;
      end
endmodule