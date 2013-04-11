// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Wed Apr 10 22:33:26 2013

//
// Verilog Description of module Top
//

module Top (RESET, H_SYNC, V_SYNC, RED) /* synthesis syn_module_defined=1 */ ;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(9[8:11])
    input RESET;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(10[14:19])
    output H_SYNC;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(11[14:20])
    output V_SYNC;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(12[14:20])
    output RED;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(13[14:17])
    
    wire RESET_c;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(10[14:19])
    wire H_SYNC_c;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(11[14:20])
    wire V_SYNC_c;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(12[14:20])
    wire osc_clk;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(27[20:27])
    
    wire GND_net, VCC_net, n49;
    
    VLO i1 (.Z(GND_net));
    OSCC OSCC_1 (.OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    OB V_SYNC_pad (.I(V_SYNC_c), .O(V_SYNC));
    GSR GSR_INST (.GSR(VCC_net));
    OB H_SYNC_pad (.I(H_SYNC_c), .O(H_SYNC));
    OBZ RED_pad (.I(VCC_net), .T(n49), .O(RED));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    Controller CNTRL (.osc_clk(osc_clk), .H_SYNC_c(H_SYNC_c), .RESET_c(RESET_c), 
            .GND_net(GND_net), .n49(n49), .V_SYNC_c(V_SYNC_c)) /* synthesis syn_module_defined=1 */ ;
    IB RESET_pad (.I(RESET), .O(RESET_c));
    VHI i446 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//


//
// Verilog Description of module Controller
//

module Controller (osc_clk, H_SYNC_c, RESET_c, GND_net, n49, V_SYNC_c) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output H_SYNC_c;
    input RESET_c;
    input GND_net;
    output n49;
    output V_SYNC_c;
    
    wire [18:0]v_counter;   // c:/users/octalbyte/documents/github/eece444-video-card/controller.v(17[16:25])
    wire [9:0]h_counter;   // c:/users/octalbyte/documents/github/eece444-video-card/controller.v(16[15:24])
    
    wire n51;
    wire [18:0]n82;
    
    wire n471, n494, n498, n495, n14, n17, n16, n165, n15, 
        n16_adj_1, n10, n496, n497, n466, n14_adj_2, n470, n432, 
        n434, n435, n437, n438, n430;
    wire [9:0]n46;
    
    wire n427, n428, n433, n475, n468, n440, n429, n436, n10_adj_4, 
        n9, n439;
    
    FD1S3IX v_counter_15__i0 (.D(n82[0]), .CK(osc_clk), .CD(n51), .Q(v_counter[0]));
    defparam v_counter_15__i0.GSR = "DISABLED";
    ORCALUT4 i2_4_lut (.A(n471), .B(h_counter[5]), .C(h_counter[7]), .D(h_counter[6]), 
            .Z(H_SYNC_c)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfefa;
    FD1S3IX v_counter_15__i18 (.D(n82[18]), .CK(osc_clk), .CD(n51), .Q(v_counter[18]));
    defparam v_counter_15__i18.GSR = "DISABLED";
    ORCALUT4 i14_4_lut (.A(n494), .B(RESET_c), .C(n498), .D(n495), .Z(n14)) /* synthesis lut_function=(A ((C)+!B)+!A ((C (D))+!B)) */ ;
    defparam i14_4_lut.init = 16'hf3b3;
    ORCALUT4 i7_4_lut (.A(v_counter[18]), .B(v_counter[11]), .C(v_counter[9]), 
            .D(v_counter[16]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    ORCALUT4 i9_4_lut (.A(n17), .B(v_counter[17]), .C(n16), .D(v_counter[15]), 
            .Z(n165)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    ORCALUT4 i2_4_lut_adj_1 (.A(RESET_c), .B(n165), .C(n15), .D(n16_adj_1), 
            .Z(n51)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i2_4_lut_adj_1.init = 16'hfddd;
    ORCALUT4 i2_2_lut (.A(v_counter[6]), .B(v_counter[8]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_4_lut (.A(n496), .B(h_counter[7]), .C(h_counter[4]), 
            .D(n497), .Z(n466)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_4 (.A(h_counter[6]), .B(h_counter[5]), .Z(n496)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_4.init = 16'heeee;
    ORCALUT4 i6_4_lut (.A(v_counter[14]), .B(v_counter[12]), .C(v_counter[10]), 
            .D(v_counter[13]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_2 (.A(v_counter[4]), .B(v_counter[7]), .C(v_counter[5]), 
            .D(v_counter[3]), .Z(n14_adj_2)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_2.init = 16'hfffe;
    CCU2 v_counter_15_add_4_2 (.A0(n466), .B0(n470), .C0(v_counter[0]), 
         .D0(GND_net), .A1(v_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n432), .S0(n82[0]), .S1(n82[1]));
    defparam v_counter_15_add_4_2.INIT0 = 16'hb4b4;
    defparam v_counter_15_add_4_2.INIT1 = 16'hfaaa;
    defparam v_counter_15_add_4_2.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_2.INJECT1_1 = "NO";
    CCU2 v_counter_15_add_4_8 (.A0(v_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n434), .COUT1(n435), .S0(n82[6]), .S1(n82[7]));
    defparam v_counter_15_add_4_8.INIT0 = 16'hfaaa;
    defparam v_counter_15_add_4_8.INIT1 = 16'hfaaa;
    defparam v_counter_15_add_4_8.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_8.INJECT1_1 = "NO";
    CCU2 v_counter_15_add_4_14 (.A0(v_counter[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n437), .COUT1(n438), .S0(n82[12]), .S1(n82[13]));
    defparam v_counter_15_add_4_14.INIT0 = 16'hfaaa;
    defparam v_counter_15_add_4_14.INIT1 = 16'hfaaa;
    defparam v_counter_15_add_4_14.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_14.INJECT1_1 = "NO";
    CCU2 h_counter_14_add_4_10 (.A0(h_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n430), .S0(n46[8]), .S1(n46[9]));
    defparam h_counter_14_add_4_10.INIT0 = 16'hfaaa;
    defparam h_counter_14_add_4_10.INIT1 = 16'hfaaa;
    defparam h_counter_14_add_4_10.INJECT1_0 = "NO";
    defparam h_counter_14_add_4_10.INJECT1_1 = "NO";
    CCU2 h_counter_14_add_4_4 (.A0(h_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n427), .COUT1(n428), .S0(n46[2]), .S1(n46[3]));
    defparam h_counter_14_add_4_4.INIT0 = 16'hfaaa;
    defparam h_counter_14_add_4_4.INIT1 = 16'hfaaa;
    defparam h_counter_14_add_4_4.INJECT1_0 = "NO";
    defparam h_counter_14_add_4_4.INJECT1_1 = "NO";
    CCU2 v_counter_15_add_4_6 (.A0(v_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n433), .COUT1(n434), .S0(n82[4]), .S1(n82[5]));
    defparam v_counter_15_add_4_6.INIT0 = 16'hfaaa;
    defparam v_counter_15_add_4_6.INIT1 = 16'hfaaa;
    defparam v_counter_15_add_4_6.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut (.A(n475), .B(n468), .C(n471), .D(h_counter[7]), 
            .Z(n49)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+!(C))) */ ;
    defparam i1_4_lut.init = 16'hcdcf;
    CCU2 v_counter_15_add_4_20 (.A0(v_counter[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n440), .S0(n82[18]));
    defparam v_counter_15_add_4_20.INIT0 = 16'hfaaa;
    defparam v_counter_15_add_4_20.INIT1 = 16'h0000;
    defparam v_counter_15_add_4_20.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_20.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut (.A(h_counter[0]), .B(n497), .C(n496), .D(h_counter[4]), 
            .Z(n475)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfef0;
    CCU2 h_counter_14_add_4_8 (.A0(h_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n429), .COUT1(n430), .S0(n46[6]), .S1(n46[7]));
    defparam h_counter_14_add_4_8.INIT0 = 16'hfaaa;
    defparam h_counter_14_add_4_8.INIT1 = 16'hfaaa;
    defparam h_counter_14_add_4_8.INJECT1_0 = "NO";
    defparam h_counter_14_add_4_8.INJECT1_1 = "NO";
    CCU2 v_counter_15_add_4_4 (.A0(v_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n432), .COUT1(n433), .S0(n82[2]), .S1(n82[3]));
    defparam v_counter_15_add_4_4.INIT0 = 16'hfaaa;
    defparam v_counter_15_add_4_4.INIT1 = 16'hfaaa;
    defparam v_counter_15_add_4_4.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_4.INJECT1_1 = "NO";
    CCU2 v_counter_15_add_4_12 (.A0(v_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n436), .COUT1(n437), .S0(n82[10]), .S1(n82[11]));
    defparam v_counter_15_add_4_12.INIT0 = 16'hfaaa;
    defparam v_counter_15_add_4_12.INIT1 = 16'hfaaa;
    defparam v_counter_15_add_4_12.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut (.A(v_counter[7]), .B(v_counter[3]), .Z(n10_adj_4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    ORCALUT4 i1_2_lut_adj_3 (.A(h_counter[9]), .B(h_counter[8]), .Z(n471)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'heeee;
    ORCALUT4 i1_2_lut_adj_4 (.A(v_counter[1]), .B(v_counter[2]), .Z(n9)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'heeee;
    ORCALUT4 i7_4_lut_adj_5 (.A(v_counter[4]), .B(v_counter[8]), .C(v_counter[0]), 
            .D(n10_adj_4), .Z(n16_adj_1)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_5.init = 16'h8000;
    CCU2 v_counter_15_add_4_10 (.A0(v_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n435), .COUT1(n436), .S0(n82[8]), .S1(n82[9]));
    defparam v_counter_15_add_4_10.INIT0 = 16'hfaaa;
    defparam v_counter_15_add_4_10.INIT1 = 16'hfaaa;
    defparam v_counter_15_add_4_10.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_10.INJECT1_1 = "NO";
    CCU2 h_counter_14_add_4_6 (.A0(h_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n428), .COUT1(n429), .S0(n46[4]), .S1(n46[5]));
    defparam h_counter_14_add_4_6.INIT0 = 16'hfaaa;
    defparam h_counter_14_add_4_6.INIT1 = 16'hfaaa;
    defparam h_counter_14_add_4_6.INJECT1_0 = "NO";
    defparam h_counter_14_add_4_6.INJECT1_1 = "NO";
    CCU2 h_counter_14_add_4_2 (.A0(h_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n427), .S0(n46[0]), .S1(n46[1]));
    defparam h_counter_14_add_4_2.INIT0 = 16'h0555;
    defparam h_counter_14_add_4_2.INIT1 = 16'hfaaa;
    defparam h_counter_14_add_4_2.INJECT1_0 = "NO";
    defparam h_counter_14_add_4_2.INJECT1_1 = "NO";
    CCU2 v_counter_15_add_4_18 (.A0(v_counter[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[17]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n439), .COUT1(n440), .S0(n82[16]), .S1(n82[17]));
    defparam v_counter_15_add_4_18.INIT0 = 16'hfaaa;
    defparam v_counter_15_add_4_18.INIT1 = 16'hfaaa;
    defparam v_counter_15_add_4_18.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_18.INJECT1_1 = "NO";
    ORCALUT4 i6_4_lut_adj_6 (.A(v_counter[5]), .B(v_counter[1]), .C(v_counter[6]), 
            .D(v_counter[2]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_6.init = 16'h8000;
    CCU2 v_counter_15_add_4_16 (.A0(v_counter[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[15]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n438), .COUT1(n439), .S0(n82[14]), .S1(n82[15]));
    defparam v_counter_15_add_4_16.INIT0 = 16'hfaaa;
    defparam v_counter_15_add_4_16.INIT1 = 16'hfaaa;
    defparam v_counter_15_add_4_16.INJECT1_0 = "NO";
    defparam v_counter_15_add_4_16.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_3_lut (.A(h_counter[9]), .B(h_counter[8]), .C(h_counter[0]), 
            .Z(n470)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1S3IX v_counter_15__i17 (.D(n82[17]), .CK(osc_clk), .CD(n51), .Q(v_counter[17]));
    defparam v_counter_15__i17.GSR = "DISABLED";
    FD1S3IX v_counter_15__i16 (.D(n82[16]), .CK(osc_clk), .CD(n51), .Q(v_counter[16]));
    defparam v_counter_15__i16.GSR = "DISABLED";
    FD1S3IX v_counter_15__i15 (.D(n82[15]), .CK(osc_clk), .CD(n51), .Q(v_counter[15]));
    defparam v_counter_15__i15.GSR = "DISABLED";
    FD1S3IX v_counter_15__i14 (.D(n82[14]), .CK(osc_clk), .CD(n51), .Q(v_counter[14]));
    defparam v_counter_15__i14.GSR = "DISABLED";
    FD1S3IX v_counter_15__i13 (.D(n82[13]), .CK(osc_clk), .CD(n51), .Q(v_counter[13]));
    defparam v_counter_15__i13.GSR = "DISABLED";
    FD1S3IX v_counter_15__i12 (.D(n82[12]), .CK(osc_clk), .CD(n51), .Q(v_counter[12]));
    defparam v_counter_15__i12.GSR = "DISABLED";
    FD1S3IX v_counter_15__i11 (.D(n82[11]), .CK(osc_clk), .CD(n51), .Q(v_counter[11]));
    defparam v_counter_15__i11.GSR = "DISABLED";
    FD1S3IX v_counter_15__i10 (.D(n82[10]), .CK(osc_clk), .CD(n51), .Q(v_counter[10]));
    defparam v_counter_15__i10.GSR = "DISABLED";
    FD1S3IX v_counter_15__i9 (.D(n82[9]), .CK(osc_clk), .CD(n51), .Q(v_counter[9]));
    defparam v_counter_15__i9.GSR = "DISABLED";
    FD1S3IX v_counter_15__i8 (.D(n82[8]), .CK(osc_clk), .CD(n51), .Q(v_counter[8]));
    defparam v_counter_15__i8.GSR = "DISABLED";
    FD1S3IX v_counter_15__i7 (.D(n82[7]), .CK(osc_clk), .CD(n51), .Q(v_counter[7]));
    defparam v_counter_15__i7.GSR = "DISABLED";
    FD1S3IX v_counter_15__i6 (.D(n82[6]), .CK(osc_clk), .CD(n51), .Q(v_counter[6]));
    defparam v_counter_15__i6.GSR = "DISABLED";
    FD1S3IX v_counter_15__i5 (.D(n82[5]), .CK(osc_clk), .CD(n51), .Q(v_counter[5]));
    defparam v_counter_15__i5.GSR = "DISABLED";
    FD1S3IX v_counter_15__i4 (.D(n82[4]), .CK(osc_clk), .CD(n51), .Q(v_counter[4]));
    defparam v_counter_15__i4.GSR = "DISABLED";
    FD1S3IX v_counter_15__i3 (.D(n82[3]), .CK(osc_clk), .CD(n51), .Q(v_counter[3]));
    defparam v_counter_15__i3.GSR = "DISABLED";
    FD1S3IX v_counter_15__i2 (.D(n82[2]), .CK(osc_clk), .CD(n51), .Q(v_counter[2]));
    defparam v_counter_15__i2.GSR = "DISABLED";
    FD1S3IX v_counter_15__i1 (.D(n82[1]), .CK(osc_clk), .CD(n51), .Q(v_counter[1]));
    defparam v_counter_15__i1.GSR = "DISABLED";
    FD1S3IX h_counter_14__i9 (.D(n46[9]), .CK(osc_clk), .CD(n14), .Q(h_counter[9]));
    defparam h_counter_14__i9.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_rep_6 (.A(h_counter[9]), .B(h_counter[8]), .Z(n498)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_6.init = 16'h8888;
    ORCALUT4 i1_4_lut_adj_7 (.A(n9), .B(n165), .C(n14_adj_2), .D(n10), 
            .Z(V_SYNC_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_7.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_2_4_lut (.A(h_counter[3]), .B(h_counter[1]), .C(h_counter[2]), 
            .D(h_counter[0]), .Z(n494)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_2_4_lut.init = 16'hfffe;
    ORCALUT4 i2_3_lut_rep_5 (.A(h_counter[3]), .B(h_counter[1]), .C(h_counter[2]), 
            .Z(n497)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_5.init = 16'hfefe;
    ORCALUT4 i1_2_lut_4_lut_adj_8 (.A(n496), .B(h_counter[7]), .C(h_counter[4]), 
            .D(n498), .Z(n468)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_8.init = 16'hfe00;
    FD1S3IX h_counter_14__i8 (.D(n46[8]), .CK(osc_clk), .CD(n14), .Q(h_counter[8]));
    defparam h_counter_14__i8.GSR = "DISABLED";
    FD1S3IX h_counter_14__i7 (.D(n46[7]), .CK(osc_clk), .CD(n14), .Q(h_counter[7]));
    defparam h_counter_14__i7.GSR = "DISABLED";
    FD1S3IX h_counter_14__i6 (.D(n46[6]), .CK(osc_clk), .CD(n14), .Q(h_counter[6]));
    defparam h_counter_14__i6.GSR = "DISABLED";
    FD1S3IX h_counter_14__i5 (.D(n46[5]), .CK(osc_clk), .CD(n14), .Q(h_counter[5]));
    defparam h_counter_14__i5.GSR = "DISABLED";
    FD1S3IX h_counter_14__i4 (.D(n46[4]), .CK(osc_clk), .CD(n14), .Q(h_counter[4]));
    defparam h_counter_14__i4.GSR = "DISABLED";
    FD1S3IX h_counter_14__i3 (.D(n46[3]), .CK(osc_clk), .CD(n14), .Q(h_counter[3]));
    defparam h_counter_14__i3.GSR = "DISABLED";
    FD1S3IX h_counter_14__i2 (.D(n46[2]), .CK(osc_clk), .CD(n14), .Q(h_counter[2]));
    defparam h_counter_14__i2.GSR = "DISABLED";
    FD1S3IX h_counter_14__i1 (.D(n46[1]), .CK(osc_clk), .CD(n14), .Q(h_counter[1]));
    defparam h_counter_14__i1.GSR = "DISABLED";
    FD1S3IX h_counter_14__i0 (.D(n46[0]), .CK(osc_clk), .CD(n14), .Q(h_counter[0]));
    defparam h_counter_14__i0.GSR = "DISABLED";
    ORCALUT4 i2_3_lut_rep_3_4_lut (.A(h_counter[6]), .B(h_counter[5]), .C(h_counter[4]), 
            .D(h_counter[7]), .Z(n495)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_3_4_lut.init = 16'hfffe;
    
endmodule
