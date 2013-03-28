// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Wed Mar 27 22:59:12 2013

//
// Verilog Description of module Top
//

module Top (RESET, H_SYNC, V_SYNC, RED) /* synthesis syn_module_defined=1 */ ;   // c:/users/fox/programming/eece444-video-card/top.v(9[8:11])
    input RESET;   // c:/users/fox/programming/eece444-video-card/top.v(10[14:19])
    output H_SYNC;   // c:/users/fox/programming/eece444-video-card/top.v(11[14:20])
    output V_SYNC;   // c:/users/fox/programming/eece444-video-card/top.v(12[14:20])
    output RED;   // c:/users/fox/programming/eece444-video-card/top.v(13[14:17])
    
    wire RESET_c;   // c:/users/fox/programming/eece444-video-card/top.v(10[14:19])
    wire H_SYNC_c;   // c:/users/fox/programming/eece444-video-card/top.v(11[14:20])
    wire osc_clk;   // c:/users/fox/programming/eece444-video-card/top.v(41[20:27])
    wire [10:0]h_counter;   // c:/users/fox/programming/eece444-video-card/controller.v(15[16:25])
    wire VCC_net;   // c:/users/fox/programming/eece444-video-card/top.v(13[14:17])
    
    wire GND_net, n8, n4, n128;
    
    VLO i1 (.Z(GND_net));
    OSCC OSCC_1 (.OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    ORCALUT4 i2_3_lut (.A(h_counter[6]), .B(h_counter[5]), .C(h_counter[7]), 
            .Z(n128)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    TSALL TSALL_INST (.TSALL(GND_net));
    OBZ V_SYNC_pad (.I(GND_net), .T(VCC_net), .O(V_SYNC));
    ORCALUT4 i1_2_lut (.A(h_counter[8]), .B(h_counter[9]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    Controller CNTRL (.GND_net(GND_net), .\h_counter[10] (h_counter[10]), 
            .osc_clk(osc_clk), .n8(n8), .\h_counter[8] (h_counter[8]), 
            .\h_counter[9] (h_counter[9]), .H_SYNC_c(H_SYNC_c), .\h_counter[6] (h_counter[6]), 
            .\h_counter[7] (h_counter[7]), .\h_counter[5] (h_counter[5])) /* synthesis syn_module_defined=1 */ ;
    OB H_SYNC_pad (.I(H_SYNC_c), .O(H_SYNC));
    GSR GSR_INST (.GSR(VCC_net));
    ORCALUT4 i1_4_lut (.A(h_counter[10]), .B(RESET_c), .C(n128), .D(n4), 
            .Z(n8)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfbbb;
    OB RED_pad (.I(VCC_net), .O(RED));
    IB RESET_pad (.I(RESET), .O(RESET_c));
    VHI i129 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//


//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


//
// Verilog Description of module Controller
//

module Controller (GND_net, \h_counter[10] , osc_clk, n8, \h_counter[8] , 
            \h_counter[9] , H_SYNC_c, \h_counter[6] , \h_counter[7] , 
            \h_counter[5] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output \h_counter[10] ;
    input osc_clk;
    input n8;
    output \h_counter[8] ;
    output \h_counter[9] ;
    output H_SYNC_c;
    output \h_counter[6] ;
    output \h_counter[7] ;
    output \h_counter[5] ;
    
    wire [10:0]h_counter;   // c:/users/fox/programming/eece444-video-card/controller.v(15[16:25])
    wire [10:0]n50;
    
    wire n119, n6, n122, n123, n6_adj_1, n121, n120, n125;
    
    CCU2 h_counter_8_add_4_2 (.A0(h_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n119), .S0(n50[0]), .S1(n50[1]));
    defparam h_counter_8_add_4_2.INIT0 = 16'h0555;
    defparam h_counter_8_add_4_2.INIT1 = 16'hfaaa;
    defparam h_counter_8_add_4_2.INJECT1_0 = "NO";
    defparam h_counter_8_add_4_2.INJECT1_1 = "NO";
    FD1S3IX h_counter_8__i10 (.D(n50[10]), .CK(osc_clk), .CD(n8), .Q(\h_counter[10] ));
    defparam h_counter_8__i10.GSR = "DISABLED";
    ORCALUT4 i1_2_lut (.A(h_counter[0]), .B(h_counter[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2 h_counter_8_add_4_10 (.A0(\h_counter[8] ), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(\h_counter[9] ), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n122), .COUT1(n123), .S0(n50[8]), .S1(n50[9]));
    defparam h_counter_8_add_4_10.INIT0 = 16'hfaaa;
    defparam h_counter_8_add_4_10.INIT1 = 16'hfaaa;
    defparam h_counter_8_add_4_10.INJECT1_0 = "NO";
    defparam h_counter_8_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i4_4_lut (.A(\h_counter[9] ), .B(\h_counter[8] ), .C(\h_counter[10] ), 
            .D(n6_adj_1), .Z(H_SYNC_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    CCU2 h_counter_8_add_4_8 (.A0(\h_counter[6] ), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(\h_counter[7] ), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n121), .COUT1(n122), .S0(n50[6]), .S1(n50[7]));
    defparam h_counter_8_add_4_8.INIT0 = 16'hfaaa;
    defparam h_counter_8_add_4_8.INIT1 = 16'hfaaa;
    defparam h_counter_8_add_4_8.INJECT1_0 = "NO";
    defparam h_counter_8_add_4_8.INJECT1_1 = "NO";
    CCU2 h_counter_8_add_4_6 (.A0(h_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(\h_counter[5] ), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n120), .COUT1(n121), .S0(n50[4]), .S1(n50[5]));
    defparam h_counter_8_add_4_6.INIT0 = 16'hfaaa;
    defparam h_counter_8_add_4_6.INIT1 = 16'hfaaa;
    defparam h_counter_8_add_4_6.INJECT1_0 = "NO";
    defparam h_counter_8_add_4_6.INJECT1_1 = "NO";
    CCU2 h_counter_8_add_4_4 (.A0(h_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n119), .COUT1(n120), .S0(n50[2]), .S1(n50[3]));
    defparam h_counter_8_add_4_4.INIT0 = 16'hfaaa;
    defparam h_counter_8_add_4_4.INIT1 = 16'hfaaa;
    defparam h_counter_8_add_4_4.INJECT1_0 = "NO";
    defparam h_counter_8_add_4_4.INJECT1_1 = "NO";
    CCU2 h_counter_8_add_4_12 (.A0(\h_counter[10] ), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n123), .S0(n50[10]));
    defparam h_counter_8_add_4_12.INIT0 = 16'hfaaa;
    defparam h_counter_8_add_4_12.INIT1 = 16'h0000;
    defparam h_counter_8_add_4_12.INJECT1_0 = "NO";
    defparam h_counter_8_add_4_12.INJECT1_1 = "NO";
    FD1S3IX h_counter_8__i0 (.D(n50[0]), .CK(osc_clk), .CD(n8), .Q(h_counter[0]));
    defparam h_counter_8__i0.GSR = "DISABLED";
    FD1S3IX h_counter_8__i9 (.D(n50[9]), .CK(osc_clk), .CD(n8), .Q(\h_counter[9] ));
    defparam h_counter_8__i9.GSR = "DISABLED";
    FD1S3IX h_counter_8__i8 (.D(n50[8]), .CK(osc_clk), .CD(n8), .Q(\h_counter[8] ));
    defparam h_counter_8__i8.GSR = "DISABLED";
    FD1S3IX h_counter_8__i7 (.D(n50[7]), .CK(osc_clk), .CD(n8), .Q(\h_counter[7] ));
    defparam h_counter_8__i7.GSR = "DISABLED";
    FD1S3IX h_counter_8__i6 (.D(n50[6]), .CK(osc_clk), .CD(n8), .Q(\h_counter[6] ));
    defparam h_counter_8__i6.GSR = "DISABLED";
    FD1S3IX h_counter_8__i5 (.D(n50[5]), .CK(osc_clk), .CD(n8), .Q(\h_counter[5] ));
    defparam h_counter_8__i5.GSR = "DISABLED";
    FD1S3IX h_counter_8__i4 (.D(n50[4]), .CK(osc_clk), .CD(n8), .Q(h_counter[4]));
    defparam h_counter_8__i4.GSR = "DISABLED";
    FD1S3IX h_counter_8__i3 (.D(n50[3]), .CK(osc_clk), .CD(n8), .Q(h_counter[3]));
    defparam h_counter_8__i3.GSR = "DISABLED";
    FD1S3IX h_counter_8__i2 (.D(n50[2]), .CK(osc_clk), .CD(n8), .Q(h_counter[2]));
    defparam h_counter_8__i2.GSR = "DISABLED";
    FD1S3IX h_counter_8__i1 (.D(n50[1]), .CK(osc_clk), .CD(n8), .Q(h_counter[1]));
    defparam h_counter_8__i1.GSR = "DISABLED";
    ORCALUT4 i4_4_lut_adj_1 (.A(h_counter[3]), .B(h_counter[2]), .C(h_counter[4]), 
            .D(n6), .Z(n125)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_1.init = 16'h8000;
    ORCALUT4 i1_4_lut (.A(\h_counter[6] ), .B(\h_counter[7] ), .C(\h_counter[5] ), 
            .D(n125), .Z(n6_adj_1)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heeec;
    
endmodule
