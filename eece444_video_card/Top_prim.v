// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Sun Mar 31 16:06:53 2013

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
    wire osc_clk;   // c:/users/fox/programming/eece444-video-card/top.v(43[20:27])
    
    wire GND_net, n633, VCC_net;
    
    VLO i1 (.Z(GND_net));
    OB V_SYNC_pad (.I(V_SYNC_c), .O(V_SYNC));
    OSCC OSCC_1 (.OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    IB RESET_pad (.I(RESET), .O(RESET_c));
    GSR GSR_INST (.GSR(VCC_net));
    Controller CNTRL (.RESET_c(RESET_c), .GND_net(GND_net), .osc_clk(osc_clk), 
            .V_SYNC_c(V_SYNC_c), .H_SYNC_c(H_SYNC_c), .n633(n633)) /* synthesis syn_module_defined=1 */ ;
    OBZ RED_pad (.I(VCC_net), .T(n633), .O(RED));
    OB H_SYNC_pad (.I(H_SYNC_c), .O(H_SYNC));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    VHI i662 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module Controller
//

module Controller (RESET_c, GND_net, osc_clk, V_SYNC_c, H_SYNC_c, 
            n633) /* synthesis syn_module_defined=1 */ ;
    input RESET_c;
    input GND_net;
    input osc_clk;
    output V_SYNC_c;
    output H_SYNC_c;
    output n633;
    
    wire [10:0]h_counter;   // c:/users/fox/programming/eece444-video-card/controller.v(16[16:25])
    wire [19:0]v_counter;   // c:/users/fox/programming/eece444-video-card/controller.v(17[16:25])
    
    wire n566, n246, n591, n31, n20, n555;
    wire [19:0]n86;
    
    wire n556, n621, n4, n622, n628, n1, n6, n8, n4_adj_1, 
        n60, n717, n620, n101, n9, n14, n718, n653, n554, 
        n719, n663, n551, n552, n105, n649, n641, n631, n8_adj_2, 
        n71, n6_adj_4, n548;
    wire [10:0]n50;
    
    wire n549, n559, n5, n97_adj_6, n558, n553, n547, n6_adj_7, 
        n639, n546, n6_adj_8, n657, n550, n2, n557;
    
    ORCALUT4 i3_4_lut (.A(h_counter[7]), .B(RESET_c), .C(n566), .D(n246), 
            .Z(n591)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut.init = 16'hfffb;
    ORCALUT4 i1_4_lut (.A(h_counter[10]), .B(RESET_c), .C(n591), .D(n31), 
            .Z(n20)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hfabb;
    CCU2 v_counter_14_add_4_12 (.A0(v_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n555), .COUT1(n556), .S0(n86[10]), .S1(n86[11]));
    defparam v_counter_14_add_4_12.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_12.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_12.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut (.A(h_counter[9]), .B(h_counter[8]), .Z(n31)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    ORCALUT4 i1_2_lut_adj_1 (.A(h_counter[6]), .B(h_counter[5]), .Z(n246)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_2 (.A(v_counter[8]), .B(v_counter[13]), .C(n621), 
            .D(v_counter[9]), .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_2.init = 16'hccc8;
    ORCALUT4 i1_4_lut_adj_3 (.A(n622), .B(v_counter[18]), .C(n628), .D(n4), 
            .Z(n1)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_3.init = 16'hc8c0;
    ORCALUT4 i1_2_lut_adj_4 (.A(h_counter[1]), .B(h_counter[2]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'h8888;
    ORCALUT4 i4_4_lut (.A(h_counter[0]), .B(h_counter[4]), .C(h_counter[3]), 
            .D(n6), .Z(n566)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    ORCALUT4 i3_3_lut (.A(v_counter[4]), .B(v_counter[2]), .C(v_counter[1]), 
            .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut.init = 16'hfefe;
    ORCALUT4 i2_4_lut (.A(v_counter[17]), .B(RESET_c), .C(n4_adj_1), .D(v_counter[19]), 
            .Z(n60)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((D)+!B)) */ ;
    defparam i2_4_lut.init = 16'hffb3;
    ORCALUT4 i1_4_lut_adj_5 (.A(v_counter[3]), .B(n717), .C(n8), .D(v_counter[0]), 
            .Z(n620)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_5.init = 16'hccc8;
    ORCALUT4 i126_4_lut (.A(v_counter[8]), .B(v_counter[9]), .C(v_counter[7]), 
            .D(n620), .Z(n101)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i126_4_lut.init = 16'heeec;
    FD1S3IX v_counter_14__i19 (.D(n86[19]), .CK(osc_clk), .CD(n60), .Q(v_counter[19]));
    defparam v_counter_14__i19.GSR = "DISABLED";
    ORCALUT4 i7_4_lut (.A(n9), .B(n14), .C(v_counter[17]), .D(v_counter[12]), 
            .Z(V_SYNC_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    ORCALUT4 i607_4_lut (.A(v_counter[12]), .B(v_counter[14]), .C(n101), 
            .D(n718), .Z(n653)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i607_4_lut.init = 16'hc888;
    CCU2 v_counter_14_add_4_10 (.A0(v_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n554), .COUT1(n555), .S0(n86[8]), .S1(n86[9]));
    defparam v_counter_14_add_4_10.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_10.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_10.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i624_4_lut (.A(v_counter[13]), .B(n719), .C(n653), .D(v_counter[18]), 
            .Z(n663)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(D)))) */ ;
    defparam i624_4_lut.init = 16'h0013;
    CCU2 v_counter_14_add_4_4 (.A0(v_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n551), .COUT1(n552), .S0(n86[2]), .S1(n86[3]));
    defparam v_counter_14_add_4_4.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_4.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_4.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i2_3_lut (.A(v_counter[8]), .B(v_counter[7]), .C(v_counter[6]), 
            .Z(n105)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    ORCALUT4 i603_3_lut (.A(h_counter[10]), .B(h_counter[5]), .C(h_counter[6]), 
            .Z(n649)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i603_3_lut.init = 16'heaea;
    ORCALUT4 i621_4_lut (.A(n641), .B(n631), .C(h_counter[7]), .D(n649), 
            .Z(H_SYNC_c)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i621_4_lut.init = 16'h3332;
    ORCALUT4 i3_3_lut_adj_6 (.A(v_counter[4]), .B(v_counter[1]), .C(v_counter[2]), 
            .Z(n8_adj_2)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut_adj_6.init = 16'h8080;
    CCU2 v_counter_14_add_4_2 (.A0(v_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n551), .S0(n86[0]), .S1(n86[1]));
    defparam v_counter_14_add_4_2.INIT0 = 16'h0555;
    defparam v_counter_14_add_4_2.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_2.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_2.INJECT1_1 = "NO";
    FD1S3IX v_counter_14__i18 (.D(n86[18]), .CK(osc_clk), .CD(n60), .Q(v_counter[18]));
    defparam v_counter_14__i18.GSR = "DISABLED";
    FD1S3IX v_counter_14__i17 (.D(n86[17]), .CK(osc_clk), .CD(n60), .Q(v_counter[17]));
    defparam v_counter_14__i17.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_adj_7 (.A(v_counter[19]), .B(n71), .Z(n631)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_7.init = 16'heeee;
    FD1S3IX v_counter_14__i16 (.D(n86[16]), .CK(osc_clk), .CD(n60), .Q(v_counter[16]));
    defparam v_counter_14__i16.GSR = "DISABLED";
    FD1S3IX v_counter_14__i15 (.D(n86[15]), .CK(osc_clk), .CD(n60), .Q(v_counter[15]));
    defparam v_counter_14__i15.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_3_lut (.A(v_counter[16]), .B(v_counter[15]), .C(v_counter[14]), 
            .Z(n628)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    FD1S3IX v_counter_14__i14 (.D(n86[14]), .CK(osc_clk), .CD(n60), .Q(v_counter[14]));
    defparam v_counter_14__i14.GSR = "DISABLED";
    FD1S3IX v_counter_14__i13 (.D(n86[13]), .CK(osc_clk), .CD(n60), .Q(v_counter[13]));
    defparam v_counter_14__i13.GSR = "DISABLED";
    FD1S3IX v_counter_14__i12 (.D(n86[12]), .CK(osc_clk), .CD(n60), .Q(v_counter[12]));
    defparam v_counter_14__i12.GSR = "DISABLED";
    ORCALUT4 i2_4_lut_adj_8 (.A(v_counter[0]), .B(n105), .C(n8_adj_2), 
            .D(v_counter[3]), .Z(n6_adj_4)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i2_4_lut_adj_8.init = 16'heccc;
    FD1S3IX v_counter_14__i11 (.D(n86[11]), .CK(osc_clk), .CD(n60), .Q(v_counter[11]));
    defparam v_counter_14__i11.GSR = "DISABLED";
    FD1S3IX v_counter_14__i10 (.D(n86[10]), .CK(osc_clk), .CD(n60), .Q(v_counter[10]));
    defparam v_counter_14__i10.GSR = "DISABLED";
    CCU2 h_counter_13_add_4_8 (.A0(h_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n548), .COUT1(n549), .S0(n50[6]), .S1(n50[7]));
    defparam h_counter_13_add_4_8.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_8.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_8.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_8.INJECT1_1 = "NO";
    FD1S3IX v_counter_14__i9 (.D(n86[9]), .CK(osc_clk), .CD(n60), .Q(v_counter[9]));
    defparam v_counter_14__i9.GSR = "DISABLED";
    ORCALUT4 i595_2_lut (.A(h_counter[8]), .B(h_counter[9]), .Z(n641)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i595_2_lut.init = 16'heeee;
    FD1S3IX v_counter_14__i8 (.D(n86[8]), .CK(osc_clk), .CD(n60), .Q(v_counter[8]));
    defparam v_counter_14__i8.GSR = "DISABLED";
    CCU2 v_counter_14_add_4_20 (.A0(v_counter[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[19]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n559), .S0(n86[18]), .S1(n86[19]));
    defparam v_counter_14_add_4_20.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_20.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_20.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_20.INJECT1_1 = "NO";
    FD1S3IX v_counter_14__i7 (.D(n86[7]), .CK(osc_clk), .CD(n60), .Q(v_counter[7]));
    defparam v_counter_14__i7.GSR = "DISABLED";
    FD1S3IX v_counter_14__i6 (.D(n86[6]), .CK(osc_clk), .CD(n60), .Q(v_counter[6]));
    defparam v_counter_14__i6.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_adj_9 (.A(v_counter[5]), .B(v_counter[9]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_9.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_6 (.A(v_counter[16]), .B(v_counter[15]), .Z(n719)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_6.init = 16'heeee;
    ORCALUT4 i6_4_lut (.A(v_counter[13]), .B(v_counter[18]), .C(v_counter[19]), 
            .D(n628), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    FD1S3IX v_counter_14__i5 (.D(n86[5]), .CK(osc_clk), .CD(n60), .Q(v_counter[5]));
    defparam v_counter_14__i5.GSR = "DISABLED";
    FD1S3IX v_counter_14__i4 (.D(n86[4]), .CK(osc_clk), .CD(n60), .Q(v_counter[4]));
    defparam v_counter_14__i4.GSR = "DISABLED";
    FD1S3IX v_counter_14__i3 (.D(n86[3]), .CK(osc_clk), .CD(n60), .Q(v_counter[3]));
    defparam v_counter_14__i3.GSR = "DISABLED";
    FD1S3IX v_counter_14__i2 (.D(n86[2]), .CK(osc_clk), .CD(n60), .Q(v_counter[2]));
    defparam v_counter_14__i2.GSR = "DISABLED";
    FD1S3IX v_counter_14__i1 (.D(n86[1]), .CK(osc_clk), .CD(n60), .Q(v_counter[1]));
    defparam v_counter_14__i1.GSR = "DISABLED";
    PFUMX i66 (.BLUT(n663), .ALUT(n1), .C0(v_counter[17]), .Z(n71));
    FD1S3IX h_counter_13__i10 (.D(n50[10]), .CK(osc_clk), .CD(n20), .Q(h_counter[10]));
    defparam h_counter_13__i10.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_10 (.A(n5), .B(v_counter[13]), .C(n622), .D(n6_adj_4), 
            .Z(n97_adj_6)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_10.init = 16'hfcec;
    ORCALUT4 i1_4_lut_adj_11 (.A(v_counter[14]), .B(v_counter[18]), .C(n719), 
            .D(n97_adj_6), .Z(n4_adj_1)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_11.init = 16'hc8c0;
    CCU2 v_counter_14_add_4_18 (.A0(v_counter[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[17]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n558), .COUT1(n559), .S0(n86[16]), .S1(n86[17]));
    defparam v_counter_14_add_4_18.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_18.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_18.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_18.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_8 (.A0(v_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n553), .COUT1(n554), .S0(n86[6]), .S1(n86[7]));
    defparam v_counter_14_add_4_8.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_8.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_8.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_12 (.A(v_counter[10]), .B(v_counter[11]), .C(n105), 
            .D(v_counter[9]), .Z(n9)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_12.init = 16'heccc;
    CCU2 h_counter_13_add_4_6 (.A0(h_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n547), .COUT1(n548), .S0(n50[4]), .S1(n50[5]));
    defparam h_counter_13_add_4_6.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_6.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_6.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 i2_2_lut (.A(h_counter[3]), .B(h_counter[1]), .Z(n6_adj_7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 i593_4_lut (.A(h_counter[4]), .B(h_counter[0]), .C(n6_adj_7), 
            .D(h_counter[2]), .Z(n639)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i593_4_lut.init = 16'haaa8;
    CCU2 h_counter_13_add_4_4 (.A0(h_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n546), .COUT1(n547), .S0(n50[2]), .S1(n50[3]));
    defparam h_counter_13_add_4_4.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_4.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_4.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_3_lut_adj_13 (.A(v_counter[11]), .B(v_counter[10]), 
            .C(v_counter[12]), .Z(n622)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_13.init = 16'h8080;
    FD1S3IX h_counter_13__i9 (.D(n50[9]), .CK(osc_clk), .CD(n20), .Q(h_counter[9]));
    defparam h_counter_13__i9.GSR = "DISABLED";
    FD1S3IX h_counter_13__i8 (.D(n50[8]), .CK(osc_clk), .CD(n20), .Q(h_counter[8]));
    defparam h_counter_13__i8.GSR = "DISABLED";
    FD1S3IX h_counter_13__i7 (.D(n50[7]), .CK(osc_clk), .CD(n20), .Q(h_counter[7]));
    defparam h_counter_13__i7.GSR = "DISABLED";
    ORCALUT4 i2_2_lut_adj_14 (.A(h_counter[7]), .B(h_counter[6]), .Z(n6_adj_8)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_14.init = 16'heeee;
    FD1S3IX h_counter_13__i6 (.D(n50[6]), .CK(osc_clk), .CD(n20), .Q(h_counter[6]));
    defparam h_counter_13__i6.GSR = "DISABLED";
    FD1S3IX h_counter_13__i5 (.D(n50[5]), .CK(osc_clk), .CD(n20), .Q(h_counter[5]));
    defparam h_counter_13__i5.GSR = "DISABLED";
    FD1S3IX h_counter_13__i4 (.D(n50[4]), .CK(osc_clk), .CD(n20), .Q(h_counter[4]));
    defparam h_counter_13__i4.GSR = "DISABLED";
    ORCALUT4 i611_4_lut (.A(h_counter[7]), .B(n641), .C(n639), .D(n246), 
            .Z(n657)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i611_4_lut.init = 16'heeec;
    FD1S3IX h_counter_13__i3 (.D(n50[3]), .CK(osc_clk), .CD(n20), .Q(h_counter[3]));
    defparam h_counter_13__i3.GSR = "DISABLED";
    FD1S3IX h_counter_13__i2 (.D(n50[2]), .CK(osc_clk), .CD(n20), .Q(h_counter[2]));
    defparam h_counter_13__i2.GSR = "DISABLED";
    FD1S3IX h_counter_13__i1 (.D(n50[1]), .CK(osc_clk), .CD(n20), .Q(h_counter[1]));
    defparam h_counter_13__i1.GSR = "DISABLED";
    FD1S3IX v_counter_14__i0 (.D(n86[0]), .CK(osc_clk), .CD(n60), .Q(v_counter[0]));
    defparam v_counter_14__i0.GSR = "DISABLED";
    FD1S3IX h_counter_13__i0 (.D(n50[0]), .CK(osc_clk), .CD(n20), .Q(h_counter[0]));
    defparam h_counter_13__i0.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_rep_5 (.A(v_counter[11]), .B(v_counter[10]), .Z(n718)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_5.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_adj_15 (.A(v_counter[6]), .B(v_counter[5]), 
            .C(v_counter[7]), .Z(n621)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_15.init = 16'h8080;
    ORCALUT4 i1_2_lut_rep_4 (.A(v_counter[6]), .B(v_counter[5]), .Z(n717)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_4.init = 16'h8888;
    CCU2 h_counter_13_add_4_12 (.A0(h_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n550), .S0(n50[10]));
    defparam h_counter_13_add_4_12.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_12.INIT1 = 16'h0000;
    defparam h_counter_13_add_4_12.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 i2_4_lut_adj_16 (.A(h_counter[5]), .B(n31), .C(n6_adj_8), 
            .D(h_counter[4]), .Z(n2)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_16.init = 16'hccc8;
    CCU2 v_counter_14_add_4_16 (.A0(v_counter[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[15]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n557), .COUT1(n558), .S0(n86[14]), .S1(n86[15]));
    defparam v_counter_14_add_4_16.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_16.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_16.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_16.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_2 (.A0(h_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n546), .S0(n50[0]), .S1(n50[1]));
    defparam h_counter_13_add_4_2.INIT0 = 16'h0555;
    defparam h_counter_13_add_4_2.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_2.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_2.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_14 (.A0(v_counter[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n556), .COUT1(n557), .S0(n86[12]), .S1(n86[13]));
    defparam v_counter_14_add_4_14.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_14.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_14.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_14.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_6 (.A0(v_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n552), .COUT1(n553), .S0(n86[4]), .S1(n86[5]));
    defparam v_counter_14_add_4_6.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_6.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_6.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_6.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_10 (.A0(h_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n549), .COUT1(n550), .S0(n50[8]), .S1(n50[9]));
    defparam h_counter_13_add_4_10.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_10.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_10.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i2_4_lut_adj_17 (.A(n631), .B(h_counter[10]), .C(n2), .D(n657), 
            .Z(n633)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_4_lut_adj_17.init = 16'hfeff;
    
endmodule

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

