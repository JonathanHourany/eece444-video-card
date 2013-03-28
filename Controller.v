/***********************************************************
 * @author		Jon Hourany
 * @date		3/27/13
 * @class		EECE 444
 *
 * @file		Controller.v
 * @proj		Video Card
 ************************************************************/
 module Controller(CLK, NRST, H_SYNC, V_SYNC);
    input  wire	CLK;        /*< CLK input from Top module   >*/
    input  wire	NRST;       /*< Reset input from Top module >*/
    output reg	H_SYNC;		/*< Goes to VGA Horizontal Sync >*/
    output reg	V_SYNC;		/*< Goes to VGA Verical Sync	>*/

    reg [10:0] h_counter;   /*< Tracks amount of pulses from CLK    >*/
    reg [18:0] v_counter;   /*< Tracks amount of pulses from H_SYNC >*/

    `define H_BACK_PORCH	11'd95
    `define H_FRONT_PORCH   11'd715
    `define H_COUNT_MAX     11'd800

    `define V_BACK_PORCH	19'd1600
    `define V_FRONT_PORCH   19'd422400
    `define V_COUNT_MAX     19'd422400
	
	always @(*) begin
		if (h_counter < `H_BACK_PORCH) begin
			H_SYNC = 0;
		end
		else begin
			H_SYNC = 1;
		end
	end
	
	always @(posedge CLK) begin
		if (h_counter >= `H_COUNT_MAX || !NRST) begin
			h_counter <= 11'b00;
		end
		else begin
			h_counter <= h_counter + 1;
		end
	end

endmodule