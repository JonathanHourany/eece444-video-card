// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Fri Apr 05 19:44:40 2013

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
    
    wire GND_net, VCC_net, n579;
    
    VLO i1 (.Z(GND_net));
    OB V_SYNC_pad (.I(V_SYNC_c), .O(V_SYNC));
    OSCC OSCC_1 (.OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    IB RESET_pad (.I(RESET), .O(RESET_c));
    GSR GSR_INST (.GSR(VCC_net));
    Controller CNTRL (.GND_net(GND_net), .RESET_c(RESET_c), .osc_clk(osc_clk), 
            .n579(n579), .H_SYNC_c(H_SYNC_c), .V_SYNC_c(V_SYNC_c)) /* synthesis syn_module_defined=1 */ ;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    OBZ RED_pad (.I(VCC_net), .T(n579), .O(RED));
    OB H_SYNC_pad (.I(H_SYNC_c), .O(H_SYNC));
    VHI i620 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module Controller
//

module Controller (GND_net, RESET_c, osc_clk, n579, H_SYNC_c, V_SYNC_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input RESET_c;
    input osc_clk;
    output n579;
    output H_SYNC_c;
    output V_SYNC_c;
    
    wire [19:0]v_counter;   // c:/users/octalbyte/documents/github/eece444-video-card/controller.v(17[16:25])
    wire [10:0]h_counter;   // c:/users/octalbyte/documents/github/eece444-video-card/controller.v(16[16:25])
    
    wire n519, n677, n20, n368, n597, n591, n599, n499;
    wire [10:0]n50;
    
    wire n500, n584, n241, n52, n10, n242, n60, n508;
    wire [19:0]n86;
    
    wire n509, n503, n26, n507, n570, n623, n4, n506, n6, 
        n512, n511, n71, n502, n576, n577, n501, n549, n238, 
        n4_adj_3, n572, n20_adj_4, n505, n8, n504, n510, n631, 
        n49, n609, n6_adj_5, n621, n678, n6_adj_6, n515, n16, 
        n24, n596;
    
    ORCALUT4 i19_4_lut (.A(n519), .B(v_counter[9]), .C(n677), .D(v_counter[6]), 
            .Z(n20)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i19_4_lut.init = 16'hc8c0;
    ORCALUT4 i1_4_lut (.A(n368), .B(n597), .C(v_counter[11]), .D(n591), 
            .Z(n599)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    CCU2 h_counter_13_add_4_4 (.A0(h_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n499), .COUT1(n500), .S0(n50[2]), .S1(n50[3]));
    defparam h_counter_13_add_4_4.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_4.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_4.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_1 (.A(n599), .B(n584), .C(n241), .D(v_counter[14]), 
            .Z(n52)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_1.init = 16'hc8c0;
    ORCALUT4 i4_4_lut (.A(v_counter[2]), .B(v_counter[1]), .C(v_counter[0]), 
            .D(v_counter[4]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    ORCALUT4 i5_3_lut (.A(v_counter[5]), .B(n10), .C(v_counter[3]), .Z(n519)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    ORCALUT4 i2_4_lut (.A(n242), .B(RESET_c), .C(n584), .D(v_counter[19]), 
            .Z(n60)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((D)+!B)) */ ;
    defparam i2_4_lut.init = 16'hffb3;
    CCU2 v_counter_14_add_4_12 (.A0(v_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n508), .COUT1(n509), .S0(n86[10]), .S1(n86[11]));
    defparam v_counter_14_add_4_12.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_12.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_12.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_12.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_12 (.A0(h_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n503), .S0(n50[10]));
    defparam h_counter_13_add_4_12.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_12.INIT1 = 16'h0000;
    defparam h_counter_13_add_4_12.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 i89_4_lut (.A(n20), .B(v_counter[12]), .C(v_counter[11]), 
            .D(v_counter[10]), .Z(n26)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i89_4_lut.init = 16'hfcec;
    CCU2 v_counter_14_add_4_10 (.A0(v_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n507), .COUT1(n508), .S0(n86[8]), .S1(n86[9]));
    defparam v_counter_14_add_4_10.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_10.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_10.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i3_4_lut (.A(v_counter[19]), .B(v_counter[18]), .C(v_counter[17]), 
            .D(n241), .Z(n570)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    ORCALUT4 i576_4_lut (.A(n241), .B(v_counter[13]), .C(n26), .D(v_counter[14]), 
            .Z(n623)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i576_4_lut.init = 16'heaaa;
    ORCALUT4 i1_4_lut_adj_2 (.A(n52), .B(v_counter[17]), .C(n623), .D(v_counter[18]), 
            .Z(n4)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_2.init = 16'haaab;
    CCU2 v_counter_14_add_4_8 (.A0(v_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n506), .COUT1(n507), .S0(n86[6]), .S1(n86[7]));
    defparam v_counter_14_add_4_8.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_8.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_8.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut (.A(h_counter[5]), .B(h_counter[7]), .C(h_counter[6]), 
            .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hecec;
    CCU2 v_counter_14_add_4_20 (.A0(v_counter[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[19]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n512), .S0(n86[18]), .S1(n86[19]));
    defparam v_counter_14_add_4_20.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_20.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_20.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_20.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_18 (.A0(v_counter[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[17]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n511), .COUT1(n512), .S0(n86[16]), .S1(n86[17]));
    defparam v_counter_14_add_4_18.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_18.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_18.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_18.INJECT1_1 = "NO";
    FD1S3IX v_counter_14__i19 (.D(n86[19]), .CK(osc_clk), .CD(n60), .Q(v_counter[19]));
    defparam v_counter_14__i19.GSR = "DISABLED";
    ORCALUT4 i2_4_lut_adj_3 (.A(n71), .B(v_counter[19]), .C(n4), .D(h_counter[10]), 
            .Z(n579)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut_adj_3.init = 16'hfffe;
    CCU2 h_counter_13_add_4_10 (.A0(h_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n502), .COUT1(n503), .S0(n50[8]), .S1(n50[9]));
    defparam h_counter_13_add_4_10.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_10.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_10.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_10.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_2 (.A0(h_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n499), .S0(n50[0]), .S1(n50[1]));
    defparam h_counter_13_add_4_2.INIT0 = 16'h0555;
    defparam h_counter_13_add_4_2.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_2.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_2.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut (.A(h_counter[4]), .B(n576), .Z(n577)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2 h_counter_13_add_4_8 (.A0(h_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n501), .COUT1(n502), .S0(n50[6]), .S1(n50[7]));
    defparam h_counter_13_add_4_8.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_8.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_8.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i4_4_lut_adj_4 (.A(h_counter[8]), .B(h_counter[9]), .C(h_counter[10]), 
            .D(n6), .Z(n549)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_4.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_5 (.A(h_counter[9]), .B(h_counter[7]), .C(n577), 
            .D(n238), .Z(n4_adj_3)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_5.init = 16'haaa8;
    ORCALUT4 i591_4_lut (.A(v_counter[19]), .B(n549), .C(n572), .D(n52), 
            .Z(H_SYNC_c)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i591_4_lut.init = 16'h0040;
    ORCALUT4 i2_4_lut_adj_6 (.A(RESET_c), .B(h_counter[10]), .C(h_counter[8]), 
            .D(n4_adj_3), .Z(n20_adj_4)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i2_4_lut_adj_6.init = 16'hfddd;
    ORCALUT4 i1_2_lut_adj_7 (.A(h_counter[6]), .B(h_counter[5]), .Z(n238)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_7.init = 16'heeee;
    CCU2 h_counter_13_add_4_6 (.A0(h_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n500), .COUT1(n501), .S0(n50[4]), .S1(n50[5]));
    defparam h_counter_13_add_4_6.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_6.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_6.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 i3_4_lut_adj_8 (.A(h_counter[1]), .B(h_counter[3]), .C(h_counter[0]), 
            .D(h_counter[2]), .Z(n576)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_8.init = 16'h8000;
    CCU2 v_counter_14_add_4_6 (.A0(v_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n505), .COUT1(n506), .S0(n86[4]), .S1(n86[5]));
    defparam v_counter_14_add_4_6.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_6.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_6.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 i3_3_lut (.A(h_counter[4]), .B(h_counter[5]), .C(n576), .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut.init = 16'hfefe;
    CCU2 v_counter_14_add_4_4 (.A0(v_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n504), .COUT1(n505), .S0(n86[2]), .S1(n86[3]));
    defparam v_counter_14_add_4_4.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_4.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_4.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_4.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_16 (.A0(v_counter[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[15]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n510), .COUT1(n511), .S0(n86[14]), .S1(n86[15]));
    defparam v_counter_14_add_4_16.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_16.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_16.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_16.INJECT1_1 = "NO";
    PFUMX i66 (.BLUT(n631), .ALUT(n49), .C0(h_counter[8]), .Z(n71));
    ORCALUT4 i1_4_lut_adj_9 (.A(h_counter[9]), .B(h_counter[7]), .C(n8), 
            .D(h_counter[6]), .Z(n49)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_9.init = 16'haaa8;
    ORCALUT4 i562_2_lut (.A(h_counter[3]), .B(h_counter[1]), .Z(n609)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i562_2_lut.init = 16'heeee;
    CCU2 v_counter_14_add_4_2 (.A0(v_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n504), .S0(n86[0]), .S1(n86[1]));
    defparam v_counter_14_add_4_2.INIT0 = 16'h0555;
    defparam v_counter_14_add_4_2.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_2.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_2.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_14 (.A0(v_counter[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n509), .COUT1(n510), .S0(n86[12]), .S1(n86[13]));
    defparam v_counter_14_add_4_14.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_14.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_14.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 i4_4_lut_adj_10 (.A(v_counter[11]), .B(n597), .C(n570), .D(n6_adj_5), 
            .Z(V_SYNC_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_10.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_11 (.A(v_counter[13]), .B(v_counter[12]), .Z(n597)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_11.init = 16'heeee;
    FD1S3IX v_counter_14__i18 (.D(n86[18]), .CK(osc_clk), .CD(n60), .Q(v_counter[18]));
    defparam v_counter_14__i18.GSR = "DISABLED";
    ORCALUT4 i574_4_lut (.A(h_counter[0]), .B(h_counter[4]), .C(n609), 
            .D(h_counter[2]), .Z(n621)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i574_4_lut.init = 16'hccc8;
    FD1S3IX v_counter_14__i17 (.D(n86[17]), .CK(osc_clk), .CD(n60), .Q(v_counter[17]));
    defparam v_counter_14__i17.GSR = "DISABLED";
    ORCALUT4 i589_4_lut (.A(h_counter[9]), .B(h_counter[7]), .C(n621), 
            .D(n238), .Z(n631)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;
    defparam i589_4_lut.init = 16'h1115;
    FD1S3IX v_counter_14__i16 (.D(n86[16]), .CK(osc_clk), .CD(n60), .Q(v_counter[16]));
    defparam v_counter_14__i16.GSR = "DISABLED";
    FD1S3IX v_counter_14__i15 (.D(n86[15]), .CK(osc_clk), .CD(n60), .Q(v_counter[15]));
    defparam v_counter_14__i15.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_adj_12 (.A(v_counter[17]), .B(v_counter[18]), .Z(n584)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_12.init = 16'h8888;
    FD1S3IX v_counter_14__i14 (.D(n86[14]), .CK(osc_clk), .CD(n60), .Q(v_counter[14]));
    defparam v_counter_14__i14.GSR = "DISABLED";
    FD1S3IX v_counter_14__i13 (.D(n86[13]), .CK(osc_clk), .CD(n60), .Q(v_counter[13]));
    defparam v_counter_14__i13.GSR = "DISABLED";
    FD1S3IX v_counter_14__i12 (.D(n86[12]), .CK(osc_clk), .CD(n60), .Q(v_counter[12]));
    defparam v_counter_14__i12.GSR = "DISABLED";
    FD1S3IX v_counter_14__i11 (.D(n86[11]), .CK(osc_clk), .CD(n60), .Q(v_counter[11]));
    defparam v_counter_14__i11.GSR = "DISABLED";
    FD1S3IX v_counter_14__i10 (.D(n86[10]), .CK(osc_clk), .CD(n60), .Q(v_counter[10]));
    defparam v_counter_14__i10.GSR = "DISABLED";
    FD1S3IX v_counter_14__i9 (.D(n86[9]), .CK(osc_clk), .CD(n60), .Q(v_counter[9]));
    defparam v_counter_14__i9.GSR = "DISABLED";
    FD1S3IX v_counter_14__i8 (.D(n86[8]), .CK(osc_clk), .CD(n60), .Q(v_counter[8]));
    defparam v_counter_14__i8.GSR = "DISABLED";
    ORCALUT4 i1_3_lut_4_lut (.A(v_counter[14]), .B(v_counter[13]), .C(n570), 
            .D(n26), .Z(n572)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf8f0;
    FD1S3IX v_counter_14__i7 (.D(n86[7]), .CK(osc_clk), .CD(n60), .Q(v_counter[7]));
    defparam v_counter_14__i7.GSR = "DISABLED";
    FD1S3IX v_counter_14__i6 (.D(n86[6]), .CK(osc_clk), .CD(n60), .Q(v_counter[6]));
    defparam v_counter_14__i6.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_adj_13 (.A(v_counter[16]), .B(v_counter[15]), .Z(n241)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_13.init = 16'heeee;
    FD1S3IX v_counter_14__i5 (.D(n86[5]), .CK(osc_clk), .CD(n60), .Q(v_counter[5]));
    defparam v_counter_14__i5.GSR = "DISABLED";
    FD1S3IX v_counter_14__i4 (.D(n86[4]), .CK(osc_clk), .CD(n60), .Q(v_counter[4]));
    defparam v_counter_14__i4.GSR = "DISABLED";
    FD1S3IX v_counter_14__i3 (.D(n86[3]), .CK(osc_clk), .CD(n60), .Q(v_counter[3]));
    defparam v_counter_14__i3.GSR = "DISABLED";
    FD1S3IX v_counter_14__i2 (.D(n86[2]), .CK(osc_clk), .CD(n60), .Q(v_counter[2]));
    defparam v_counter_14__i2.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_adj_14 (.A(v_counter[9]), .B(v_counter[10]), .Z(n591)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_14.init = 16'heeee;
    FD1S3IX v_counter_14__i1 (.D(n86[1]), .CK(osc_clk), .CD(n60), .Q(v_counter[1]));
    defparam v_counter_14__i1.GSR = "DISABLED";
    FD1S3IX h_counter_13__i10 (.D(n50[10]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[10]));
    defparam h_counter_13__i10.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_rep_3 (.A(v_counter[14]), .B(v_counter[13]), .Z(n678)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_3.init = 16'h8888;
    ORCALUT4 i1_2_lut_adj_15 (.A(v_counter[3]), .B(v_counter[1]), .Z(n6_adj_6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_15.init = 16'h8888;
    ORCALUT4 i4_4_lut_adj_16 (.A(v_counter[2]), .B(v_counter[4]), .C(v_counter[0]), 
            .D(n6_adj_6), .Z(n515)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_16.init = 16'h8000;
    ORCALUT4 i102_4_lut (.A(v_counter[6]), .B(v_counter[7]), .C(v_counter[5]), 
            .D(n515), .Z(n16)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i102_4_lut.init = 16'hccc8;
    ORCALUT4 i70_4_lut (.A(n591), .B(v_counter[11]), .C(n16), .D(v_counter[8]), 
            .Z(n24)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i70_4_lut.init = 16'hccc8;
    ORCALUT4 i1_2_lut_3_lut (.A(v_counter[8]), .B(v_counter[7]), .C(v_counter[6]), 
            .Z(n596)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i1_4_lut_adj_17 (.A(v_counter[10]), .B(v_counter[14]), .C(n596), 
            .D(v_counter[9]), .Z(n6_adj_5)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_17.init = 16'heccc;
    ORCALUT4 i1_4_lut_adj_18 (.A(n24), .B(n241), .C(n678), .D(v_counter[12]), 
            .Z(n242)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'hfcec;
    ORCALUT4 i335_4_lut (.A(v_counter[5]), .B(v_counter[8]), .C(v_counter[7]), 
            .D(v_counter[6]), .Z(n368)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i335_4_lut.init = 16'hc8c0;
    FD1S3IX h_counter_13__i9 (.D(n50[9]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[9]));
    defparam h_counter_13__i9.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_rep_2 (.A(v_counter[8]), .B(v_counter[7]), .Z(n677)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_2.init = 16'heeee;
    FD1S3IX h_counter_13__i8 (.D(n50[8]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[8]));
    defparam h_counter_13__i8.GSR = "DISABLED";
    FD1S3IX h_counter_13__i7 (.D(n50[7]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[7]));
    defparam h_counter_13__i7.GSR = "DISABLED";
    FD1S3IX h_counter_13__i6 (.D(n50[6]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[6]));
    defparam h_counter_13__i6.GSR = "DISABLED";
    FD1S3IX h_counter_13__i5 (.D(n50[5]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[5]));
    defparam h_counter_13__i5.GSR = "DISABLED";
    FD1S3IX h_counter_13__i4 (.D(n50[4]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[4]));
    defparam h_counter_13__i4.GSR = "DISABLED";
    FD1S3IX h_counter_13__i3 (.D(n50[3]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[3]));
    defparam h_counter_13__i3.GSR = "DISABLED";
    FD1S3IX h_counter_13__i2 (.D(n50[2]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[2]));
    defparam h_counter_13__i2.GSR = "DISABLED";
    FD1S3IX h_counter_13__i1 (.D(n50[1]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[1]));
    defparam h_counter_13__i1.GSR = "DISABLED";
    FD1S3IX v_counter_14__i0 (.D(n86[0]), .CK(osc_clk), .CD(n60), .Q(v_counter[0]));
    defparam v_counter_14__i0.GSR = "DISABLED";
    FD1S3IX h_counter_13__i0 (.D(n50[0]), .CK(osc_clk), .CD(n20_adj_4), 
            .Q(h_counter[0]));
    defparam h_counter_13__i0.GSR = "DISABLED";
    
endmodule

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

