// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Fri Apr 12 22:50:26 2013

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
    wire V_SYNC_c;   // c:/users/fox/programming/eece444-video-card/top.v(12[14:20])
    wire [0:8]x_counter;   // c:/users/fox/programming/eece444-video-card/top.v(17[11:20])
    wire osc_clk;   // c:/users/fox/programming/eece444-video-card/top.v(30[20:27])
    wire h_display;   // c:/users/fox/programming/eece444-video-card/controller.v(22[8:17])
    wire v_display;   // c:/users/fox/programming/eece444-video-card/controller.v(23[8:17])
    
    wire GND_net, VCC_net, n8, n505, n508, n404;
    wire [8:0]n73;
    
    wire n416, n507;
    wire [8:0]n42_adj_9;
    
    wire n506;
    
    VHI i2 (.Z(VCC_net));
    Controller CNTRL (.n8(n8), .RESET_c(RESET_c), .GND_net(GND_net), .H_SYNC_c(H_SYNC_c), 
            .osc_clk(osc_clk), .V_SYNC_c(V_SYNC_c), .h_display(h_display), 
            .v_display(v_display)) /* synthesis syn_module_defined=1 */ ;
    OBZ RED_pad (.I(VCC_net), .T(n416), .O(RED));
    OSCC OSCC_1 (.OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    ORCALUT4 i326_4_lut (.A(x_counter[6]), .B(x_counter[3]), .C(x_counter[4]), 
            .D(x_counter[5]), .Z(n404)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i326_4_lut.init = 16'hc8c0;
    OB V_SYNC_pad (.I(V_SYNC_c), .O(V_SYNC));
    FD1S3IX x_counter_21__i0 (.D(n42_adj_9[0]), .CK(osc_clk), .CD(n8), 
            .Q(n73[0]));
    defparam x_counter_21__i0.GSR = "DISABLED";
    CCU2 x_counter_21_add_4_8 (.A0(x_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(x_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n507), .COUT1(n508), .S0(n42_adj_9[6]), 
         .S1(n42_adj_9[7]));
    defparam x_counter_21_add_4_8.INIT0 = 16'hfaaa;
    defparam x_counter_21_add_4_8.INIT1 = 16'hfaaa;
    defparam x_counter_21_add_4_8.INJECT1_0 = "NO";
    defparam x_counter_21_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i338_4_lut (.A(x_counter[1]), .B(x_counter[0]), .C(n404), 
            .D(x_counter[2]), .Z(n416)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i338_4_lut.init = 16'hccc8;
    VLO i1 (.Z(GND_net));
    CCU2 x_counter_21_add_4_6 (.A0(x_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(x_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n506), .COUT1(n507), .S0(n42_adj_9[4]), 
         .S1(n42_adj_9[5]));
    defparam x_counter_21_add_4_6.INIT0 = 16'hfaaa;
    defparam x_counter_21_add_4_6.INIT1 = 16'hfaaa;
    defparam x_counter_21_add_4_6.INJECT1_0 = "NO";
    defparam x_counter_21_add_4_6.INJECT1_1 = "NO";
    CCU2 x_counter_21_add_4_10 (.A0(x_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n508), .S0(n42_adj_9[8]));
    defparam x_counter_21_add_4_10.INIT0 = 16'hfaaa;
    defparam x_counter_21_add_4_10.INIT1 = 16'h0000;
    defparam x_counter_21_add_4_10.INJECT1_0 = "NO";
    defparam x_counter_21_add_4_10.INJECT1_1 = "NO";
    CCU2 x_counter_21_add_4_4 (.A0(x_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(x_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n505), .COUT1(n506), .S0(n42_adj_9[2]), 
         .S1(n42_adj_9[3]));
    defparam x_counter_21_add_4_4.INIT0 = 16'hfaaa;
    defparam x_counter_21_add_4_4.INIT1 = 16'hfaaa;
    defparam x_counter_21_add_4_4.INJECT1_0 = "NO";
    defparam x_counter_21_add_4_4.INJECT1_1 = "NO";
    FD1S3IX x_counter_21__i8 (.D(n42_adj_9[8]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[0]));
    defparam x_counter_21__i8.GSR = "DISABLED";
    FD1S3IX x_counter_21__i7 (.D(n42_adj_9[7]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[1]));
    defparam x_counter_21__i7.GSR = "DISABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3IX x_counter_21__i6 (.D(n42_adj_9[6]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[2]));
    defparam x_counter_21__i6.GSR = "DISABLED";
    FD1S3IX x_counter_21__i5 (.D(n42_adj_9[5]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[3]));
    defparam x_counter_21__i5.GSR = "DISABLED";
    FD1S3IX x_counter_21__i4 (.D(n42_adj_9[4]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[4]));
    defparam x_counter_21__i4.GSR = "DISABLED";
    FD1S3IX x_counter_21__i3 (.D(n42_adj_9[3]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[5]));
    defparam x_counter_21__i3.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX x_counter_21__i2 (.D(n42_adj_9[2]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[6]));
    defparam x_counter_21__i2.GSR = "DISABLED";
    FD1S3IX x_counter_21__i1 (.D(n42_adj_9[1]), .CK(osc_clk), .CD(n8), 
            .Q(n73[1]));
    defparam x_counter_21__i1.GSR = "DISABLED";
    OB H_SYNC_pad (.I(H_SYNC_c), .O(H_SYNC));
    CCU2 x_counter_21_add_4_2 (.A0(h_display), .B0(v_display), .C0(n73[0]), 
         .D0(GND_net), .A1(n73[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(GND_net), .COUT1(n505), .S0(n42_adj_9[0]), .S1(n42_adj_9[1]));
    defparam x_counter_21_add_4_2.INIT0 = 16'h7878;
    defparam x_counter_21_add_4_2.INIT1 = 16'hfaaa;
    defparam x_counter_21_add_4_2.INJECT1_0 = "NO";
    defparam x_counter_21_add_4_2.INJECT1_1 = "NO";
    IB RESET_pad (.I(RESET), .O(RESET_c));
    
endmodule

//
// Verilog Description of module Controller
//

module Controller (n8, RESET_c, GND_net, H_SYNC_c, osc_clk, V_SYNC_c, 
            h_display, v_display) /* synthesis syn_module_defined=1 */ ;
    output n8;
    input RESET_c;
    input GND_net;
    output H_SYNC_c;
    input osc_clk;
    output V_SYNC_c;
    output h_display;
    output v_display;
    
    wire [18:0]v_counter;   // c:/users/fox/programming/eece444-video-card/controller.v(21[17:26])
    wire [9:0]h_counter;   // c:/users/fox/programming/eece444-video-card/controller.v(20[16:25])
    
    wire n300, n7, n8_adj_1, n55, n562, n509;
    wire [18:0]n82;
    
    wire n510, n44, n16, n18;
    wire [9:0]n46;
    
    wire n38, n17, n10, n518, n515, n516, n14, n512, n513, 
        n521, n511, n6, n6_adj_3, n514, n577, n565, n581, n530, 
        n520, n519, n4, n27, n400, n573, n611, n517, n564;
    
    INV i4 (.A(RESET_c), .Z(n8));
    ORCALUT4 i2_4_lut (.A(RESET_c), .B(n300), .C(n7), .D(n8_adj_1), 
            .Z(n55)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hfddd;
    ORCALUT4 i2_3_lut (.A(v_counter[7]), .B(v_counter[8]), .C(v_counter[6]), 
            .Z(n562)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    CCU2 v_counter_23_add_4_4 (.A0(v_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n509), .COUT1(n510), .S0(n82[2]), .S1(n82[3]));
    defparam v_counter_23_add_4_4.INIT0 = 16'hfaaa;
    defparam v_counter_23_add_4_4.INIT1 = 16'hfaaa;
    defparam v_counter_23_add_4_4.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i3_4_lut (.A(n44), .B(h_counter[9]), .C(h_counter[7]), .D(h_counter[8]), 
            .Z(H_SYNC_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    ORCALUT4 i6_4_lut (.A(v_counter[16]), .B(v_counter[13]), .C(v_counter[11]), 
            .D(v_counter[14]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    FD1S3IX v_counter_23__i0 (.D(n82[0]), .CK(osc_clk), .CD(n55), .Q(v_counter[0]));
    defparam v_counter_23__i0.GSR = "DISABLED";
    ORCALUT4 i1_2_lut (.A(h_counter[5]), .B(h_counter[6]), .Z(n44)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1S3IX h_counter_22__i0 (.D(n46[0]), .CK(osc_clk), .CD(n18), .Q(h_counter[0]));
    defparam h_counter_22__i0.GSR = "DISABLED";
    CCU2 v_counter_23_add_4_2 (.A0(n38), .B0(h_counter[8]), .C0(v_counter[0]), 
         .D0(GND_net), .A1(v_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n509), .S0(n82[0]), .S1(n82[1]));
    defparam v_counter_23_add_4_2.INIT0 = 16'hd2d2;
    defparam v_counter_23_add_4_2.INIT1 = 16'hfaaa;
    defparam v_counter_23_add_4_2.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_2.INJECT1_1 = "NO";
    ORCALUT4 i7_4_lut (.A(v_counter[15]), .B(v_counter[12]), .C(v_counter[10]), 
            .D(v_counter[18]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    FD1S3IX h_counter_22__i9 (.D(n46[9]), .CK(osc_clk), .CD(n18), .Q(h_counter[9]));
    defparam h_counter_22__i9.GSR = "DISABLED";
    ORCALUT4 i2_2_lut (.A(h_counter[0]), .B(h_counter[9]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    CCU2 h_counter_22_add_4_2 (.A0(h_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n518), .S0(n46[0]), .S1(n46[1]));
    defparam h_counter_22_add_4_2.INIT0 = 16'h0555;
    defparam h_counter_22_add_4_2.INIT1 = 16'hfaaa;
    defparam h_counter_22_add_4_2.INJECT1_0 = "NO";
    defparam h_counter_22_add_4_2.INJECT1_1 = "NO";
    CCU2 v_counter_23_add_4_16 (.A0(v_counter[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[15]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n515), .COUT1(n516), .S0(n82[14]), .S1(n82[15]));
    defparam v_counter_23_add_4_16.INIT0 = 16'hfaaa;
    defparam v_counter_23_add_4_16.INIT1 = 16'hfaaa;
    defparam v_counter_23_add_4_16.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_16.INJECT1_1 = "NO";
    ORCALUT4 i9_4_lut (.A(n17), .B(v_counter[9]), .C(n16), .D(v_counter[17]), 
            .Z(n300)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_1 (.A(h_counter[2]), .B(h_counter[3]), .C(h_counter[1]), 
            .D(n44), .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_1.init = 16'h8000;
    ORCALUT4 i7_4_lut_adj_2 (.A(h_counter[7]), .B(n14), .C(n10), .D(h_counter[4]), 
            .Z(n38)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_2.init = 16'h8000;
    CCU2 v_counter_23_add_4_10 (.A0(v_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n512), .COUT1(n513), .S0(n82[8]), .S1(n82[9]));
    defparam v_counter_23_add_4_10.INIT0 = 16'hfaaa;
    defparam v_counter_23_add_4_10.INIT1 = 16'hfaaa;
    defparam v_counter_23_add_4_10.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i2_4_lut_adj_3 (.A(h_counter[9]), .B(n38), .C(h_counter[8]), 
            .D(RESET_c), .Z(n18)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(D))) */ ;
    defparam i2_4_lut_adj_3.init = 16'hecff;
    CCU2 h_counter_22_add_4_10 (.A0(h_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n521), .S0(n46[8]), .S1(n46[9]));
    defparam h_counter_22_add_4_10.INIT0 = 16'hfaaa;
    defparam h_counter_22_add_4_10.INIT1 = 16'hfaaa;
    defparam h_counter_22_add_4_10.INJECT1_0 = "NO";
    defparam h_counter_22_add_4_10.INJECT1_1 = "NO";
    CCU2 v_counter_23_add_4_8 (.A0(v_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n511), .COUT1(n512), .S0(n82[6]), .S1(n82[7]));
    defparam v_counter_23_add_4_8.INIT0 = 16'hfaaa;
    defparam v_counter_23_add_4_8.INIT1 = 16'hfaaa;
    defparam v_counter_23_add_4_8.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_8.INJECT1_1 = "NO";
    FD1S3IX h_counter_22__i8 (.D(n46[8]), .CK(osc_clk), .CD(n18), .Q(h_counter[8]));
    defparam h_counter_22__i8.GSR = "DISABLED";
    FD1S3IX h_counter_22__i7 (.D(n46[7]), .CK(osc_clk), .CD(n18), .Q(h_counter[7]));
    defparam h_counter_22__i7.GSR = "DISABLED";
    FD1S3IX h_counter_22__i6 (.D(n46[6]), .CK(osc_clk), .CD(n18), .Q(h_counter[6]));
    defparam h_counter_22__i6.GSR = "DISABLED";
    FD1S3IX h_counter_22__i5 (.D(n46[5]), .CK(osc_clk), .CD(n18), .Q(h_counter[5]));
    defparam h_counter_22__i5.GSR = "DISABLED";
    FD1S3IX h_counter_22__i4 (.D(n46[4]), .CK(osc_clk), .CD(n18), .Q(h_counter[4]));
    defparam h_counter_22__i4.GSR = "DISABLED";
    FD1S3IX h_counter_22__i3 (.D(n46[3]), .CK(osc_clk), .CD(n18), .Q(h_counter[3]));
    defparam h_counter_22__i3.GSR = "DISABLED";
    FD1S3IX h_counter_22__i2 (.D(n46[2]), .CK(osc_clk), .CD(n18), .Q(h_counter[2]));
    defparam h_counter_22__i2.GSR = "DISABLED";
    FD1S3IX h_counter_22__i1 (.D(n46[1]), .CK(osc_clk), .CD(n18), .Q(h_counter[1]));
    defparam h_counter_22__i1.GSR = "DISABLED";
    CCU2 v_counter_23_add_4_6 (.A0(v_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n510), .COUT1(n511), .S0(n82[4]), .S1(n82[5]));
    defparam v_counter_23_add_4_6.INIT0 = 16'hfaaa;
    defparam v_counter_23_add_4_6.INIT1 = 16'hfaaa;
    defparam v_counter_23_add_4_6.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_4 (.A(v_counter[6]), .B(v_counter[4]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'h8888;
    ORCALUT4 i4_4_lut (.A(v_counter[5]), .B(n300), .C(n562), .D(n6_adj_3), 
            .Z(V_SYNC_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    CCU2 v_counter_23_add_4_14 (.A0(v_counter[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n514), .COUT1(n515), .S0(n82[12]), .S1(n82[13]));
    defparam v_counter_23_add_4_14.INIT0 = 16'hfaaa;
    defparam v_counter_23_add_4_14.INIT1 = 16'hfaaa;
    defparam v_counter_23_add_4_14.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 i482_2_lut (.A(h_counter[7]), .B(h_counter[6]), .Z(n577)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i482_2_lut.init = 16'heeee;
    ORCALUT4 i4_4_lut_adj_5 (.A(v_counter[5]), .B(v_counter[7]), .C(v_counter[8]), 
            .D(n6), .Z(n565)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_5.init = 16'h8000;
    ORCALUT4 i1_2_lut_4_lut (.A(v_counter[2]), .B(v_counter[4]), .C(v_counter[3]), 
            .D(v_counter[1]), .Z(n6_adj_3)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i3_3_lut (.A(n565), .B(v_counter[3]), .C(v_counter[1]), .Z(n8_adj_1)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    ORCALUT4 i491_4_lut (.A(h_counter[5]), .B(h_counter[9]), .C(n577), 
            .D(h_counter[4]), .Z(n581)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))))) */ ;
    defparam i491_4_lut.init = 16'h3337;
    ORCALUT4 i3_4_lut_adj_6 (.A(h_counter[0]), .B(h_counter[3]), .C(h_counter[1]), 
            .D(h_counter[2]), .Z(n530)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_6.init = 16'hfffe;
    CCU2 h_counter_22_add_4_8 (.A0(h_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n520), .COUT1(n521), .S0(n46[6]), .S1(n46[7]));
    defparam h_counter_22_add_4_8.INIT0 = 16'hfaaa;
    defparam h_counter_22_add_4_8.INIT1 = 16'hfaaa;
    defparam h_counter_22_add_4_8.INJECT1_0 = "NO";
    defparam h_counter_22_add_4_8.INJECT1_1 = "NO";
    CCU2 h_counter_22_add_4_6 (.A0(h_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n519), .COUT1(n520), .S0(n46[4]), .S1(n46[5]));
    defparam h_counter_22_add_4_6.INIT0 = 16'hfaaa;
    defparam h_counter_22_add_4_6.INIT1 = 16'hfaaa;
    defparam h_counter_22_add_4_6.INJECT1_0 = "NO";
    defparam h_counter_22_add_4_6.INJECT1_1 = "NO";
    CCU2 v_counter_23_add_4_12 (.A0(v_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n513), .COUT1(n514), .S0(n82[10]), .S1(n82[11]));
    defparam v_counter_23_add_4_12.INIT0 = 16'hfaaa;
    defparam v_counter_23_add_4_12.INIT1 = 16'hfaaa;
    defparam v_counter_23_add_4_12.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_12.INJECT1_1 = "NO";
    FD1S3IX v_counter_23__i18 (.D(n82[18]), .CK(osc_clk), .CD(n55), .Q(v_counter[18]));
    defparam v_counter_23__i18.GSR = "DISABLED";
    ORCALUT4 i2_2_lut_adj_7 (.A(v_counter[2]), .B(v_counter[0]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_7.init = 16'h8888;
    ORCALUT4 i1_3_lut (.A(n530), .B(h_counter[5]), .C(h_counter[4]), .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hecec;
    ORCALUT4 i1_4_lut (.A(h_counter[9]), .B(h_counter[7]), .C(h_counter[6]), 
            .D(n4), .Z(n27)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'heeea;
    ORCALUT4 i322_2_lut (.A(v_counter[0]), .B(v_counter[1]), .Z(n400)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i322_2_lut.init = 16'heeee;
    ORCALUT4 i478_4_lut (.A(n400), .B(n565), .C(v_counter[3]), .D(v_counter[2]), 
            .Z(n573)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i478_4_lut.init = 16'hc8c0;
    ORCALUT4 i2_3_lut_rep_3 (.A(v_counter[2]), .B(v_counter[4]), .C(v_counter[3]), 
            .Z(n611)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_3.init = 16'hfefe;
    CCU2 h_counter_22_add_4_4 (.A0(h_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n518), .COUT1(n519), .S0(n46[2]), .S1(n46[3]));
    defparam h_counter_22_add_4_4.INIT0 = 16'hfaaa;
    defparam h_counter_22_add_4_4.INIT1 = 16'hfaaa;
    defparam h_counter_22_add_4_4.INJECT1_0 = "NO";
    defparam h_counter_22_add_4_4.INJECT1_1 = "NO";
    CCU2 v_counter_23_add_4_20 (.A0(v_counter[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n517), .S0(n82[18]));
    defparam v_counter_23_add_4_20.INIT0 = 16'hfaaa;
    defparam v_counter_23_add_4_20.INIT1 = 16'h0000;
    defparam v_counter_23_add_4_20.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_20.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_adj_8 (.A(n611), .B(n562), .C(v_counter[5]), .Z(n564)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_8.init = 16'hecec;
    PFUMX i37 (.BLUT(n27), .ALUT(n581), .C0(h_counter[8]), .Z(h_display));
    CCU2 v_counter_23_add_4_18 (.A0(v_counter[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[17]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n516), .COUT1(n517), .S0(n82[16]), .S1(n82[17]));
    defparam v_counter_23_add_4_18.INIT0 = 16'hfaaa;
    defparam v_counter_23_add_4_18.INIT1 = 16'hfaaa;
    defparam v_counter_23_add_4_18.INJECT1_0 = "NO";
    defparam v_counter_23_add_4_18.INJECT1_1 = "NO";
    FD1S3IX v_counter_23__i17 (.D(n82[17]), .CK(osc_clk), .CD(n55), .Q(v_counter[17]));
    defparam v_counter_23__i17.GSR = "DISABLED";
    FD1S3IX v_counter_23__i16 (.D(n82[16]), .CK(osc_clk), .CD(n55), .Q(v_counter[16]));
    defparam v_counter_23__i16.GSR = "DISABLED";
    FD1S3IX v_counter_23__i15 (.D(n82[15]), .CK(osc_clk), .CD(n55), .Q(v_counter[15]));
    defparam v_counter_23__i15.GSR = "DISABLED";
    FD1S3IX v_counter_23__i14 (.D(n82[14]), .CK(osc_clk), .CD(n55), .Q(v_counter[14]));
    defparam v_counter_23__i14.GSR = "DISABLED";
    FD1S3IX v_counter_23__i13 (.D(n82[13]), .CK(osc_clk), .CD(n55), .Q(v_counter[13]));
    defparam v_counter_23__i13.GSR = "DISABLED";
    FD1S3IX v_counter_23__i12 (.D(n82[12]), .CK(osc_clk), .CD(n55), .Q(v_counter[12]));
    defparam v_counter_23__i12.GSR = "DISABLED";
    FD1S3IX v_counter_23__i11 (.D(n82[11]), .CK(osc_clk), .CD(n55), .Q(v_counter[11]));
    defparam v_counter_23__i11.GSR = "DISABLED";
    FD1S3IX v_counter_23__i10 (.D(n82[10]), .CK(osc_clk), .CD(n55), .Q(v_counter[10]));
    defparam v_counter_23__i10.GSR = "DISABLED";
    FD1S3IX v_counter_23__i9 (.D(n82[9]), .CK(osc_clk), .CD(n55), .Q(v_counter[9]));
    defparam v_counter_23__i9.GSR = "DISABLED";
    FD1S3IX v_counter_23__i8 (.D(n82[8]), .CK(osc_clk), .CD(n55), .Q(v_counter[8]));
    defparam v_counter_23__i8.GSR = "DISABLED";
    FD1S3IX v_counter_23__i7 (.D(n82[7]), .CK(osc_clk), .CD(n55), .Q(v_counter[7]));
    defparam v_counter_23__i7.GSR = "DISABLED";
    FD1S3IX v_counter_23__i6 (.D(n82[6]), .CK(osc_clk), .CD(n55), .Q(v_counter[6]));
    defparam v_counter_23__i6.GSR = "DISABLED";
    FD1S3IX v_counter_23__i5 (.D(n82[5]), .CK(osc_clk), .CD(n55), .Q(v_counter[5]));
    defparam v_counter_23__i5.GSR = "DISABLED";
    FD1S3IX v_counter_23__i4 (.D(n82[4]), .CK(osc_clk), .CD(n55), .Q(v_counter[4]));
    defparam v_counter_23__i4.GSR = "DISABLED";
    FD1S3IX v_counter_23__i3 (.D(n82[3]), .CK(osc_clk), .CD(n55), .Q(v_counter[3]));
    defparam v_counter_23__i3.GSR = "DISABLED";
    FD1S3IX v_counter_23__i2 (.D(n82[2]), .CK(osc_clk), .CD(n55), .Q(v_counter[2]));
    defparam v_counter_23__i2.GSR = "DISABLED";
    FD1S3IX v_counter_23__i1 (.D(n82[1]), .CK(osc_clk), .CD(n55), .Q(v_counter[1]));
    defparam v_counter_23__i1.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_9 (.A(V_SYNC_c), .B(n300), .C(n564), .D(n573), 
            .Z(v_display)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_9.init = 16'h0020;
    
endmodule

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

