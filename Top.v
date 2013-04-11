/***********************************************************
 * @author		Jon Hourany
 * @date		4/04/13
 * @class		EECE 444
 *
 * @file		Top.v
 * @proj		Video Card
 ************************************************************/
module Top(RESET, H_SYNC, V_SYNC, RED);
	input  wire RESET;
	output wire H_SYNC;
	output wire V_SYNC;
	output wire RED;
	
	`define	X_COUNT_MAX	640
	
	reg[0:8]	x_counter;
	wire 		rgb_en;

	/*** Test Bench Code ***/
	 //reg osc_clk, reset;
	 //initial begin
		 //#0 reset 	= 0;
		 //#0 osc_clk = 0;
		 //#2 reset 	= 1;
	 //end
	 
	 //always #1 osc_clk = ~osc_clk;
	 
	OSCC OSCC_1 (.OSC(osc_clk));	/*< IP clock module for Lattice CPLD	>*/
	Controller CNTRL(.NRST(RESET), .CLK(osc_clk), .H_SYNC(H_SYNC), .V_SYNC(V_SYNC), .RGB_EN(rgb_en));
	
	always @(posedge osc_clk) begin
		if (x_counter >= `X_COUNT_MAX || !RESET) begin
			x_counter <= 9'b0;
		end
		else if (rgb_en) begin
			x_counter <= x_counter + 1;
		end
	end
	
	assign RED = (x_counter[0:3] == 3'b1 || x_counter[5:8] == 3'b1 ? 1:1'bz); 

	
endmodule 
