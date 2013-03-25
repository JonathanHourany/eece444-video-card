// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Mon Mar 25 01:33:07 2013

//
// Verilog Description of module Top
//

module Top (RESET, H_SYNC, V_SYNC, RED) /* synthesis syn_module_defined=1 */ ;   // c:/users/fox/programming/eece444-video-card/top.v(9[8:11])
    input RESET;   // c:/users/fox/programming/eece444-video-card/top.v(10[9:14])
    output H_SYNC;   // c:/users/fox/programming/eece444-video-card/top.v(11[14:20])
    output V_SYNC;   // c:/users/fox/programming/eece444-video-card/top.v(12[14:20])
    output RED;   // c:/users/fox/programming/eece444-video-card/top.v(13[14:17])
    
    wire RESET_c;   // c:/users/fox/programming/eece444-video-card/top.v(10[9:14])
    wire V_SYNC_c;   // c:/users/fox/programming/eece444-video-card/top.v(12[14:20])
    wire clk;   // c:/users/fox/programming/eece444-video-card/top.v(17[7:10])
    wire GND_net;   // c:/users/fox/programming/eece444-video-card/ctrllines.v(15[16:25])
    wire VCC_net;   // c:/users/fox/programming/eece444-video-card/top.v(13[14:17])
    
    VLO i1 (.Z(GND_net));
    OSCC oscc_0 (.OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    OB H_SYNC_pad (.I(GND_net), .O(H_SYNC));
    GSR GSR_INST (.GSR(RESET_c));
    CtrlLines CONTROLLINES (.GND_net(GND_net), .clk(clk), .V_SYNC_c(V_SYNC_c), 
            .RESET_c(RESET_c)) /* synthesis syn_module_defined=1 */ ;
    OB V_SYNC_pad (.I(V_SYNC_c), .O(V_SYNC));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB RED_pad (.I(VCC_net), .O(RED));
    IB RESET_pad (.I(RESET), .O(RESET_c));
    VHI i313 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module CtrlLines
//

module CtrlLines (GND_net, clk, V_SYNC_c, RESET_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk;
    output V_SYNC_c;
    input RESET_c;
    
    wire [18:0]v_counter;   // c:/users/fox/programming/eece444-video-card/ctrllines.v(16[16:25])
    
    wire n266, n263, n10, n9, n289, n269, n254;
    wire [18:0]n82;
    
    wire n255, n256, n292, n300, n258, n259, n262, n261, n12, 
        n92, n286, n186, n260, n257, n96, n44;
    
    ORCALUT4 i3_4_lut (.A(n266), .B(v_counter[12]), .C(v_counter[13]), 
            .D(v_counter[14]), .Z(n263)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    ORCALUT4 i4_4_lut (.A(v_counter[2]), .B(v_counter[1]), .C(v_counter[0]), 
            .D(v_counter[4]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    ORCALUT4 i3_2_lut (.A(v_counter[5]), .B(v_counter[3]), .Z(n9)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    ORCALUT4 i1_4_lut (.A(n9), .B(n289), .C(v_counter[6]), .D(n10), 
            .Z(n269)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    CCU2 v_counter_13_add_4_4 (.A0(v_counter[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n254), .COUT1(n255), .S0(n82[2]), .S1(n82[3]));
    defparam v_counter_13_add_4_4.INIT0 = 16'hfaaa;
    defparam v_counter_13_add_4_4.INIT1 = 16'hfaaa;
    defparam v_counter_13_add_4_4.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_4.INJECT1_1 = "NO";
    CCU2 v_counter_13_add_4_6 (.A0(v_counter[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n255), .COUT1(n256), .S0(n82[4]), .S1(n82[5]));
    defparam v_counter_13_add_4_6.INIT0 = 16'hfaaa;
    defparam v_counter_13_add_4_6.INIT1 = 16'hfaaa;
    defparam v_counter_13_add_4_6.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 i291_4_lut (.A(v_counter[18]), .B(n263), .C(v_counter[17]), 
            .D(n292), .Z(n300)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i291_4_lut.init = 16'hfaea;
    ORCALUT4 i1_2_lut (.A(v_counter[16]), .B(v_counter[15]), .Z(n292)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_adj_1 (.A(v_counter[7]), .B(v_counter[8]), .Z(n289)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'heeee;
    CCU2 v_counter_13_add_4_12 (.A0(v_counter[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n258), .COUT1(n259), .S0(n82[10]), .S1(n82[11]));
    defparam v_counter_13_add_4_12.INIT0 = 16'hfaaa;
    defparam v_counter_13_add_4_12.INIT1 = 16'hfaaa;
    defparam v_counter_13_add_4_12.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_12.INJECT1_1 = "NO";
    CCU2 v_counter_13_add_4_20 (.A0(v_counter[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n262), .S0(n82[18]));
    defparam v_counter_13_add_4_20.INIT0 = 16'hfaaa;
    defparam v_counter_13_add_4_20.INIT1 = 16'h0000;
    defparam v_counter_13_add_4_20.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_20.INJECT1_1 = "NO";
    CCU2 v_counter_13_add_4_18 (.A0(v_counter[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[17]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n261), .COUT1(n262), .S0(n82[16]), .S1(n82[17]));
    defparam v_counter_13_add_4_18.INIT0 = 16'hfaaa;
    defparam v_counter_13_add_4_18.INIT1 = 16'hfaaa;
    defparam v_counter_13_add_4_18.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_18.INJECT1_1 = "NO";
    ORCALUT4 i5_4_lut (.A(v_counter[17]), .B(v_counter[13]), .C(v_counter[12]), 
            .D(v_counter[11]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    ORCALUT4 i6_4_lut (.A(n292), .B(n12), .C(v_counter[18]), .D(v_counter[14]), 
            .Z(n92)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_2 (.A(v_counter[9]), .B(v_counter[10]), .Z(n286)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'h8888;
    ORCALUT4 i185_4_lut (.A(v_counter[6]), .B(n92), .C(n286), .D(n289), 
            .Z(n186)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i185_4_lut.init = 16'hfcec;
    CCU2 v_counter_13_add_4_16 (.A0(v_counter[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[15]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n260), .COUT1(n261), .S0(n82[14]), .S1(n82[15]));
    defparam v_counter_13_add_4_16.INIT0 = 16'hfaaa;
    defparam v_counter_13_add_4_16.INIT1 = 16'hfaaa;
    defparam v_counter_13_add_4_16.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_16.INJECT1_1 = "NO";
    CCU2 v_counter_13_add_4_10 (.A0(v_counter[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n257), .COUT1(n258), .S0(n82[8]), .S1(n82[9]));
    defparam v_counter_13_add_4_10.INIT0 = 16'hfaaa;
    defparam v_counter_13_add_4_10.INIT1 = 16'hfaaa;
    defparam v_counter_13_add_4_10.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_10.INJECT1_1 = "NO";
    CCU2 v_counter_13_add_4_14 (.A0(v_counter[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n259), .COUT1(n260), .S0(n82[12]), .S1(n82[13]));
    defparam v_counter_13_add_4_14.INIT0 = 16'hfaaa;
    defparam v_counter_13_add_4_14.INIT1 = 16'hfaaa;
    defparam v_counter_13_add_4_14.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_14.INJECT1_1 = "NO";
    FD1S3AX v_counter_13__i18 (.D(n82[18]), .CK(clk), .Q(v_counter[18]));
    defparam v_counter_13__i18.GSR = "ENABLED";
    ORCALUT4 i2_3_lut (.A(v_counter[11]), .B(v_counter[9]), .C(v_counter[10]), 
            .Z(n266)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    FD1P3AX V_SYNC_30 (.D(n186), .SP(n96), .CK(clk), .Q(V_SYNC_c));
    defparam V_SYNC_30.GSR = "DISABLED";
    CCU2 v_counter_13_add_4_8 (.A0(v_counter[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n256), .COUT1(n257), .S0(n82[6]), .S1(n82[7]));
    defparam v_counter_13_add_4_8.INIT0 = 16'hfaaa;
    defparam v_counter_13_add_4_8.INIT1 = 16'hfaaa;
    defparam v_counter_13_add_4_8.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_3 (.A(n269), .B(n92), .C(v_counter[9]), .D(v_counter[10]), 
            .Z(n44)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_3.init = 16'heccc;
    ORCALUT4 i1_4_lut_adj_4 (.A(RESET_c), .B(n186), .C(n44), .D(n300), 
            .Z(n96)) /* synthesis lut_function=(!((B ((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_4.init = 16'h22a2;
    FD1S3AX v_counter_13__i17 (.D(n82[17]), .CK(clk), .Q(v_counter[17]));
    defparam v_counter_13__i17.GSR = "ENABLED";
    FD1S3AX v_counter_13__i16 (.D(n82[16]), .CK(clk), .Q(v_counter[16]));
    defparam v_counter_13__i16.GSR = "ENABLED";
    FD1S3AX v_counter_13__i15 (.D(n82[15]), .CK(clk), .Q(v_counter[15]));
    defparam v_counter_13__i15.GSR = "ENABLED";
    FD1S3AX v_counter_13__i14 (.D(n82[14]), .CK(clk), .Q(v_counter[14]));
    defparam v_counter_13__i14.GSR = "ENABLED";
    FD1S3AX v_counter_13__i13 (.D(n82[13]), .CK(clk), .Q(v_counter[13]));
    defparam v_counter_13__i13.GSR = "ENABLED";
    FD1S3AX v_counter_13__i12 (.D(n82[12]), .CK(clk), .Q(v_counter[12]));
    defparam v_counter_13__i12.GSR = "ENABLED";
    FD1S3AX v_counter_13__i11 (.D(n82[11]), .CK(clk), .Q(v_counter[11]));
    defparam v_counter_13__i11.GSR = "ENABLED";
    FD1S3AX v_counter_13__i10 (.D(n82[10]), .CK(clk), .Q(v_counter[10]));
    defparam v_counter_13__i10.GSR = "ENABLED";
    FD1S3AX v_counter_13__i9 (.D(n82[9]), .CK(clk), .Q(v_counter[9]));
    defparam v_counter_13__i9.GSR = "ENABLED";
    FD1S3AX v_counter_13__i8 (.D(n82[8]), .CK(clk), .Q(v_counter[8]));
    defparam v_counter_13__i8.GSR = "ENABLED";
    FD1S3AX v_counter_13__i7 (.D(n82[7]), .CK(clk), .Q(v_counter[7]));
    defparam v_counter_13__i7.GSR = "ENABLED";
    FD1S3AX v_counter_13__i6 (.D(n82[6]), .CK(clk), .Q(v_counter[6]));
    defparam v_counter_13__i6.GSR = "ENABLED";
    FD1S3AX v_counter_13__i5 (.D(n82[5]), .CK(clk), .Q(v_counter[5]));
    defparam v_counter_13__i5.GSR = "ENABLED";
    FD1S3AX v_counter_13__i4 (.D(n82[4]), .CK(clk), .Q(v_counter[4]));
    defparam v_counter_13__i4.GSR = "ENABLED";
    FD1S3AX v_counter_13__i3 (.D(n82[3]), .CK(clk), .Q(v_counter[3]));
    defparam v_counter_13__i3.GSR = "ENABLED";
    FD1S3AX v_counter_13__i2 (.D(n82[2]), .CK(clk), .Q(v_counter[2]));
    defparam v_counter_13__i2.GSR = "ENABLED";
    FD1S3AX v_counter_13__i1 (.D(n82[1]), .CK(clk), .Q(v_counter[1]));
    defparam v_counter_13__i1.GSR = "ENABLED";
    FD1S3AX v_counter_13__i0 (.D(n82[0]), .CK(clk), .Q(v_counter[0]));
    defparam v_counter_13__i0.GSR = "ENABLED";
    CCU2 v_counter_13_add_4_2 (.A0(v_counter[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(v_counter[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n254), .S0(n82[0]), .S1(n82[1]));
    defparam v_counter_13_add_4_2.INIT0 = 16'h0555;
    defparam v_counter_13_add_4_2.INIT1 = 16'hfaaa;
    defparam v_counter_13_add_4_2.INJECT1_0 = "NO";
    defparam v_counter_13_add_4_2.INJECT1_1 = "NO";
    
endmodule

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

