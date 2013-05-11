/***********************************************************
 * @author  Jon Hourany
 * @date  4/04/13
 * @class  EECE 444
 *
 * @file  Controller.v
 * @proj  Video Card
 *
 * @long  Using the following timing for V_SYNC I can
 *   
 ************************************************************/
module Controller(CLK, NRST, H_SYNC, V_SYNC, H_STATUS, V_STATUS, PIXEL_CNTR, ROW_NUM);
    input  wire      CLK;        /*< CLK input from Top module               >*/
    input  wire      NRST;       /*< Reset input from Top module             >*/
    output reg       H_SYNC;     /*< Goes to VGA Horizontal Sync             >*/
    output reg       V_SYNC;     /*< Goes to VGA Verical Sync                >*/
    output reg [2:0] H_STATUS;   /*< Tracks the status of H_SYNC             >*/
    output reg [2:0] V_STATUS;   /*< Tracks the status of V_SYNC             >*/
    output reg [9:0] PIXEL_CNTR; /*< Tracks what pixel monitor is on         >*/
    output reg [9:0] ROW_NUM;    /*< Tracks what row monitor is on           >*/
    
    reg [9:0] h_counter;         /*< Tracks amount of pulses from CLK        >*/
    reg [9:0] v_counter;         /*< Tracks amount of pulses from H_SYNC     >*/

    `define H_SYNC_PULSE        10'd96   /*< Length of Sync Pulse            >*/
    `define H_BACK_PORCH_END    10'd144  /*< Pulse len + Porch Len           >*/
    `define H_FRONT_PORCH_STRT  10'd784  /*< Front Porch Len - Max           >*/
    `define H_COUNT_MAX         10'd799  /*< Max line pulses for resolution  >*/

    `define V_SYNC_PULSE        19'd2    /*< 2 H_SYNC lines                  >*/
    `define V_BACK_PORCH_END    19'd35   /*< 33+2 H_SYNC lines               >*/
    `define V_FRONT_PORCH_STRT  19'd514  /*< 525-10 H_SYNC lines             >*/
    `define V_COUNT_MAX         19'd524  /*< 525 H_SYNC lines                >*/
    
    `define SYNC_PULSE           3'b001    
    `define TRACE_ZONE           3'b010
    `define DISPLAY_ZONE         3'b110

    /*** Logic for H_SYNC ***/
    always @(*) begin
       if (h_counter < `H_SYNC_PULSE) begin
          H_SYNC   = 1'b0;
          H_STATUS = `SYNC_PULSE;
       end
       else if (h_counter > `H_BACK_PORCH_END && h_counter < `H_FRONT_PORCH_STRT) begin
          H_SYNC   = 1'b1;
          H_STATUS = `DISPLAY_ZONE;
       end
       else begin
          H_SYNC   = 1'b1;
          H_STATUS = `TRACE_ZONE;
       end
    end

    /*** Logic for V_SYNC ***/
    always @(*) begin
       if (v_counter < `V_SYNC_PULSE) begin
          V_SYNC   = 1'b0;
          V_STATUS = `SYNC_PULSE;
       end
       else if (v_counter > `V_BACK_PORCH_END && v_counter < `V_FRONT_PORCH_STRT) begin
          V_SYNC   = 1'b1;
          V_STATUS = `DISPLAY_ZONE;
       end
       else begin
          V_SYNC   = 1'b1;
          V_STATUS = `TRACE_ZONE;
       end
    end

    /*** Counter logic ***/
    /*** h_counter ***/
    always @(posedge CLK) begin
       if (h_counter >= `H_COUNT_MAX || !NRST) begin
          h_counter <= 10'b00;
       end
       else begin
          h_counter <= h_counter + 1'b1;
       end
    end
    
    /*** v_counter ***/
    always @(posedge CLK) begin
       if (v_counter >= `V_COUNT_MAX || !NRST) begin
          v_counter <= 10'b00;
       end
       else if (h_counter == `H_COUNT_MAX) begin
          v_counter <= v_counter + 1'b1;
       end
    end
    
    /*** PIXEL_CNTR & ROW_NUM ***/
    always @(posedge CLK) begin
       if (H_STATUS[2] & V_STATUS[2]) begin
          PIXEL_CNTR <= PIXEL_CNTR + 1'b1;
       end
       else begin
          PIXEL_CNTR <= 1'b0;
       end
       
       if (V_STATUS[2]) begin
          if (h_counter == `H_COUNT_MAX) begin
             ROW_NUM <= ROW_NUM + 1;   /*< If V_SYNC is in display zone, increase >*/
          end                          /*<   the ROW_NUM on every reset of H_SYNC >*/
       end
       else begin
          ROW_NUM <= 1'b0;
       end
    end

endmodule