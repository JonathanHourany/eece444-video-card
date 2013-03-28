// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Wed Mar 27 15:31:56 2013

//
// Verilog Description of module Top
//

module Top (RESET, H_SYNC, V_SYNC, RED, osc_clk) /* synthesis syn_module_defined=1 */ ;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(9[8:11])
    input RESET;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(10[14:19])
    output H_SYNC;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(11[14:20])
    output V_SYNC;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(12[14:20])
    output RED;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(13[14:17])
    output osc_clk;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(14[14:21])
    
    wire RESET_c;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(10[14:19])
    wire H_SYNC_c;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(11[14:20])
    wire V_SYNC_c;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(12[14:20])
    wire osc_clk_c;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(14[14:21])
    wire GND_net;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(43[31:36])
    wire VCC_net;   // c:/users/octalbyte/documents/github/eece444-video-card/top.v(13[14:17])
    
    VLO i1 (.Z(GND_net));
    OSCC OSCC_1 (.OSC(osc_clk_c)) /* synthesis syn_instantiated=1 */ ;
    GSR GSR_INST (.GSR(VCC_net));
    OB RED_pad (.I(VCC_net), .O(RED));
    OB V_SYNC_pad (.I(V_SYNC_c), .O(V_SYNC));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB H_SYNC_pad (.I(H_SYNC_c), .O(H_SYNC));
    CtrlLines CONTROLLINES (.V_SYNC_c(V_SYNC_c), .osc_clk_c(osc_clk_c), 
            .GND_net(GND_net), .H_SYNC_c(H_SYNC_c)) /* synthesis syn_module_defined=1 */ ;
    OB osc_clk_pad (.I(osc_clk_c), .O(osc_clk));
    IB RESET_pad (.I(RESET), .O(RESET_c));
    VHI i163 (.Z(VCC_net));
    
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
// Verilog Description of module CtrlLines
//

module CtrlLines (V_SYNC_c, osc_clk_c, GND_net, H_SYNC_c) /* synthesis syn_module_defined=1 */ ;
    output V_SYNC_c;
    input osc_clk_c;
    input GND_net;
    output H_SYNC_c;
    
    wire [18:0]v_counter;   // c:/users/octalbyte/documents/github/eece444-video-card/ctrllines.v(20[16:25])
    wire [10:0]h_counter;   // c:/users/octalbyte/documents/github/eece444-video-card/ctrllines.v(19[17:26])
    
    wire n167;
    wire [18:0]n143;
    
    wire n51;
    wire [18:0]n82;
    
    wire n153, n4, n162, n9;
    wire [10:0]n50;
    
    wire n152, n151, n150, n149, n148, n147, n146, n11, n12, 
        n159, n6, n157, n6_adj_2, n160, n154, n185, n145, n144, 
        n1, n142, n141, n140;
    
    FD1S3AX V_SYNC_27 (.D(n167), .CK(osc_clk_c), .Q(V_SYNC_c));
    defparam V_SYNC_27.GSR = "DISABLED";
    FD1S3IX v_counter_14__i0 (.D(n82[0]), .CK(osc_clk_c), .CD(n51), .Q(n143[0]));
    defparam v_counter_14__i0.GSR = "DISABLED";
    CCU2 v_counter_14_add_4_20 (.A0(v_counter[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n153), .S0(n82[18]));
    defparam v_counter_14_add_4_20.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_20.INIT1 = 16'h0000;
    defparam v_counter_14_add_4_20.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_20.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut (.A(v_counter[8]), .B(v_counter[9]), .C(v_counter[6]), 
            .D(v_counter[7]), .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hccc8;
    FD1S3AX H_SYNC_24 (.D(n162), .CK(osc_clk_c), .Q(H_SYNC_c));
    defparam H_SYNC_24.GSR = "DISABLED";
    FD1S3IX h_counter_13__i0 (.D(n50[0]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[0]));
    defparam h_counter_13__i0.GSR = "DISABLED";
    CCU2 v_counter_14_add_4_18 (.A0(v_counter[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[17]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n152), .COUT1(n153), .S0(n82[16]), .S1(n82[17]));
    defparam v_counter_14_add_4_18.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_18.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_18.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_18.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_16 (.A0(v_counter[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[15]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n151), .COUT1(n152), .S0(n82[14]), .S1(n82[15]));
    defparam v_counter_14_add_4_16.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_16.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_16.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_16.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_14 (.A0(v_counter[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n150), .COUT1(n151), .S0(n82[12]), .S1(n82[13]));
    defparam v_counter_14_add_4_14.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_14.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_14.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_14.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_12 (.A0(v_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n149), .COUT1(n150), .S0(n82[10]), .S1(n82[11]));
    defparam v_counter_14_add_4_12.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_12.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_12.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_12.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_10 (.A0(v_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n148), .COUT1(n149), .S0(n82[8]), .S1(n82[9]));
    defparam v_counter_14_add_4_10.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_10.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_10.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_10.INJECT1_1 = "NO";
    FD1S3IX h_counter_13__i10 (.D(n50[10]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[10]));
    defparam h_counter_13__i10.GSR = "DISABLED";
    CCU2 v_counter_14_add_4_8 (.A0(v_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n147), .COUT1(n148), .S0(n82[6]), .S1(n82[7]));
    defparam v_counter_14_add_4_8.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_8.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_8.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_8.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_6 (.A0(n143[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n143[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n146), .COUT1(n147), .S0(n82[4]), .S1(n82[5]));
    defparam v_counter_14_add_4_6.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_6.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_6.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_6.INJECT1_1 = "NO";
    FD1S3IX h_counter_13__i9 (.D(n50[9]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[9]));
    defparam h_counter_13__i9.GSR = "DISABLED";
    FD1S3IX h_counter_13__i8 (.D(n50[8]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[8]));
    defparam h_counter_13__i8.GSR = "DISABLED";
    FD1S3IX h_counter_13__i7 (.D(n50[7]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[7]));
    defparam h_counter_13__i7.GSR = "DISABLED";
    FD1S3IX h_counter_13__i6 (.D(n50[6]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[6]));
    defparam h_counter_13__i6.GSR = "DISABLED";
    FD1S3IX h_counter_13__i5 (.D(n50[5]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[5]));
    defparam h_counter_13__i5.GSR = "DISABLED";
    FD1S3IX h_counter_13__i4 (.D(n50[4]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[4]));
    defparam h_counter_13__i4.GSR = "DISABLED";
    FD1S3IX h_counter_13__i3 (.D(n50[3]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[3]));
    defparam h_counter_13__i3.GSR = "DISABLED";
    ORCALUT4 i1_4_lut_adj_1 (.A(v_counter[10]), .B(n11), .C(n4), .D(n12), 
            .Z(n167)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i1_4_lut_adj_1.init = 16'hffec;
    FD1S3IX h_counter_13__i2 (.D(n50[2]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[2]));
    defparam h_counter_13__i2.GSR = "DISABLED";
    FD1S3IX h_counter_13__i1 (.D(n50[1]), .CK(osc_clk_c), .CD(n9), .Q(h_counter[1]));
    defparam h_counter_13__i1.GSR = "DISABLED";
    FD1S3IX v_counter_14__i18 (.D(n82[18]), .CK(osc_clk_c), .CD(n51), 
            .Q(v_counter[18]));
    defparam v_counter_14__i18.GSR = "DISABLED";
    ORCALUT4 i2_3_lut (.A(h_counter[7]), .B(h_counter[6]), .C(h_counter[5]), 
            .Z(n159)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    ORCALUT4 i32_4_lut (.A(h_counter[9]), .B(h_counter[10]), .C(h_counter[8]), 
            .D(n159), .Z(n9)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i32_4_lut.init = 16'heccc;
    ORCALUT4 i1_2_lut (.A(h_counter[0]), .B(h_counter[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    ORCALUT4 i4_4_lut (.A(h_counter[2]), .B(h_counter[4]), .C(h_counter[3]), 
            .D(n6), .Z(n157)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_2 (.A(n157), .B(h_counter[7]), .C(h_counter[6]), 
            .D(h_counter[5]), .Z(n6_adj_2)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_2.init = 16'hfcec;
    ORCALUT4 i4_4_lut_adj_3 (.A(h_counter[9]), .B(h_counter[8]), .C(h_counter[10]), 
            .D(n6_adj_2), .Z(n162)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_3.init = 16'hfffe;
    ORCALUT4 i2_3_lut_adj_4 (.A(v_counter[11]), .B(v_counter[10]), .C(v_counter[9]), 
            .Z(n160)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_4.init = 16'hfefe;
    ORCALUT4 i3_4_lut (.A(n160), .B(v_counter[14]), .C(v_counter[13]), 
            .D(v_counter[12]), .Z(n154)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    ORCALUT4 i2_4_lut (.A(v_counter[18]), .B(v_counter[17]), .C(n154), 
            .D(n185), .Z(n51)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    ORCALUT4 i5_4_lut (.A(v_counter[13]), .B(v_counter[18]), .C(v_counter[14]), 
            .D(v_counter[12]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_1 (.A(v_counter[16]), .B(v_counter[15]), .Z(n185)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_1.init = 16'heeee;
    FD1S3IX v_counter_14__i17 (.D(n82[17]), .CK(osc_clk_c), .CD(n51), 
            .Q(v_counter[17]));
    defparam v_counter_14__i17.GSR = "DISABLED";
    FD1S3IX v_counter_14__i16 (.D(n82[16]), .CK(osc_clk_c), .CD(n51), 
            .Q(v_counter[16]));
    defparam v_counter_14__i16.GSR = "DISABLED";
    FD1S3IX v_counter_14__i15 (.D(n82[15]), .CK(osc_clk_c), .CD(n51), 
            .Q(v_counter[15]));
    defparam v_counter_14__i15.GSR = "DISABLED";
    FD1S3IX v_counter_14__i14 (.D(n82[14]), .CK(osc_clk_c), .CD(n51), 
            .Q(v_counter[14]));
    defparam v_counter_14__i14.GSR = "DISABLED";
    FD1S3IX v_counter_14__i13 (.D(n82[13]), .CK(osc_clk_c), .CD(n51), 
            .Q(v_counter[13]));
    defparam v_counter_14__i13.GSR = "DISABLED";
    FD1S3IX v_counter_14__i12 (.D(n82[12]), .CK(osc_clk_c), .CD(n51), 
            .Q(v_counter[12]));
    defparam v_counter_14__i12.GSR = "DISABLED";
    FD1S3IX v_counter_14__i11 (.D(n82[11]), .CK(osc_clk_c), .CD(n51), 
            .Q(v_counter[11]));
    defparam v_counter_14__i11.GSR = "DISABLED";
    FD1S3IX v_counter_14__i10 (.D(n82[10]), .CK(osc_clk_c), .CD(n51), 
            .Q(v_counter[10]));
    defparam v_counter_14__i10.GSR = "DISABLED";
    FD1S3IX v_counter_14__i9 (.D(n82[9]), .CK(osc_clk_c), .CD(n51), .Q(v_counter[9]));
    defparam v_counter_14__i9.GSR = "DISABLED";
    FD1S3IX v_counter_14__i8 (.D(n82[8]), .CK(osc_clk_c), .CD(n51), .Q(v_counter[8]));
    defparam v_counter_14__i8.GSR = "DISABLED";
    FD1S3IX v_counter_14__i7 (.D(n82[7]), .CK(osc_clk_c), .CD(n51), .Q(v_counter[7]));
    defparam v_counter_14__i7.GSR = "DISABLED";
    FD1S3IX v_counter_14__i6 (.D(n82[6]), .CK(osc_clk_c), .CD(n51), .Q(v_counter[6]));
    defparam v_counter_14__i6.GSR = "DISABLED";
    FD1S3IX v_counter_14__i5 (.D(n82[5]), .CK(osc_clk_c), .CD(n51), .Q(n143[5]));
    defparam v_counter_14__i5.GSR = "DISABLED";
    FD1S3IX v_counter_14__i4 (.D(n82[4]), .CK(osc_clk_c), .CD(n51), .Q(n143[4]));
    defparam v_counter_14__i4.GSR = "DISABLED";
    FD1S3IX v_counter_14__i3 (.D(n82[3]), .CK(osc_clk_c), .CD(n51), .Q(n143[3]));
    defparam v_counter_14__i3.GSR = "DISABLED";
    FD1S3IX v_counter_14__i2 (.D(n82[2]), .CK(osc_clk_c), .CD(n51), .Q(n143[2]));
    defparam v_counter_14__i2.GSR = "DISABLED";
    FD1S3IX v_counter_14__i1 (.D(n82[1]), .CK(osc_clk_c), .CD(n51), .Q(n143[1]));
    defparam v_counter_14__i1.GSR = "DISABLED";
    ORCALUT4 i4_3_lut_4_lut (.A(v_counter[16]), .B(v_counter[15]), .C(v_counter[11]), 
            .D(v_counter[17]), .Z(n11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_3_lut_4_lut.init = 16'hfffe;
    CCU2 v_counter_14_add_4_4 (.A0(n143[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n143[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n145), .COUT1(n146), .S0(n82[2]), .S1(n82[3]));
    defparam v_counter_14_add_4_4.INIT0 = 16'hfaaa;
    defparam v_counter_14_add_4_4.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_4.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_4.INJECT1_1 = "NO";
    CCU2 v_counter_14_add_4_2 (.A0(n143[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n143[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(GND_net), .COUT1(n145), .S0(n82[0]), .S1(n82[1]));
    defparam v_counter_14_add_4_2.INIT0 = 16'h0555;
    defparam v_counter_14_add_4_2.INIT1 = 16'hfaaa;
    defparam v_counter_14_add_4_2.INJECT1_0 = "NO";
    defparam v_counter_14_add_4_2.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_12 (.A0(h_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n144), .S0(n50[10]));
    defparam h_counter_13_add_4_12.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_12.INIT1 = 16'h0000;
    defparam h_counter_13_add_4_12.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_12.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_10 (.A0(h_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n1), .COUT1(n144), .S0(n50[8]), .S1(n50[9]));
    defparam h_counter_13_add_4_10.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_10.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_10.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_10.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_8 (.A0(h_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n142), .COUT1(n1), .S0(n50[6]), .S1(n50[7]));
    defparam h_counter_13_add_4_8.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_8.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_8.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_8.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_6 (.A0(h_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n141), .COUT1(n142), .S0(n50[4]), .S1(n50[5]));
    defparam h_counter_13_add_4_6.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_6.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_6.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_6.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_4 (.A0(h_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n140), .COUT1(n141), .S0(n50[2]), .S1(n50[3]));
    defparam h_counter_13_add_4_4.INIT0 = 16'hfaaa;
    defparam h_counter_13_add_4_4.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_4.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_4.INJECT1_1 = "NO";
    CCU2 h_counter_13_add_4_2 (.A0(h_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n140), .S0(n50[0]), .S1(n50[1]));
    defparam h_counter_13_add_4_2.INIT0 = 16'h0555;
    defparam h_counter_13_add_4_2.INIT1 = 16'hfaaa;
    defparam h_counter_13_add_4_2.INJECT1_0 = "NO";
    defparam h_counter_13_add_4_2.INJECT1_1 = "NO";
    
endmodule
