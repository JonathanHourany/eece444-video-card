/***********************************************************
 * @author		Jon Hourany
 * @date		3/09/13
 * @class		EECE 444
 *
 * @file		ctrl_lines.v
 * @proj		Video Card
 ************************************************************/
 module CtrlLines(CLK, NRST, H_SYNC, V_SYNC);
    input  CLK;        /*< CLK input from Top module   >*/
    input  NRST;       /*< Reset input from Top module >*/
    output H_SYNC;
    output V_SYNC;

	wire CLK; 
	wire NRST;
	reg  H_SYNC;
	reg  V_SYNC;
    reg [10:0]  h_counter;   /*< Tracks amount of pulses from CLK    >*/
    reg [18:0] v_counter;    /*< Tracks amount of pulses from H_SYNC >*/

    `define H_BACK_PORCH	11'd95
    `define H_FRONT_PORCH   11'd715
    `define H_COUNT_MAX     11'd800

    `define V_BACK_PORCH	19'd1600
    `define V_FRONT_PORCH   19'd422400
    `define V_COUNT_MAX     19'd422400

    always @(posedge NRST, posedge CLK) begin
        if (NRST) begin
            //h_counter <= 11'd00;
			H_SYNC	  <= 0;
        end
        else begin
            if (h_counter < `H_BACK_PORCH) begin
				H_SYNC <= 0;
			end
			else if (h_counter >= `H_BACK_PORCH) begin
				H_SYNC <= 1;
			end
			else begin
				H_SYNC <= H_SYNC;
			end
        end
    end
	
	always@ (posedge NRST, posedge CLK) begin
		if (NRST) begin
			h_counter <= 11'd00;
		end
		else begin
			if (h_counter >= `H_COUNT_MAX) begin
				h_counter 	<= 11'd00;
			end
			else begin
				h_counter 	<= h_counter + 1;
			end
		end
	end
	
    always @(posedge CLK) begin
        if (NRST) begin
            v_counter <= 9'd00;
			V_SYNC	  <= 0;
        end
        else begin
            if (v_counter < `V_BACK_PORCH) begin
				V_SYNC <= 0;
			end
			else if (v_counter >= `V_BACK_PORCH) begin
				V_SYNC <= 1;
			end
			else begin
				V_SYNC <= V_SYNC;
			end
			
			if (v_counter >= `V_COUNT_MAX) begin
				v_counter 	<= 9'd00;
			end
			else begin
				v_counter 	<= v_counter + 1;
			end
        end
    end
endmodule

