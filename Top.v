/***********************************************************
 * @author		Jon Hourany
 * @date		3/09/13
 * @class		EECE 444
 *
 * @file		ctrl_lines.v
 * @proj		Video Card
 ************************************************************/
module Top(RESET, H_SYNC, V_SYNC, RED, BLUE, GREEN,clk);
	input  RESET;
	output reg H_SYNC;
	output wire V_SYNC;
	output reg RED;
output	reg BLUE;output reg GREEN;
	
	input clk;
	wire clk;
	reg [9:0]  h_counter;   /*< Tracks amount of pulses from CLK    >*/
	`define COLOR_DEPTH 1
	`define H_BACK_PORCH	10'd95
    `define H_FRONT_PORCH   10'd715
    `define H_COUNT_MAX     10'd800
	//OSCC oscc_0(.OSC(clk));
	//CtrlLines CONTROLLINES(.NRST(RESET), .CLK(clk), .H_SYNC(H_SYNC), .V_SYNC(V_SYNC));
	
	    always @( posedge clk) begin
        if (RESET == 0) begin
            //h_counter <= 10'h000;
			H_SYNC	  <= 0;
        end
        else begin
           
			
            if (h_counter < `H_BACK_PORCH) begin
				H_SYNC <= 0;
			end
			else if (h_counter > `H_BACK_PORCH) begin
				H_SYNC <= 1;
			end
			else begin
				H_SYNC <= H_SYNC;
			end
			
			if (h_counter > `H_COUNT_MAX) begin
				h_counter 	<= 10'h000;
			end
			else begin
			    h_counter <= h_counter + 10'h001;
			end
        end
    end
	always begin
		RED		<= 1'b1;
		BLUE	<= 0;
		//GREEN	<= 0;
	end
	
endmodule 
