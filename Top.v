/***********************************************************
 * @author		Jon Hourany
 * @date		3/09/13
 * @class		EECE 444
 *
 * @file		ctrl_lines.v
 * @proj		Video Card
 ************************************************************/
module Top(RESET, H_SYNC, V_SYNC, RED);
	input  RESET;
	output wire H_SYNC;
	output wire V_SYNC;
	output wire RED;
	//output reg  BLUE;	//output reg  GREEN;
	//output wire CLK_OUT;
	
	wire clk;
	
	OSCC oscc_0(.OSC(clk));
	CtrlLines CONTROLLINES(.NRST(RESET), .CLK(clk), .H_SYNC(H_SYNC), .V_SYNC(V_SYNC));
	
	assign RED = 1;
	
	//assign CLK_OUT = clk;
	
	//always @( posedge clk) begin
        //if (RESET == 0) begin
            //h_counter <= 10'h000;
			//H_SYNC	  <= 0;
        //end
        //else begin
           
			
            //if (h_counter < `H_BACK_PORCH) begin
				//H_SYNC <= 0;
			//end
			//else if (h_counter > `H_BACK_PORCH) begin
				//H_SYNC <= 1;
			//end
			//else begin
				//H_SYNC <= H_SYNC;
			//end
			
			//if (h_counter > `H_COUNT_MAX) begin
				//h_counter 	<= 10'h000;
			//end
			//else begin
			    //h_counter <= h_counter + 10'h001;
			//end
        //end
    //end
	
endmodule 
