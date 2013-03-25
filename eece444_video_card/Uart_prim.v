// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Mon Mar 25 01:11:03 2013

//
// Verilog Description of module Uart
//

module Uart (CLK, RESET, RX_IN, TX_OUT);   // c:/users/fox/programming/eece444-video-card/usart.v(1[8:12])
    input CLK;   // c:/users/fox/programming/eece444-video-card/usart.v(2[14:17])
    input RESET;   // c:/users/fox/programming/eece444-video-card/usart.v(3[14:19])
    input RX_IN;   // c:/users/fox/programming/eece444-video-card/usart.v(4[14:19])
    output TX_OUT;   // c:/users/fox/programming/eece444-video-card/usart.v(5[15:21])
    
    wire CLK_c;   // c:/users/fox/programming/eece444-video-card/usart.v(2[14:17])
    wire RESET_c;   // c:/users/fox/programming/eece444-video-card/usart.v(3[14:19])
    wire RX_IN_c;   // c:/users/fox/programming/eece444-video-card/usart.v(4[14:19])
    
    wire GND_net, VCC_net;
    
    VHI i7 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OBZ TX_OUT_pad (.I(GND_net), .T(VCC_net), .O(TX_OUT));
    GSR GSR_INST (.GSR(VCC_net));
    IB CLK_pad (.I(CLK), .O(CLK_c));
    IB RESET_pad (.I(RESET), .O(RESET_c));
    IB RX_IN_pad (.I(RX_IN), .O(RX_IN_c));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i4 (.Z(GND_net));
    
endmodule

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//


//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

