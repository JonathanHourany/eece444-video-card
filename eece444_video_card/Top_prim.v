// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Thu Apr 11 15:28:37 2013

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
    
    wire GND_net, VCC_net, n8, n616, n642, n6, n615;
    wire [8:0]n73;
    
    wire n614, n406;
    wire [8:0]n42_adj_8;
    
    wire n613;
    
    VHI i2 (.Z(VCC_net));
    Controller CNTRL (.n8(n8), .RESET_c(RESET_c), .osc_clk(osc_clk), .GND_net(GND_net), 
            .V_SYNC_c(V_SYNC_c), .v_display(v_display), .H_SYNC_c(H_SYNC_c), 
            .h_display(h_display)) /* synthesis syn_module_defined=1 */ ;
    OBZ RED_pad (.I(VCC_net), .T(n406), .O(RED));
    OSCC OSCC_1 (.OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    OB V_SYNC_pad (.I(V_SYNC_c), .O(V_SYNC));
    FD1S3IX x_counter_23__i8 (.D(n42_adj_8[0]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[8]));
    defparam x_counter_23__i8.GSR = "DISABLED";
    CCU2 x_counter_23_add_4_10 (.A0(x_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n616), .S0(n42_adj_8[8]));
    defparam x_counter_23_add_4_10.INIT0 = 16'hfaaa;
    defparam x_counter_23_add_4_10.INIT1 = 16'h0000;
    defparam x_counter_23_add_4_10.INJECT1_0 = "NO";
    defparam x_counter_23_add_4_10.INJECT1_1 = "NO";
    FD1S3IX x_counter_23__i0 (.D(n42_adj_8[8]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[0]));
    defparam x_counter_23__i0.GSR = "DISABLED";
    CCU2 x_counter_23_add_4_2 (.A0(h_display), .B0(v_display), .C0(x_counter[8]), 
         .D0(GND_net), .A1(x_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n613), .S0(n42_adj_8[0]), 
         .S1(n42_adj_8[1]));
    defparam x_counter_23_add_4_2.INIT0 = 16'h7878;
    defparam x_counter_23_add_4_2.INIT1 = 16'hfaaa;
    defparam x_counter_23_add_4_2.INJECT1_0 = "NO";
    defparam x_counter_23_add_4_2.INJECT1_1 = "NO";
    CCU2 x_counter_23_add_4_8 (.A0(x_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(x_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n615), .COUT1(n616), .S0(n42_adj_8[6]), 
         .S1(n42_adj_8[7]));
    defparam x_counter_23_add_4_8.INIT0 = 16'hfaaa;
    defparam x_counter_23_add_4_8.INIT1 = 16'hfaaa;
    defparam x_counter_23_add_4_8.INJECT1_0 = "NO";
    defparam x_counter_23_add_4_8.INJECT1_1 = "NO";
    CCU2 x_counter_23_add_4_6 (.A0(n73[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(x_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n614), .COUT1(n615), .S0(n42_adj_8[4]), 
         .S1(n42_adj_8[5]));
    defparam x_counter_23_add_4_6.INIT0 = 16'hfaaa;
    defparam x_counter_23_add_4_6.INIT1 = 16'hfaaa;
    defparam x_counter_23_add_4_6.INJECT1_0 = "NO";
    defparam x_counter_23_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 i2_2_lut (.A(x_counter[1]), .B(x_counter[0]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    FD1S3IX x_counter_23__i1 (.D(n42_adj_8[7]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[1]));
    defparam x_counter_23__i1.GSR = "DISABLED";
    FD1S3IX x_counter_23__i2 (.D(n42_adj_8[6]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[2]));
    defparam x_counter_23__i2.GSR = "DISABLED";
    FD1S3IX x_counter_23__i3 (.D(n42_adj_8[5]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[3]));
    defparam x_counter_23__i3.GSR = "DISABLED";
    FD1S3IX x_counter_23__i4 (.D(n42_adj_8[4]), .CK(osc_clk), .CD(n8), 
            .Q(n73[4]));
    defparam x_counter_23__i4.GSR = "DISABLED";
    FD1S3IX x_counter_23__i5 (.D(n42_adj_8[3]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[5]));
    defparam x_counter_23__i5.GSR = "DISABLED";
    FD1S3IX x_counter_23__i6 (.D(n42_adj_8[2]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[6]));
    defparam x_counter_23__i6.GSR = "DISABLED";
    FD1S3IX x_counter_23__i7 (.D(n42_adj_8[1]), .CK(osc_clk), .CD(n8), 
            .Q(x_counter[7]));
    defparam x_counter_23__i7.GSR = "DISABLED";
    ORCALUT4 i3_4_lut (.A(x_counter[8]), .B(x_counter[6]), .C(x_counter[7]), 
            .D(x_counter[5]), .Z(n642)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i3_4_lut.init = 16'hfffd;
    ORCALUT4 i324_4_lut (.A(x_counter[3]), .B(n642), .C(n6), .D(x_counter[2]), 
            .Z(n406)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i324_4_lut.init = 16'hccc4;
    OB H_SYNC_pad (.I(H_SYNC_c), .O(H_SYNC));
    GSR GSR_INST (.GSR(VCC_net));
    CCU2 x_counter_23_add_4_4 (.A0(x_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(x_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n613), .COUT1(n614), .S0(n42_adj_8[2]), 
         .S1(n42_adj_8[3]));
    defparam x_counter_23_add_4_4.INIT0 = 16'hfaaa;
    defparam x_counter_23_add_4_4.INIT1 = 16'hfaaa;
    defparam x_counter_23_add_4_4.INJECT1_0 = "NO";
    defparam x_counter_23_add_4_4.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    IB RESET_pad (.I(RESET), .O(RESET_c));
    
endmodule

//
// Verilog Description of module Controller
//

module Controller (n8, RESET_c, osc_clk, GND_net, V_SYNC_c, v_display, 
            H_SYNC_c, h_display) /* synthesis syn_module_defined=1 */ ;
    output n8;
    input RESET_c;
    input osc_clk;
    input GND_net;
    output V_SYNC_c;
    output v_display;
    output H_SYNC_c;
    output h_display;
    
    wire [9:0]h_counter;   // c:/users/fox/programming/eece444-video-card/controller.v(20[16:25])
    wire [18:0]v_counter;   // c:/users/fox/programming/eece444-video-card/controller.v(21[17:26])
    
    wire n18;
    wire [9:0]n46;
    
    wire n703, n707, n625;
    wire [18:0]n82;
    
    wire n323, n752, n5, n328, n683, n673, n55, n638, n45, 
        n661, n14, n4, n635, n620, n621, n27, n6, n624, n619;
    wire [18:0]n143;
    
    wire n629, n15, n751, n628, n627, n618, n623, n626, n617, 
        n622, n49_adj_2, n697, n713, n6_adj_3;
    
    INV i4 (.A(RESET_c), .Z(n8));
    FD1S3IX h_counter_24__i0 (.D(n46[0]), .CK(osc_clk), .CD(n18), .Q(h_counter[0]));
    defparam h_counter_24__i0.GSR = "DISABLED";
    ORCALUT4 i606_4_lut (.A(v_counter[5]), .B(v_counter[8]), .C(v_counter[6]), 
            .D(v_counter[4]), .Z(n703)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i606_4_lut.init = 16'h8000;
    ORCALUT4 i610_4_lut (.A(v_counter[1]), .B(v_counter[7]), .C(v_counter[3]), 
            .D(v_counter[2]), .Z(n707)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i610_4_lut.init = 16'h8000;
    CCU2 v_counter_25_add_4_20 (.A0(v_counter[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n625), .S0(n82[18]));
    defparam v_counter_25_add_4_20.INIT0 = 16'hfaaa;
    defparam v_counter_25_add_4_20.INIT1 = 16'h0000;
    defparam v_counter_25_add_4_20.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_20.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut (.A(n323), .B(V_SYNC_c), .C(n752), .D(v_counter[5]), 
            .Z(n5)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut.init = 16'hc8c0;
    ORCALUT4 i3_4_lut (.A(n5), .B(n707), .C(n328), .D(n703), .Z(v_display)) /* synthesis lut_function=(!((B (C+(D))+!B (C))+!A)) */ ;
    defparam i3_4_lut.init = 16'h020a;
    ORCALUT4 i1_4_lut_adj_1 (.A(RESET_c), .B(n683), .C(n673), .D(v_counter[9]), 
            .Z(n55)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i1_4_lut_adj_1.init = 16'hfdf5;
    ORCALUT4 i3_4_lut_adj_2 (.A(h_counter[1]), .B(h_counter[0]), .C(h_counter[3]), 
            .D(h_counter[2]), .Z(n638)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_2.init = 16'hfffe;
    ORCALUT4 i2_3_lut_4_lut (.A(h_counter[6]), .B(h_counter[5]), .C(h_counter[7]), 
            .D(n45), .Z(n661)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    ORCALUT4 i5_3_lut (.A(v_counter[18]), .B(v_counter[17]), .C(v_counter[12]), 
            .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    ORCALUT4 i1_3_lut (.A(h_counter[6]), .B(h_counter[4]), .C(n638), .Z(n4)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut.init = 16'heaea;
    ORCALUT4 i2_3_lut_4_lut_adj_3 (.A(h_counter[6]), .B(h_counter[5]), .C(h_counter[7]), 
            .D(n45), .Z(n635)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_3.init = 16'hfffe;
    CCU2 v_counter_25_add_4_10 (.A0(v_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n620), .COUT1(n621), .S0(n82[8]), .S1(n82[9]));
    defparam v_counter_25_add_4_10.INIT0 = 16'hfaaa;
    defparam v_counter_25_add_4_10.INIT1 = 16'hfaaa;
    defparam v_counter_25_add_4_10.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_4 (.A(h_counter[9]), .B(h_counter[7]), .C(h_counter[5]), 
            .D(n4), .Z(n27)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_4.init = 16'heeea;
    ORCALUT4 i1_2_lut (.A(h_counter[4]), .B(h_counter[2]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2 v_counter_25_add_4_18 (.A0(v_counter[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[17]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n624), .COUT1(n625), .S0(n82[16]), .S1(n82[17]));
    defparam v_counter_25_add_4_18.INIT0 = 16'hfaaa;
    defparam v_counter_25_add_4_18.INIT1 = 16'hfaaa;
    defparam v_counter_25_add_4_18.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_18.INJECT1_1 = "NO";
    CCU2 v_counter_25_add_4_8 (.A0(v_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n619), .COUT1(n620), .S0(n82[6]), .S1(n82[7]));
    defparam v_counter_25_add_4_8.INIT0 = 16'hfaaa;
    defparam v_counter_25_add_4_8.INIT1 = 16'hfaaa;
    defparam v_counter_25_add_4_8.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_8.INJECT1_1 = "NO";
    FD1S3IX v_counter_25__i0 (.D(n82[0]), .CK(osc_clk), .CD(n55), .Q(n143[0]));
    defparam v_counter_25__i0.GSR = "DISABLED";
    ORCALUT4 i18_4_lut (.A(h_counter[9]), .B(RESET_c), .C(n635), .D(h_counter[8]), 
            .Z(n18)) /* synthesis lut_function=(A ((C (D))+!B)+!A !(B)) */ ;
    defparam i18_4_lut.init = 16'hb333;
    ORCALUT4 i1_2_lut_3_lut (.A(v_counter[4]), .B(v_counter[3]), .C(v_counter[2]), 
            .Z(n323)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    CCU2 h_counter_24_add_4_10 (.A0(h_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n629), .S0(n46[8]), .S1(n46[9]));
    defparam h_counter_24_add_4_10.INIT0 = 16'hfaaa;
    defparam h_counter_24_add_4_10.INIT1 = 16'hfaaa;
    defparam h_counter_24_add_4_10.INJECT1_0 = "NO";
    defparam h_counter_24_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i6_4_lut (.A(v_counter[14]), .B(v_counter[10]), .C(v_counter[16]), 
            .D(v_counter[11]), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i8_4_lut (.A(n15), .B(v_counter[13]), .C(n14), .D(v_counter[15]), 
            .Z(n673)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_5 (.A(v_counter[9]), .B(n673), .Z(n328)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_5.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(v_counter[4]), .B(v_counter[3]), .C(n752), 
            .D(v_counter[5]), .Z(n683)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i3_4_lut_adj_6 (.A(v_counter[1]), .B(n328), .C(n323), .D(n751), 
            .Z(V_SYNC_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_6.init = 16'hfffe;
    CCU2 h_counter_24_add_4_8 (.A0(h_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n628), .COUT1(n629), .S0(n46[6]), .S1(n46[7]));
    defparam h_counter_24_add_4_8.INIT0 = 16'hfaaa;
    defparam h_counter_24_add_4_8.INIT1 = 16'hfaaa;
    defparam h_counter_24_add_4_8.INJECT1_0 = "NO";
    defparam h_counter_24_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i4_4_lut (.A(h_counter[3]), .B(h_counter[1]), .C(h_counter[0]), 
            .D(n6), .Z(n45)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    CCU2 h_counter_24_add_4_6 (.A0(h_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n627), .COUT1(n628), .S0(n46[4]), .S1(n46[5]));
    defparam h_counter_24_add_4_6.INIT0 = 16'hfaaa;
    defparam h_counter_24_add_4_6.INIT1 = 16'hfaaa;
    defparam h_counter_24_add_4_6.INJECT1_0 = "NO";
    defparam h_counter_24_add_4_6.INJECT1_1 = "NO";
    CCU2 v_counter_25_add_4_6 (.A0(v_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n618), .COUT1(n619), .S0(n82[4]), .S1(n82[5]));
    defparam v_counter_25_add_4_6.INIT0 = 16'hfaaa;
    defparam v_counter_25_add_4_6.INIT1 = 16'hfaaa;
    defparam v_counter_25_add_4_6.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_6.INJECT1_1 = "NO";
    CCU2 v_counter_25_add_4_16 (.A0(v_counter[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[15]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n623), .COUT1(n624), .S0(n82[14]), .S1(n82[15]));
    defparam v_counter_25_add_4_16.INIT0 = 16'hfaaa;
    defparam v_counter_25_add_4_16.INIT1 = 16'hfaaa;
    defparam v_counter_25_add_4_16.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_16.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_rep_3_4_lut (.A(v_counter[8]), .B(v_counter[7]), .C(v_counter[6]), 
            .D(v_counter[5]), .Z(n751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_3_4_lut.init = 16'hfffe;
    CCU2 h_counter_24_add_4_4 (.A0(h_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n626), .COUT1(n627), .S0(n46[2]), .S1(n46[3]));
    defparam h_counter_24_add_4_4.INIT0 = 16'hfaaa;
    defparam h_counter_24_add_4_4.INIT1 = 16'hfaaa;
    defparam h_counter_24_add_4_4.INJECT1_0 = "NO";
    defparam h_counter_24_add_4_4.INJECT1_1 = "NO";
    CCU2 v_counter_25_add_4_4 (.A0(v_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n617), .COUT1(n618), .S0(n82[2]), .S1(n82[3]));
    defparam v_counter_25_add_4_4.INIT0 = 16'hfaaa;
    defparam v_counter_25_add_4_4.INIT1 = 16'hfaaa;
    defparam v_counter_25_add_4_4.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_4.INJECT1_1 = "NO";
    CCU2 h_counter_24_add_4_2 (.A0(h_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(h_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n626), .S0(n46[0]), .S1(n46[1]));
    defparam h_counter_24_add_4_2.INIT0 = 16'h0555;
    defparam h_counter_24_add_4_2.INIT1 = 16'hfaaa;
    defparam h_counter_24_add_4_2.INJECT1_0 = "NO";
    defparam h_counter_24_add_4_2.INJECT1_1 = "NO";
    CCU2 v_counter_25_add_4_14 (.A0(v_counter[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n622), .COUT1(n623), .S0(n82[12]), .S1(n82[13]));
    defparam v_counter_25_add_4_14.INIT0 = 16'hfaaa;
    defparam v_counter_25_add_4_14.INIT1 = 16'hfaaa;
    defparam v_counter_25_add_4_14.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_7 (.A(h_counter[8]), .B(h_counter[9]), .Z(n49_adj_2)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_7.init = 16'h8888;
    FD1S3IX h_counter_24__i9 (.D(n46[9]), .CK(osc_clk), .CD(n18), .Q(h_counter[9]));
    defparam h_counter_24__i9.GSR = "DISABLED";
    CCU2 v_counter_25_add_4_2 (.A0(n49_adj_2), .B0(n661), .C0(n143[0]), 
         .D0(GND_net), .A1(v_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n617), .S0(n82[0]), .S1(n82[1]));
    defparam v_counter_25_add_4_2.INIT0 = 16'h7878;
    defparam v_counter_25_add_4_2.INIT1 = 16'hfaaa;
    defparam v_counter_25_add_4_2.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_2.INJECT1_1 = "NO";
    ORCALUT4 i600_2_lut (.A(h_counter[6]), .B(h_counter[4]), .Z(n697)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i600_2_lut.init = 16'heeee;
    ORCALUT4 i623_4_lut (.A(h_counter[7]), .B(h_counter[9]), .C(h_counter[5]), 
            .D(n697), .Z(n713)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))))) */ ;
    defparam i623_4_lut.init = 16'h3337;
    ORCALUT4 i2_2_lut (.A(h_counter[9]), .B(h_counter[8]), .Z(n6_adj_3)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 i3_4_lut_adj_8 (.A(h_counter[6]), .B(n6_adj_3), .C(h_counter[7]), 
            .D(h_counter[5]), .Z(H_SYNC_c)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_8.init = 16'hfefc;
    PFUMX i37 (.BLUT(n27), .ALUT(n713), .C0(h_counter[8]), .Z(h_display));
    FD1S3IX h_counter_24__i8 (.D(n46[8]), .CK(osc_clk), .CD(n18), .Q(h_counter[8]));
    defparam h_counter_24__i8.GSR = "DISABLED";
    FD1S3IX h_counter_24__i7 (.D(n46[7]), .CK(osc_clk), .CD(n18), .Q(h_counter[7]));
    defparam h_counter_24__i7.GSR = "DISABLED";
    FD1S3IX h_counter_24__i6 (.D(n46[6]), .CK(osc_clk), .CD(n18), .Q(h_counter[6]));
    defparam h_counter_24__i6.GSR = "DISABLED";
    FD1S3IX h_counter_24__i5 (.D(n46[5]), .CK(osc_clk), .CD(n18), .Q(h_counter[5]));
    defparam h_counter_24__i5.GSR = "DISABLED";
    FD1S3IX h_counter_24__i4 (.D(n46[4]), .CK(osc_clk), .CD(n18), .Q(h_counter[4]));
    defparam h_counter_24__i4.GSR = "DISABLED";
    FD1S3IX h_counter_24__i3 (.D(n46[3]), .CK(osc_clk), .CD(n18), .Q(h_counter[3]));
    defparam h_counter_24__i3.GSR = "DISABLED";
    FD1S3IX h_counter_24__i2 (.D(n46[2]), .CK(osc_clk), .CD(n18), .Q(h_counter[2]));
    defparam h_counter_24__i2.GSR = "DISABLED";
    FD1S3IX h_counter_24__i1 (.D(n46[1]), .CK(osc_clk), .CD(n18), .Q(h_counter[1]));
    defparam h_counter_24__i1.GSR = "DISABLED";
    FD1S3IX v_counter_25__i18 (.D(n82[18]), .CK(osc_clk), .CD(n55), .Q(v_counter[18]));
    defparam v_counter_25__i18.GSR = "DISABLED";
    ORCALUT4 i2_3_lut_rep_4 (.A(v_counter[8]), .B(v_counter[7]), .C(v_counter[6]), 
            .Z(n752)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_4.init = 16'hfefe;
    CCU2 v_counter_25_add_4_12 (.A0(v_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n621), .COUT1(n622), .S0(n82[10]), .S1(n82[11]));
    defparam v_counter_25_add_4_12.INIT0 = 16'hfaaa;
    defparam v_counter_25_add_4_12.INIT1 = 16'hfaaa;
    defparam v_counter_25_add_4_12.INJECT1_0 = "NO";
    defparam v_counter_25_add_4_12.INJECT1_1 = "NO";
    FD1S3IX v_counter_25__i17 (.D(n82[17]), .CK(osc_clk), .CD(n55), .Q(v_counter[17]));
    defparam v_counter_25__i17.GSR = "DISABLED";
    FD1S3IX v_counter_25__i16 (.D(n82[16]), .CK(osc_clk), .CD(n55), .Q(v_counter[16]));
    defparam v_counter_25__i16.GSR = "DISABLED";
    FD1S3IX v_counter_25__i15 (.D(n82[15]), .CK(osc_clk), .CD(n55), .Q(v_counter[15]));
    defparam v_counter_25__i15.GSR = "DISABLED";
    FD1S3IX v_counter_25__i14 (.D(n82[14]), .CK(osc_clk), .CD(n55), .Q(v_counter[14]));
    defparam v_counter_25__i14.GSR = "DISABLED";
    FD1S3IX v_counter_25__i13 (.D(n82[13]), .CK(osc_clk), .CD(n55), .Q(v_counter[13]));
    defparam v_counter_25__i13.GSR = "DISABLED";
    FD1S3IX v_counter_25__i12 (.D(n82[12]), .CK(osc_clk), .CD(n55), .Q(v_counter[12]));
    defparam v_counter_25__i12.GSR = "DISABLED";
    FD1S3IX v_counter_25__i11 (.D(n82[11]), .CK(osc_clk), .CD(n55), .Q(v_counter[11]));
    defparam v_counter_25__i11.GSR = "DISABLED";
    FD1S3IX v_counter_25__i10 (.D(n82[10]), .CK(osc_clk), .CD(n55), .Q(v_counter[10]));
    defparam v_counter_25__i10.GSR = "DISABLED";
    FD1S3IX v_counter_25__i9 (.D(n82[9]), .CK(osc_clk), .CD(n55), .Q(v_counter[9]));
    defparam v_counter_25__i9.GSR = "DISABLED";
    FD1S3IX v_counter_25__i8 (.D(n82[8]), .CK(osc_clk), .CD(n55), .Q(v_counter[8]));
    defparam v_counter_25__i8.GSR = "DISABLED";
    FD1S3IX v_counter_25__i7 (.D(n82[7]), .CK(osc_clk), .CD(n55), .Q(v_counter[7]));
    defparam v_counter_25__i7.GSR = "DISABLED";
    FD1S3IX v_counter_25__i6 (.D(n82[6]), .CK(osc_clk), .CD(n55), .Q(v_counter[6]));
    defparam v_counter_25__i6.GSR = "DISABLED";
    FD1S3IX v_counter_25__i5 (.D(n82[5]), .CK(osc_clk), .CD(n55), .Q(v_counter[5]));
    defparam v_counter_25__i5.GSR = "DISABLED";
    FD1S3IX v_counter_25__i4 (.D(n82[4]), .CK(osc_clk), .CD(n55), .Q(v_counter[4]));
    defparam v_counter_25__i4.GSR = "DISABLED";
    FD1S3IX v_counter_25__i3 (.D(n82[3]), .CK(osc_clk), .CD(n55), .Q(v_counter[3]));
    defparam v_counter_25__i3.GSR = "DISABLED";
    FD1S3IX v_counter_25__i2 (.D(n82[2]), .CK(osc_clk), .CD(n55), .Q(v_counter[2]));
    defparam v_counter_25__i2.GSR = "DISABLED";
    FD1S3IX v_counter_25__i1 (.D(n82[1]), .CK(osc_clk), .CD(n55), .Q(v_counter[1]));
    defparam v_counter_25__i1.GSR = "DISABLED";
    
endmodule

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

