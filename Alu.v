module Alu(
    input   wire    [BIT_LEN-1:0]   SOURCE_A,
    input   wire    [BIT_LEN-1:0]   SOURCE_B,
	input	wire	[3		  :0]	OP_CODE,
    output  reg     [BIT_LEN-1:0]   DEST;
    
    parameter BIT_LEN = 8;
    
    'define ADD 4'd1
    'define SUB 4'd2
    'define MUL 4'd3
    'define DIV 4'd4
    'define AND 4'd5
    'define OR  4'd6
    'define XOR 4'd7
    'define NOR 4'd8
    'define NOT 4'd9
    'define LSH 4'd10
    'define RSH 4'd11
    'define POW 4'd12
    
    ADD    Add(.SOURCE_A(SOURCE_A), .SOURCE_B(SOURCE_B), .DEST(DEST), .EN(select));
    
    always @(*) begin
        case (OP_CODE) begin
            'ADD: select = 'ADD;
            'SUB:
        endcase
    end
   