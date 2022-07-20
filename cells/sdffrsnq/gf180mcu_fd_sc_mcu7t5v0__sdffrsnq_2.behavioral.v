// Copyright 2022 GlobalFoundries PDK Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

module gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_2( SE, SI, D, CLK, SETN, RN, Q );
input CLK, D, RN, SE, SETN, SI;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_2_func gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_2_behav_inst(.SE(SE),.SI(SI),.D(D),.CLK(CLK),.SETN(SETN),.RN(RN),.Q(Q),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_2_func gf180mcu_fd_sc_mcu7t5v0__sdffrsnq_2_inst(.SE(SE),.SI(SI),.D(D),.CLK(CLK),.SETN(SETN),.RN(RN),.Q(Q),.notifier(notifier));

	// spec_gates_begin


	not MGM_G0(MGM_W0,D);


	and MGM_G1(MGM_W1,RN,MGM_W0);


	not MGM_G2(MGM_W2,SE);


	and MGM_G3(MGM_W3,MGM_W2,MGM_W1);


	and MGM_G4(MGM_W4,SETN,MGM_W3);


	not MGM_G5(MGM_W5,SI);


	and MGM_G6(ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W5,MGM_W4);


	not MGM_G7(MGM_W6,D);


	and MGM_G8(MGM_W7,RN,MGM_W6);


	not MGM_G9(MGM_W8,SE);


	and MGM_G10(MGM_W9,MGM_W8,MGM_W7);


	and MGM_G11(MGM_W10,SETN,MGM_W9);


	and MGM_G12(ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W10);


	not MGM_G13(MGM_W11,D);


	and MGM_G14(MGM_W12,RN,MGM_W11);


	and MGM_G15(MGM_W13,SE,MGM_W12);


	and MGM_G16(MGM_W14,SETN,MGM_W13);


	not MGM_G17(MGM_W15,SI);


	and MGM_G18(ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN_AND_NOT_SI,MGM_W15,MGM_W14);


	not MGM_G19(MGM_W16,D);


	and MGM_G20(MGM_W17,RN,MGM_W16);


	and MGM_G21(MGM_W18,SE,MGM_W17);


	and MGM_G22(MGM_W19,SETN,MGM_W18);


	and MGM_G23(ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN_AND_SI,SI,MGM_W19);


	and MGM_G24(MGM_W20,RN,D);


	not MGM_G25(MGM_W21,SE);


	and MGM_G26(MGM_W22,MGM_W21,MGM_W20);


	and MGM_G27(MGM_W23,SETN,MGM_W22);


	not MGM_G28(MGM_W24,SI);


	and MGM_G29(ENABLE_D_AND_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W24,MGM_W23);


	and MGM_G30(MGM_W25,RN,D);


	not MGM_G31(MGM_W26,SE);


	and MGM_G32(MGM_W27,MGM_W26,MGM_W25);


	and MGM_G33(MGM_W28,SETN,MGM_W27);


	and MGM_G34(ENABLE_D_AND_RN_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W28);


	and MGM_G35(MGM_W29,RN,D);


	and MGM_G36(MGM_W30,SE,MGM_W29);


	and MGM_G37(MGM_W31,SETN,MGM_W30);


	not MGM_G38(MGM_W32,SI);


	and MGM_G39(ENABLE_D_AND_RN_AND_SE_AND_SETN_AND_NOT_SI,MGM_W32,MGM_W31);


	and MGM_G40(MGM_W33,RN,D);


	and MGM_G41(MGM_W34,SE,MGM_W33);


	and MGM_G42(MGM_W35,SETN,MGM_W34);


	and MGM_G43(ENABLE_D_AND_RN_AND_SE_AND_SETN_AND_SI,SI,MGM_W35);


	not MGM_G44(MGM_W36,SE);


	and MGM_G45(MGM_W37,MGM_W36,RN);


	and MGM_G46(MGM_W38,SETN,MGM_W37);


	not MGM_G47(MGM_W39,SI);


	and MGM_G48(ENABLE_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W39,MGM_W38);


	not MGM_G49(MGM_W40,SE);


	and MGM_G50(MGM_W41,MGM_W40,RN);


	and MGM_G51(MGM_W42,SETN,MGM_W41);


	and MGM_G52(ENABLE_RN_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W42);


	not MGM_G53(MGM_W43,D);


	and MGM_G54(MGM_W44,SE,MGM_W43);


	and MGM_G55(MGM_W45,SETN,MGM_W44);


	and MGM_G56(ENABLE_NOT_D_AND_SE_AND_SETN_AND_SI,SI,MGM_W45);


	not MGM_G57(MGM_W46,SE);


	and MGM_G58(MGM_W47,MGM_W46,D);


	and MGM_G59(MGM_W48,SETN,MGM_W47);


	not MGM_G60(MGM_W49,SI);


	and MGM_G61(ENABLE_D_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W49,MGM_W48);


	not MGM_G62(MGM_W50,SE);


	and MGM_G63(MGM_W51,MGM_W50,D);


	and MGM_G64(MGM_W52,SETN,MGM_W51);


	and MGM_G65(ENABLE_D_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W52);


	and MGM_G66(MGM_W53,SE,D);


	and MGM_G67(MGM_W54,SETN,MGM_W53);


	and MGM_G68(ENABLE_D_AND_SE_AND_SETN_AND_SI,SI,MGM_W54);


	not MGM_G69(MGM_W55,CLK);


	not MGM_G70(MGM_W56,D);


	and MGM_G71(MGM_W57,MGM_W56,MGM_W55);


	not MGM_G72(MGM_W58,SE);


	and MGM_G73(MGM_W59,MGM_W58,MGM_W57);


	and MGM_G74(MGM_W60,SETN,MGM_W59);


	not MGM_G75(MGM_W61,SI);


	and MGM_G76(ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W61,MGM_W60);


	not MGM_G77(MGM_W62,CLK);


	not MGM_G78(MGM_W63,D);


	and MGM_G79(MGM_W64,MGM_W63,MGM_W62);


	not MGM_G80(MGM_W65,SE);


	and MGM_G81(MGM_W66,MGM_W65,MGM_W64);


	and MGM_G82(MGM_W67,SETN,MGM_W66);


	and MGM_G83(ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W67);


	not MGM_G84(MGM_W68,CLK);


	not MGM_G85(MGM_W69,D);


	and MGM_G86(MGM_W70,MGM_W69,MGM_W68);


	and MGM_G87(MGM_W71,SE,MGM_W70);


	and MGM_G88(MGM_W72,SETN,MGM_W71);


	not MGM_G89(MGM_W73,SI);


	and MGM_G90(ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SETN_AND_NOT_SI,MGM_W73,MGM_W72);


	not MGM_G91(MGM_W74,CLK);


	not MGM_G92(MGM_W75,D);


	and MGM_G93(MGM_W76,MGM_W75,MGM_W74);


	and MGM_G94(MGM_W77,SE,MGM_W76);


	and MGM_G95(MGM_W78,SETN,MGM_W77);


	and MGM_G96(ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SETN_AND_SI,SI,MGM_W78);


	not MGM_G97(MGM_W79,CLK);


	and MGM_G98(MGM_W80,D,MGM_W79);


	not MGM_G99(MGM_W81,SE);


	and MGM_G100(MGM_W82,MGM_W81,MGM_W80);


	and MGM_G101(MGM_W83,SETN,MGM_W82);


	not MGM_G102(MGM_W84,SI);


	and MGM_G103(ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W84,MGM_W83);


	not MGM_G104(MGM_W85,CLK);


	and MGM_G105(MGM_W86,D,MGM_W85);


	not MGM_G106(MGM_W87,SE);


	and MGM_G107(MGM_W88,MGM_W87,MGM_W86);


	and MGM_G108(MGM_W89,SETN,MGM_W88);


	and MGM_G109(ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W89);


	not MGM_G110(MGM_W90,CLK);


	and MGM_G111(MGM_W91,D,MGM_W90);


	and MGM_G112(MGM_W92,SE,MGM_W91);


	and MGM_G113(MGM_W93,SETN,MGM_W92);


	not MGM_G114(MGM_W94,SI);


	and MGM_G115(ENABLE_NOT_CLK_AND_D_AND_SE_AND_SETN_AND_NOT_SI,MGM_W94,MGM_W93);


	not MGM_G116(MGM_W95,CLK);


	and MGM_G117(MGM_W96,D,MGM_W95);


	and MGM_G118(MGM_W97,SE,MGM_W96);


	and MGM_G119(MGM_W98,SETN,MGM_W97);


	and MGM_G120(ENABLE_NOT_CLK_AND_D_AND_SE_AND_SETN_AND_SI,SI,MGM_W98);


	not MGM_G121(MGM_W99,D);


	and MGM_G122(MGM_W100,MGM_W99,CLK);


	not MGM_G123(MGM_W101,SE);


	and MGM_G124(MGM_W102,MGM_W101,MGM_W100);


	and MGM_G125(MGM_W103,SETN,MGM_W102);


	not MGM_G126(MGM_W104,SI);


	and MGM_G127(ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W104,MGM_W103);


	not MGM_G128(MGM_W105,D);


	and MGM_G129(MGM_W106,MGM_W105,CLK);


	not MGM_G130(MGM_W107,SE);


	and MGM_G131(MGM_W108,MGM_W107,MGM_W106);


	and MGM_G132(MGM_W109,SETN,MGM_W108);


	and MGM_G133(ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W109);


	not MGM_G134(MGM_W110,D);


	and MGM_G135(MGM_W111,MGM_W110,CLK);


	and MGM_G136(MGM_W112,SE,MGM_W111);


	and MGM_G137(MGM_W113,SETN,MGM_W112);


	not MGM_G138(MGM_W114,SI);


	and MGM_G139(ENABLE_CLK_AND_NOT_D_AND_SE_AND_SETN_AND_NOT_SI,MGM_W114,MGM_W113);


	not MGM_G140(MGM_W115,D);


	and MGM_G141(MGM_W116,MGM_W115,CLK);


	and MGM_G142(MGM_W117,SE,MGM_W116);


	and MGM_G143(MGM_W118,SETN,MGM_W117);


	and MGM_G144(ENABLE_CLK_AND_NOT_D_AND_SE_AND_SETN_AND_SI,SI,MGM_W118);


	and MGM_G145(MGM_W119,D,CLK);


	not MGM_G146(MGM_W120,SE);


	and MGM_G147(MGM_W121,MGM_W120,MGM_W119);


	and MGM_G148(MGM_W122,SETN,MGM_W121);


	not MGM_G149(MGM_W123,SI);


	and MGM_G150(ENABLE_CLK_AND_D_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W123,MGM_W122);


	and MGM_G151(MGM_W124,D,CLK);


	not MGM_G152(MGM_W125,SE);


	and MGM_G153(MGM_W126,MGM_W125,MGM_W124);


	and MGM_G154(MGM_W127,SETN,MGM_W126);


	and MGM_G155(ENABLE_CLK_AND_D_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W127);


	and MGM_G156(MGM_W128,D,CLK);


	and MGM_G157(MGM_W129,SE,MGM_W128);


	and MGM_G158(MGM_W130,SETN,MGM_W129);


	not MGM_G159(MGM_W131,SI);


	and MGM_G160(ENABLE_CLK_AND_D_AND_SE_AND_SETN_AND_NOT_SI,MGM_W131,MGM_W130);


	and MGM_G161(MGM_W132,D,CLK);


	and MGM_G162(MGM_W133,SE,MGM_W132);


	and MGM_G163(MGM_W134,SETN,MGM_W133);


	and MGM_G164(ENABLE_CLK_AND_D_AND_SE_AND_SETN_AND_SI,SI,MGM_W134);


	not MGM_G165(MGM_W135,CLK);


	not MGM_G166(MGM_W136,D);


	and MGM_G167(MGM_W137,MGM_W136,MGM_W135);


	not MGM_G168(MGM_W138,SE);


	and MGM_G169(MGM_W139,MGM_W138,MGM_W137);


	not MGM_G170(MGM_W140,SI);


	and MGM_G171(ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI,MGM_W140,MGM_W139);


	not MGM_G172(MGM_W141,CLK);


	not MGM_G173(MGM_W142,D);


	and MGM_G174(MGM_W143,MGM_W142,MGM_W141);


	not MGM_G175(MGM_W144,SE);


	and MGM_G176(MGM_W145,MGM_W144,MGM_W143);


	and MGM_G177(ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI,SI,MGM_W145);


	not MGM_G178(MGM_W146,CLK);


	not MGM_G179(MGM_W147,D);


	and MGM_G180(MGM_W148,MGM_W147,MGM_W146);


	and MGM_G181(MGM_W149,SE,MGM_W148);


	not MGM_G182(MGM_W150,SI);


	and MGM_G183(ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI,MGM_W150,MGM_W149);


	not MGM_G184(MGM_W151,CLK);


	not MGM_G185(MGM_W152,D);


	and MGM_G186(MGM_W153,MGM_W152,MGM_W151);


	and MGM_G187(MGM_W154,SE,MGM_W153);


	and MGM_G188(ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI,SI,MGM_W154);


	not MGM_G189(MGM_W155,CLK);


	and MGM_G190(MGM_W156,D,MGM_W155);


	not MGM_G191(MGM_W157,SE);


	and MGM_G192(MGM_W158,MGM_W157,MGM_W156);


	not MGM_G193(MGM_W159,SI);


	and MGM_G194(ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI,MGM_W159,MGM_W158);


	not MGM_G195(MGM_W160,CLK);


	and MGM_G196(MGM_W161,D,MGM_W160);


	not MGM_G197(MGM_W162,SE);


	and MGM_G198(MGM_W163,MGM_W162,MGM_W161);


	and MGM_G199(ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI,SI,MGM_W163);


	not MGM_G200(MGM_W164,CLK);


	and MGM_G201(MGM_W165,D,MGM_W164);


	and MGM_G202(MGM_W166,SE,MGM_W165);


	not MGM_G203(MGM_W167,SI);


	and MGM_G204(ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI,MGM_W167,MGM_W166);


	not MGM_G205(MGM_W168,CLK);


	and MGM_G206(MGM_W169,D,MGM_W168);


	and MGM_G207(MGM_W170,SE,MGM_W169);


	and MGM_G208(ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI,SI,MGM_W170);


	not MGM_G209(MGM_W171,D);


	and MGM_G210(MGM_W172,MGM_W171,CLK);


	not MGM_G211(MGM_W173,SE);


	and MGM_G212(MGM_W174,MGM_W173,MGM_W172);


	not MGM_G213(MGM_W175,SI);


	and MGM_G214(ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI,MGM_W175,MGM_W174);


	not MGM_G215(MGM_W176,D);


	and MGM_G216(MGM_W177,MGM_W176,CLK);


	not MGM_G217(MGM_W178,SE);


	and MGM_G218(MGM_W179,MGM_W178,MGM_W177);


	and MGM_G219(ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI,SI,MGM_W179);


	not MGM_G220(MGM_W180,D);


	and MGM_G221(MGM_W181,MGM_W180,CLK);


	and MGM_G222(MGM_W182,SE,MGM_W181);


	not MGM_G223(MGM_W183,SI);


	and MGM_G224(ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI,MGM_W183,MGM_W182);


	not MGM_G225(MGM_W184,D);


	and MGM_G226(MGM_W185,MGM_W184,CLK);


	and MGM_G227(MGM_W186,SE,MGM_W185);


	and MGM_G228(ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI,SI,MGM_W186);


	and MGM_G229(MGM_W187,D,CLK);


	not MGM_G230(MGM_W188,SE);


	and MGM_G231(MGM_W189,MGM_W188,MGM_W187);


	not MGM_G232(MGM_W190,SI);


	and MGM_G233(ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI,MGM_W190,MGM_W189);


	and MGM_G234(MGM_W191,D,CLK);


	not MGM_G235(MGM_W192,SE);


	and MGM_G236(MGM_W193,MGM_W192,MGM_W191);


	and MGM_G237(ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI,SI,MGM_W193);


	and MGM_G238(MGM_W194,D,CLK);


	and MGM_G239(MGM_W195,SE,MGM_W194);


	not MGM_G240(MGM_W196,SI);


	and MGM_G241(ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI,MGM_W196,MGM_W195);


	and MGM_G242(MGM_W197,D,CLK);


	and MGM_G243(MGM_W198,SE,MGM_W197);


	and MGM_G244(ENABLE_CLK_AND_D_AND_SE_AND_SI,SI,MGM_W198);


	not MGM_G245(MGM_W199,D);


	and MGM_G246(MGM_W200,RN,MGM_W199);


	and MGM_G247(MGM_W201,SETN,MGM_W200);


	and MGM_G248(ENABLE_NOT_D_AND_RN_AND_SETN_AND_SI,SI,MGM_W201);


	and MGM_G249(MGM_W202,RN,D);


	and MGM_G250(MGM_W203,SETN,MGM_W202);


	not MGM_G251(MGM_W204,SI);


	and MGM_G252(ENABLE_D_AND_RN_AND_SETN_AND_NOT_SI,MGM_W204,MGM_W203);


	not MGM_G253(MGM_W205,D);


	and MGM_G254(MGM_W206,RN,MGM_W205);


	not MGM_G255(MGM_W207,SE);


	and MGM_G256(MGM_W208,MGM_W207,MGM_W206);


	not MGM_G257(MGM_W209,SI);


	and MGM_G258(ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI,MGM_W209,MGM_W208);


	not MGM_G259(MGM_W210,D);


	and MGM_G260(MGM_W211,RN,MGM_W210);


	not MGM_G261(MGM_W212,SE);


	and MGM_G262(MGM_W213,MGM_W212,MGM_W211);


	and MGM_G263(ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SI,SI,MGM_W213);


	not MGM_G264(MGM_W214,D);


	and MGM_G265(MGM_W215,RN,MGM_W214);


	and MGM_G266(MGM_W216,SE,MGM_W215);


	not MGM_G267(MGM_W217,SI);


	and MGM_G268(ENABLE_NOT_D_AND_RN_AND_SE_AND_NOT_SI,MGM_W217,MGM_W216);


	and MGM_G269(MGM_W218,RN,D);


	and MGM_G270(MGM_W219,SE,MGM_W218);


	not MGM_G271(MGM_W220,SI);


	and MGM_G272(ENABLE_D_AND_RN_AND_SE_AND_NOT_SI,MGM_W220,MGM_W219);


	not MGM_G273(MGM_W221,CLK);


	not MGM_G274(MGM_W222,D);


	and MGM_G275(MGM_W223,MGM_W222,MGM_W221);


	and MGM_G276(MGM_W224,RN,MGM_W223);


	not MGM_G277(MGM_W225,SE);


	and MGM_G278(MGM_W226,MGM_W225,MGM_W224);


	not MGM_G279(MGM_W227,SI);


	and MGM_G280(ENABLE_NOT_CLK_AND_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI,MGM_W227,MGM_W226);


	not MGM_G281(MGM_W228,CLK);


	not MGM_G282(MGM_W229,D);


	and MGM_G283(MGM_W230,MGM_W229,MGM_W228);


	and MGM_G284(MGM_W231,RN,MGM_W230);


	not MGM_G285(MGM_W232,SE);


	and MGM_G286(MGM_W233,MGM_W232,MGM_W231);


	and MGM_G287(ENABLE_NOT_CLK_AND_NOT_D_AND_RN_AND_NOT_SE_AND_SI,SI,MGM_W233);


	not MGM_G288(MGM_W234,CLK);


	not MGM_G289(MGM_W235,D);


	and MGM_G290(MGM_W236,MGM_W235,MGM_W234);


	and MGM_G291(MGM_W237,RN,MGM_W236);


	and MGM_G292(MGM_W238,SE,MGM_W237);


	not MGM_G293(MGM_W239,SI);


	and MGM_G294(ENABLE_NOT_CLK_AND_NOT_D_AND_RN_AND_SE_AND_NOT_SI,MGM_W239,MGM_W238);


	not MGM_G295(MGM_W240,CLK);


	not MGM_G296(MGM_W241,D);


	and MGM_G297(MGM_W242,MGM_W241,MGM_W240);


	and MGM_G298(MGM_W243,RN,MGM_W242);


	and MGM_G299(MGM_W244,SE,MGM_W243);


	and MGM_G300(ENABLE_NOT_CLK_AND_NOT_D_AND_RN_AND_SE_AND_SI,SI,MGM_W244);


	not MGM_G301(MGM_W245,CLK);


	and MGM_G302(MGM_W246,D,MGM_W245);


	and MGM_G303(MGM_W247,RN,MGM_W246);


	not MGM_G304(MGM_W248,SE);


	and MGM_G305(MGM_W249,MGM_W248,MGM_W247);


	not MGM_G306(MGM_W250,SI);


	and MGM_G307(ENABLE_NOT_CLK_AND_D_AND_RN_AND_NOT_SE_AND_NOT_SI,MGM_W250,MGM_W249);


	not MGM_G308(MGM_W251,CLK);


	and MGM_G309(MGM_W252,D,MGM_W251);


	and MGM_G310(MGM_W253,RN,MGM_W252);


	not MGM_G311(MGM_W254,SE);


	and MGM_G312(MGM_W255,MGM_W254,MGM_W253);


	and MGM_G313(ENABLE_NOT_CLK_AND_D_AND_RN_AND_NOT_SE_AND_SI,SI,MGM_W255);


	not MGM_G314(MGM_W256,CLK);


	and MGM_G315(MGM_W257,D,MGM_W256);


	and MGM_G316(MGM_W258,RN,MGM_W257);


	and MGM_G317(MGM_W259,SE,MGM_W258);


	not MGM_G318(MGM_W260,SI);


	and MGM_G319(ENABLE_NOT_CLK_AND_D_AND_RN_AND_SE_AND_NOT_SI,MGM_W260,MGM_W259);


	not MGM_G320(MGM_W261,CLK);


	and MGM_G321(MGM_W262,D,MGM_W261);


	and MGM_G322(MGM_W263,RN,MGM_W262);


	and MGM_G323(MGM_W264,SE,MGM_W263);


	and MGM_G324(ENABLE_NOT_CLK_AND_D_AND_RN_AND_SE_AND_SI,SI,MGM_W264);


	not MGM_G325(MGM_W265,D);


	and MGM_G326(MGM_W266,MGM_W265,CLK);


	and MGM_G327(MGM_W267,RN,MGM_W266);


	not MGM_G328(MGM_W268,SE);


	and MGM_G329(MGM_W269,MGM_W268,MGM_W267);


	not MGM_G330(MGM_W270,SI);


	and MGM_G331(ENABLE_CLK_AND_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI,MGM_W270,MGM_W269);


	not MGM_G332(MGM_W271,D);


	and MGM_G333(MGM_W272,MGM_W271,CLK);


	and MGM_G334(MGM_W273,RN,MGM_W272);


	not MGM_G335(MGM_W274,SE);


	and MGM_G336(MGM_W275,MGM_W274,MGM_W273);


	and MGM_G337(ENABLE_CLK_AND_NOT_D_AND_RN_AND_NOT_SE_AND_SI,SI,MGM_W275);


	not MGM_G338(MGM_W276,D);


	and MGM_G339(MGM_W277,MGM_W276,CLK);


	and MGM_G340(MGM_W278,RN,MGM_W277);


	and MGM_G341(MGM_W279,SE,MGM_W278);


	not MGM_G342(MGM_W280,SI);


	and MGM_G343(ENABLE_CLK_AND_NOT_D_AND_RN_AND_SE_AND_NOT_SI,MGM_W280,MGM_W279);


	not MGM_G344(MGM_W281,D);


	and MGM_G345(MGM_W282,MGM_W281,CLK);


	and MGM_G346(MGM_W283,RN,MGM_W282);


	and MGM_G347(MGM_W284,SE,MGM_W283);


	and MGM_G348(ENABLE_CLK_AND_NOT_D_AND_RN_AND_SE_AND_SI,SI,MGM_W284);


	and MGM_G349(MGM_W285,D,CLK);


	and MGM_G350(MGM_W286,RN,MGM_W285);


	not MGM_G351(MGM_W287,SE);


	and MGM_G352(MGM_W288,MGM_W287,MGM_W286);


	not MGM_G353(MGM_W289,SI);


	and MGM_G354(ENABLE_CLK_AND_D_AND_RN_AND_NOT_SE_AND_NOT_SI,MGM_W289,MGM_W288);


	and MGM_G355(MGM_W290,D,CLK);


	and MGM_G356(MGM_W291,RN,MGM_W290);


	not MGM_G357(MGM_W292,SE);


	and MGM_G358(MGM_W293,MGM_W292,MGM_W291);


	and MGM_G359(ENABLE_CLK_AND_D_AND_RN_AND_NOT_SE_AND_SI,SI,MGM_W293);


	and MGM_G360(MGM_W294,D,CLK);


	and MGM_G361(MGM_W295,RN,MGM_W294);


	and MGM_G362(MGM_W296,SE,MGM_W295);


	not MGM_G363(MGM_W297,SI);


	and MGM_G364(ENABLE_CLK_AND_D_AND_RN_AND_SE_AND_NOT_SI,MGM_W297,MGM_W296);


	and MGM_G365(MGM_W298,D,CLK);


	and MGM_G366(MGM_W299,RN,MGM_W298);


	and MGM_G367(MGM_W300,SE,MGM_W299);


	and MGM_G368(ENABLE_CLK_AND_D_AND_RN_AND_SE_AND_SI,SI,MGM_W300);


	not MGM_G369(MGM_W301,D);


	and MGM_G370(MGM_W302,RN,MGM_W301);


	and MGM_G371(MGM_W303,SE,MGM_W302);


	and MGM_G372(ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN,SETN,MGM_W303);


	and MGM_G373(MGM_W304,RN,D);


	and MGM_G374(MGM_W305,SE,MGM_W304);


	and MGM_G375(ENABLE_D_AND_RN_AND_SE_AND_SETN,SETN,MGM_W305);


	// spec_gates_end



   specify

	// specify_block_begin

	if(D===1'b0 && SI===1'b1)
	// seq arc CLK --> Q
	(posedge CLK => (Q : SE))  = (1.0,1.0);

	if(SE===1'b0 && SI===1'b0)
	// seq arc CLK --> Q
	(posedge CLK => (Q : D))  = (1.0,1.0);

	if(D===1'b1 && SE===1'b0 && SI===1'b1 || D===1'b0 && SE===1'b1 && SI===1'b0)
	// seq arc CLK --> Q
	(posedge CLK => (Q : D))  = (1.0,1.0);

	if(D===1'b1 && SE===1'b1)
	// seq arc CLK --> Q
	(posedge CLK => (Q : SI))  = (1.0,1.0);

	ifnone
	// seq arc CLK --> Q
	(posedge CLK => (Q : D))  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b0 && SETN===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b0 && SETN===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b0 && SETN===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b0 && SETN===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b1 && SETN===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b1 && SETN===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b1 && SETN===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b1 && SETN===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b0 && SETN===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b0 && SETN===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b0 && SETN===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b0 && SETN===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b1 && SETN===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b1 && SETN===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b1 && SETN===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b1 && SETN===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b0 && SETN===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b0 && SETN===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b0 && SETN===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b0 && SETN===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b1 && SETN===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b1 && SETN===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b1 && SETN===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b1 && SETN===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b0 && SETN===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b0 && SETN===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b0 && SETN===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b0 && SETN===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b1 && SETN===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b1 && SETN===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b1 && SETN===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b1 && SETN===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	ifnone
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	ifnone
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	// hold D-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		negedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold D-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		posedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup D-HL CLK-LH
	$setup(negedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup D-LH CLK-LH
	$setup(posedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold D-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),
		negedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// hold D-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),
		posedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// setup D-HL CLK-LH
	$setup(negedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// setup D-LH CLK-LH
	$setup(posedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// recovery RN-LH CLK-LH
	$recovery(posedge RN &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// removal RN-LH CLK-LH
	$removal(posedge RN &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// recovery RN-LH CLK-LH
	$recovery(posedge RN &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// removal RN-LH CLK-LH
	$removal(posedge RN &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// recovery RN-LH CLK-LH
	$recovery(posedge RN &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// removal RN-LH CLK-LH
	$removal(posedge RN &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// recovery RN-LH CLK-LH
	$recovery(posedge RN &&& (ENABLE_D_AND_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// removal RN-LH CLK-LH
	$removal(posedge RN &&& (ENABLE_D_AND_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// hold SE-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SETN_AND_SI === 1'b1),
		negedge SE &&& (ENABLE_NOT_D_AND_RN_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// hold SE-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SETN_AND_SI === 1'b1),
		posedge SE &&& (ENABLE_NOT_D_AND_RN_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// setup SE-HL CLK-LH
	$setup(negedge SE &&& (ENABLE_NOT_D_AND_RN_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// setup SE-LH CLK-LH
	$setup(posedge SE &&& (ENABLE_NOT_D_AND_RN_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// hold SE-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_RN_AND_SETN_AND_NOT_SI === 1'b1),
		negedge SE &&& (ENABLE_D_AND_RN_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SE-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_RN_AND_SETN_AND_NOT_SI === 1'b1),
		posedge SE &&& (ENABLE_D_AND_RN_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SE-HL CLK-LH
	$setup(negedge SE &&& (ENABLE_D_AND_RN_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SE-LH CLK-LH
	$setup(posedge SE &&& (ENABLE_D_AND_RN_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// recovery SETN-LH CLK-LH
	$recovery(posedge SETN &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// removal SETN-LH CLK-LH
	$removal(posedge SETN &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// recovery SETN-LH CLK-LH
	$recovery(posedge SETN &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// removal SETN-LH CLK-LH
	$removal(posedge SETN &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// recovery SETN-LH CLK-LH
	$recovery(posedge SETN &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// removal SETN-LH CLK-LH
	$removal(posedge SETN &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// recovery SETN-LH CLK-LH
	$recovery(posedge SETN &&& (ENABLE_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// removal SETN-LH CLK-LH
	$removal(posedge SETN &&& (ENABLE_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1),
		posedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1),
		posedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	// hold SI-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN === 1'b1),
		negedge SI &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// hold SI-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN === 1'b1),
		posedge SI &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// setup SI-HL CLK-LH
	$setup(negedge SI &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// setup SI-LH CLK-LH
	$setup(posedge SI &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// hold SI-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN === 1'b1),
		negedge SI &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// hold SI-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN === 1'b1),
		posedge SI &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// setup SI-HL CLK-LH
	$setup(negedge SI &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// setup SI-LH CLK-LH
	$setup(posedge SI &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// mpw CLK_lh
	$width(posedge CLK,1.0,0,notifier);

	// mpw CLK_hl
	$width(negedge CLK,1.0,0,notifier);

	// mpw RN_hl
	$width(negedge RN,1.0,0,notifier);

	// mpw SETN_hl
	$width(negedge SETN,1.0,0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK,1.0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
