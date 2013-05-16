module Add(
	input 	wire [BIT_LEN-1:0] SOURCE_A, 
	input 	wire [BIT_LEN-1:0] SOURCE_B, 
	input	wire 			   SELECT,
	output 	wire [BIT_LEN-1:0] DEST, 
	output	wire [FLG_LEN-1:0] FLAGS
	);
	
	parameter BIT_LEN = 8;
	parameter FLG_LEN = 4;
	
	wire [BIT_LEN-1:0] d;
	wire [BIT_LEN-1:0] carry;
	
	xor xor1_ab(SOURCE_A[0], SOURCE_B[0], d[0]);
	xor xor1_dc(d[0], 0, carry[1]);
	
endmodule