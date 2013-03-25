/***********************************************************
 * @author		Jon Hourany
 * @date		3/09/13
 * @class		EECE 444
 *
 * @file		ctrl_lines.v
 * @proj		Video Card
 ************************************************************/
 module CtrlLines(NRST, CLK, H_SYNC, V_SYNC);
    input  wire CLK;        /*< CLK input from Top module   >*/
    input  wire NRST;       /*< Reset input from Top module >*/
    output reg  H_SYNC;
    output reg  V_SYNC;

    reg [9:0]  h_counter;   /*< Tracks amount of pulses from CLK    >*/
    reg [18:0] v_counter;   /*< Tracks amount of pulses from H_SYNC >*/

    `define H_BACK_PORCH	9'd95
    `define H_FRONT_PORCH   9'd715
    `define H_COUNT_MAX     9'd800

    `define V_BACK_PORCH	18'd1600
    `define V_FRONT_PORCH   18'd422400
    `define V_COUNT_MAX     18'd422400

    always @( posedge CLK) begin
        if (!NRST) begin
            h_counter <= 9'h000;
			H_SYNC	  <= 0;
        end
        else begin
            h_counter <= h_counter + 9'h001;
			
            if (h_counter < `H_BACK_PORCH) begin
				H_SYNC <= 0;
			end
			else if (h_counter > `H_BACK_PORCH) begin
				H_SYNC <= 1;
			end
			else begin
				H_SYNC <= 0;
			end
			
			if (h_counter > `H_COUNT_MAX) begin
				h_counter 	<= 9'd00;
			end
			else begin
				h_counter 	<= h_counter;
			end
        end
    end

    always @(negedge NRST, posedge CLK) begin
        if (!NRST) begin
            v_counter <= 18'b00;
        end
        else begin
            v_counter <= v_counter + 1'b1;
            if (v_counter < `V_BACK_PORCH) begin
				V_SYNC <= 0;
			end
			else if (v_counter > `V_BACK_PORCH && v_counter < `V_COUNT_MAX) begin
				V_SYNC <= 1;
			end
			else if (h_counter > `V_COUNT_MAX) begin
				V_SYNC		<= 0;
				v_counter 	<= 18'b00;
			end
        end
    end
endmodule

