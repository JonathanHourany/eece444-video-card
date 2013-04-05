/***********************************************************
 * @author		Jon Hourany
 * @date		4/04/13
 * @class		EECE 444
 *
 * @file		Controller.v
 * @proj		Video Card
 ************************************************************/
 module Controller(CLK, NRST, H_SYNC, V_SYNC, RGB_EN);
    input  wire	CLK;        /*< CLK input from Top module   >*/
    input  wire	NRST;       /*< Reset input from Top module >*/
    output reg	H_SYNC;		/*< Goes to VGA Horizontal Sync >*/
    output reg	V_SYNC;		/*< Goes to VGA Verical Sync	>*/
	output reg	RGB_EN	;	/*< Enables RGB values durning display time on H_SYNC 	>*/

    reg [10:0] h_counter;   /*< Tracks amount of pulses from CLK    				>*/
    reg [19:0] v_counter;   /*< Tracks amount of pulses from H_SYNC 				>*/

    `define H_SYNC_PULSE		11'd96		/*< Length of Sync Pulse 			>*/
	`define H_BACK_PORCH_END	11'd144		/*< Pulse len + Porch Len			>*/
    `define H_FRONT_PORCH_STRT  11'd784		/*< Front Porch Len - Max			>*/
    `define H_COUNT_MAX     	11'd799		/*< Max line pulses for resolution 	>*/

    `define V_SYNC_PULSE		19'd1600
	`define V_BACK_PORCH_END	19'd28000
    `define V_FRONT_PORCH_STRT  19'd408800
    `define V_COUNT_MAX     	19'd416799
	
	/*** State Machine for H_SYNC ***/
	always @(*) begin
		/* If the vertical sync line is not in the display zone, keep H_Sync low */
		if(!(v_counter > `V_BACK_PORCH_END && v_counter < `V_FRONT_PORCH_STRT)) begin
			H_SYNC = 0;
			RGB_EN = 0;
		end
		/* If the vertical sync line is in display zone, allow H_Sync to go through its procedure */
		else begin
			if (h_counter < `H_SYNC_PULSE) begin
				H_SYNC = 0;
				RGB_EN = 0;
			end
			/* If H_Sync is in the display zone, enable RGB */
			else if (h_counter > `H_BACK_PORCH_END && h_counter < `H_FRONT_PORCH_STRT) begin
				H_SYNC = 1;
				RGB_EN = 1;
			end
			/* During the Front Porch period, disable RGB */
			else begin
				H_SYNC = 1;
				RGB_EN = 0;
			end
		end
	end
	
	/*** State Machine for V_SYNC ***/
	always @(*) begin
		if (v_counter < `V_SYNC_PULSE) begin
			V_SYNC = 0;
		end
		else begin
			V_SYNC = 1;
		end
	end
	
	/*** Counter logic ***/
	always @(posedge CLK) begin
		if (h_counter >= `H_COUNT_MAX || !NRST) begin
			h_counter <= 11'b00;
		end
		else begin
			h_counter <= h_counter + 1;
		end
	end
	
	always @(posedge CLK) begin
		if (v_counter >= `V_COUNT_MAX || !NRST) begin
			v_counter <= 11'b00;
		end
		else begin
			v_counter <= v_counter + 1;
		end
	end

endmodule