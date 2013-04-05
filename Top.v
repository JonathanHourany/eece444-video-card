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
	
	wire rgb_en;

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
	
	assign RED = (rgb_en ? 1:1'bz); 

	
endmodule 
