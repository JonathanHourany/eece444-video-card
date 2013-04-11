/***********************************************************
 * @author		Jon Hourany
 * @date		4/04/13
 * @class		EECE 444
 *
 * @file		Controller.v
 * @proj		Video Card
 ************************************************************/
 module Controller(CLK, NRST, H_SYNC, V_SYNC, RGB_EN);
    input  wire CLK;        /*< CLK input from Top module   >*/
    input  wire NRST;       /*< Reset input from Top module >*/
    output reg  H_SYNC;     /*< Goes to VGA Horizontal Sync >*/
    output reg  V_SYNC;     /*< Goes to VGA Verical Sync    >*/
    output reg  RGB_EN  ;   /*< Enables RGB values durning display time on H_SYNC >*/

    reg [9:0] h_counter;   	/*< Tracks amount of pulses from CLK                >*/
    reg [18:0] v_counter;  	/*< Tracks amount of pulses from H_SYNC             >*/

    `define H_SYNC_PULSE        10'd96      /*< Length of Sync Pulse            >*/
    `define H_BACK_PORCH_END    10'd144     /*< Pulse len + Porch Len           >*/
    `define H_FRONT_PORCH_STRT  10'd784     /*< Front Porch Len - Max           >*/
    `define H_COUNT_MAX         10'd769     /*< Max line pulses for resolution  >*/

    `define V_SYNC_PULSE        19'd2   	/*< 2 H_SYNC lines       >*/
    `define V_BACK_PORCH_END    19'd35   	/*< 33+2 H_SYNC lines    >*/
    `define V_FRONT_PORCH_STRT  19'd515  	/*< 525-10 H_SYNC lines  >*/
    `define V_COUNT_MAX         19'd511  	/*< 525 H_SYNC lines     >*/

    /*** Logic for H_SYNC ***/
    always @(*) begin
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

    /*** Logic for V_SYNC ***/
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
        else if (h_counter == `H_COUNT_MAX) begin
            v_counter <= v_counter + 1;
        end
    end

endmodule