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

module gf180mcu_fd_sc_mcu7t5v0__sdffsnq_4( SE, SI, D, CLK, SETN, Q );
input CLK, D, SE, SETN, SI;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__sdffsnq_4_func gf180mcu_fd_sc_mcu7t5v0__sdffsnq_4_behav_inst(.SE(SE),.SI(SI),.D(D),.CLK(CLK),.SETN(SETN),.Q(Q),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__sdffsnq_4_func gf180mcu_fd_sc_mcu7t5v0__sdffsnq_4_inst(.SE(SE),.SI(SI),.D(D),.CLK(CLK),.SETN(SETN),.Q(Q),.notifier(notifier));

	// spec_gates_begin


	not MGM_G0(MGM_W0,D);


	not MGM_G1(MGM_W1,SE);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	and MGM_G3(MGM_W3,SETN,MGM_W2);


	not MGM_G4(MGM_W4,SI);


	and MGM_G5(ENABLE_NOT_D_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W4,MGM_W3);


	not MGM_G6(MGM_W5,D);


	not MGM_G7(MGM_W6,SE);


	and MGM_G8(MGM_W7,MGM_W6,MGM_W5);


	and MGM_G9(MGM_W8,SETN,MGM_W7);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W8);


	not MGM_G11(MGM_W9,D);


	and MGM_G12(MGM_W10,SE,MGM_W9);


	and MGM_G13(MGM_W11,SETN,MGM_W10);


	not MGM_G14(MGM_W12,SI);


	and MGM_G15(ENABLE_NOT_D_AND_SE_AND_SETN_AND_NOT_SI,MGM_W12,MGM_W11);


	not MGM_G16(MGM_W13,D);


	and MGM_G17(MGM_W14,SE,MGM_W13);


	and MGM_G18(MGM_W15,SETN,MGM_W14);


	and MGM_G19(ENABLE_NOT_D_AND_SE_AND_SETN_AND_SI,SI,MGM_W15);


	not MGM_G20(MGM_W16,SE);


	and MGM_G21(MGM_W17,MGM_W16,D);


	and MGM_G22(MGM_W18,SETN,MGM_W17);


	not MGM_G23(MGM_W19,SI);


	and MGM_G24(ENABLE_D_AND_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W19,MGM_W18);


	not MGM_G25(MGM_W20,SE);


	and MGM_G26(MGM_W21,MGM_W20,D);


	and MGM_G27(MGM_W22,SETN,MGM_W21);


	and MGM_G28(ENABLE_D_AND_NOT_SE_AND_SETN_AND_SI,SI,MGM_W22);


	and MGM_G29(MGM_W23,SE,D);


	and MGM_G30(MGM_W24,SETN,MGM_W23);


	not MGM_G31(MGM_W25,SI);


	and MGM_G32(ENABLE_D_AND_SE_AND_SETN_AND_NOT_SI,MGM_W25,MGM_W24);


	and MGM_G33(MGM_W26,SE,D);


	and MGM_G34(MGM_W27,SETN,MGM_W26);


	and MGM_G35(ENABLE_D_AND_SE_AND_SETN_AND_SI,SI,MGM_W27);


	not MGM_G36(MGM_W28,SE);


	and MGM_G37(MGM_W29,SETN,MGM_W28);


	not MGM_G38(MGM_W30,SI);


	and MGM_G39(ENABLE_NOT_SE_AND_SETN_AND_NOT_SI,MGM_W30,MGM_W29);


	not MGM_G40(MGM_W31,SE);


	and MGM_G41(MGM_W32,SETN,MGM_W31);


	and MGM_G42(ENABLE_NOT_SE_AND_SETN_AND_SI,SI,MGM_W32);


	not MGM_G43(MGM_W33,D);


	and MGM_G44(MGM_W34,SETN,MGM_W33);


	and MGM_G45(ENABLE_NOT_D_AND_SETN_AND_SI,SI,MGM_W34);


	and MGM_G46(MGM_W35,SETN,D);


	not MGM_G47(MGM_W36,SI);


	and MGM_G48(ENABLE_D_AND_SETN_AND_NOT_SI,MGM_W36,MGM_W35);


	not MGM_G49(MGM_W37,D);


	not MGM_G50(MGM_W38,SE);


	and MGM_G51(MGM_W39,MGM_W38,MGM_W37);


	not MGM_G52(MGM_W40,SI);


	and MGM_G53(ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI,MGM_W40,MGM_W39);


	not MGM_G54(MGM_W41,D);


	not MGM_G55(MGM_W42,SE);


	and MGM_G56(MGM_W43,MGM_W42,MGM_W41);


	and MGM_G57(ENABLE_NOT_D_AND_NOT_SE_AND_SI,SI,MGM_W43);


	not MGM_G58(MGM_W44,D);


	and MGM_G59(MGM_W45,SE,MGM_W44);


	not MGM_G60(MGM_W46,SI);


	and MGM_G61(ENABLE_NOT_D_AND_SE_AND_NOT_SI,MGM_W46,MGM_W45);


	and MGM_G62(MGM_W47,SE,D);


	not MGM_G63(MGM_W48,SI);


	and MGM_G64(ENABLE_D_AND_SE_AND_NOT_SI,MGM_W48,MGM_W47);


	not MGM_G65(MGM_W49,CLK);


	not MGM_G66(MGM_W50,D);


	and MGM_G67(MGM_W51,MGM_W50,MGM_W49);


	not MGM_G68(MGM_W52,SE);


	and MGM_G69(MGM_W53,MGM_W52,MGM_W51);


	not MGM_G70(MGM_W54,SI);


	and MGM_G71(ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI,MGM_W54,MGM_W53);


	not MGM_G72(MGM_W55,CLK);


	not MGM_G73(MGM_W56,D);


	and MGM_G74(MGM_W57,MGM_W56,MGM_W55);


	not MGM_G75(MGM_W58,SE);


	and MGM_G76(MGM_W59,MGM_W58,MGM_W57);


	and MGM_G77(ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI,SI,MGM_W59);


	not MGM_G78(MGM_W60,CLK);


	not MGM_G79(MGM_W61,D);


	and MGM_G80(MGM_W62,MGM_W61,MGM_W60);


	and MGM_G81(MGM_W63,SE,MGM_W62);


	not MGM_G82(MGM_W64,SI);


	and MGM_G83(ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI,MGM_W64,MGM_W63);


	not MGM_G84(MGM_W65,CLK);


	not MGM_G85(MGM_W66,D);


	and MGM_G86(MGM_W67,MGM_W66,MGM_W65);


	and MGM_G87(MGM_W68,SE,MGM_W67);


	and MGM_G88(ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI,SI,MGM_W68);


	not MGM_G89(MGM_W69,CLK);


	and MGM_G90(MGM_W70,D,MGM_W69);


	not MGM_G91(MGM_W71,SE);


	and MGM_G92(MGM_W72,MGM_W71,MGM_W70);


	not MGM_G93(MGM_W73,SI);


	and MGM_G94(ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI,MGM_W73,MGM_W72);


	not MGM_G95(MGM_W74,CLK);


	and MGM_G96(MGM_W75,D,MGM_W74);


	not MGM_G97(MGM_W76,SE);


	and MGM_G98(MGM_W77,MGM_W76,MGM_W75);


	and MGM_G99(ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI,SI,MGM_W77);


	not MGM_G100(MGM_W78,CLK);


	and MGM_G101(MGM_W79,D,MGM_W78);


	and MGM_G102(MGM_W80,SE,MGM_W79);


	not MGM_G103(MGM_W81,SI);


	and MGM_G104(ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI,MGM_W81,MGM_W80);


	not MGM_G105(MGM_W82,CLK);


	and MGM_G106(MGM_W83,D,MGM_W82);


	and MGM_G107(MGM_W84,SE,MGM_W83);


	and MGM_G108(ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI,SI,MGM_W84);


	not MGM_G109(MGM_W85,D);


	and MGM_G110(MGM_W86,MGM_W85,CLK);


	not MGM_G111(MGM_W87,SE);


	and MGM_G112(MGM_W88,MGM_W87,MGM_W86);


	not MGM_G113(MGM_W89,SI);


	and MGM_G114(ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI,MGM_W89,MGM_W88);


	not MGM_G115(MGM_W90,D);


	and MGM_G116(MGM_W91,MGM_W90,CLK);


	not MGM_G117(MGM_W92,SE);


	and MGM_G118(MGM_W93,MGM_W92,MGM_W91);


	and MGM_G119(ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI,SI,MGM_W93);


	not MGM_G120(MGM_W94,D);


	and MGM_G121(MGM_W95,MGM_W94,CLK);


	and MGM_G122(MGM_W96,SE,MGM_W95);


	not MGM_G123(MGM_W97,SI);


	and MGM_G124(ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI,MGM_W97,MGM_W96);


	not MGM_G125(MGM_W98,D);


	and MGM_G126(MGM_W99,MGM_W98,CLK);


	and MGM_G127(MGM_W100,SE,MGM_W99);


	and MGM_G128(ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI,SI,MGM_W100);


	and MGM_G129(MGM_W101,D,CLK);


	not MGM_G130(MGM_W102,SE);


	and MGM_G131(MGM_W103,MGM_W102,MGM_W101);


	not MGM_G132(MGM_W104,SI);


	and MGM_G133(ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI,MGM_W104,MGM_W103);


	and MGM_G134(MGM_W105,D,CLK);


	not MGM_G135(MGM_W106,SE);


	and MGM_G136(MGM_W107,MGM_W106,MGM_W105);


	and MGM_G137(ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI,SI,MGM_W107);


	and MGM_G138(MGM_W108,D,CLK);


	and MGM_G139(MGM_W109,SE,MGM_W108);


	not MGM_G140(MGM_W110,SI);


	and MGM_G141(ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI,MGM_W110,MGM_W109);


	and MGM_G142(MGM_W111,D,CLK);


	and MGM_G143(MGM_W112,SE,MGM_W111);


	and MGM_G144(ENABLE_CLK_AND_D_AND_SE_AND_SI,SI,MGM_W112);


	not MGM_G145(MGM_W113,D);


	and MGM_G146(MGM_W114,SE,MGM_W113);


	and MGM_G147(ENABLE_NOT_D_AND_SE_AND_SETN,SETN,MGM_W114);


	and MGM_G148(MGM_W115,SE,D);


	and MGM_G149(ENABLE_D_AND_SE_AND_SETN,SETN,MGM_W115);


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

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,0,notifier);

	// hold D-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		negedge D &&& (ENABLE_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold D-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		posedge D &&& (ENABLE_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup D-HL CLK-LH
	$setup(negedge D &&& (ENABLE_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup D-LH CLK-LH
	$setup(posedge D &&& (ENABLE_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold D-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_SE_AND_SETN_AND_SI === 1'b1),
		negedge D &&& (ENABLE_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// hold D-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_SE_AND_SETN_AND_SI === 1'b1),
		posedge D &&& (ENABLE_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// setup D-HL CLK-LH
	$setup(negedge D &&& (ENABLE_NOT_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// setup D-LH CLK-LH
	$setup(posedge D &&& (ENABLE_NOT_SE_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_SE_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// hold SE-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_SETN_AND_SI === 1'b1),
		negedge SE &&& (ENABLE_NOT_D_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// hold SE-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_SETN_AND_SI === 1'b1),
		posedge SE &&& (ENABLE_NOT_D_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// setup SE-HL CLK-LH
	$setup(negedge SE &&& (ENABLE_NOT_D_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// setup SE-LH CLK-LH
	$setup(posedge SE &&& (ENABLE_NOT_D_AND_SETN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SETN_AND_SI === 1'b1),1.0,notifier);

	// hold SE-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_SETN_AND_NOT_SI === 1'b1),
		negedge SE &&& (ENABLE_D_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SE-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_SETN_AND_NOT_SI === 1'b1),
		posedge SE &&& (ENABLE_D_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SE-HL CLK-LH
	$setup(negedge SE &&& (ENABLE_D_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SE-LH CLK-LH
	$setup(posedge SE &&& (ENABLE_D_AND_SETN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SETN_AND_NOT_SI === 1'b1),1.0,notifier);

	// recovery SETN-LH CLK-LH
	$recovery(posedge SETN &&& (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// removal SETN-LH CLK-LH
	$removal(posedge SETN &&& (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// recovery SETN-LH CLK-LH
	$recovery(posedge SETN &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// removal SETN-LH CLK-LH
	$removal(posedge SETN &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// recovery SETN-LH CLK-LH
	$recovery(posedge SETN &&& (ENABLE_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// removal SETN-LH CLK-LH
	$removal(posedge SETN &&& (ENABLE_NOT_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// recovery SETN-LH CLK-LH
	$recovery(posedge SETN &&& (ENABLE_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// removal SETN-LH CLK-LH
	$removal(posedge SETN &&& (ENABLE_D_AND_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	// hold SI-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN === 1'b1),
		negedge SI &&& (ENABLE_NOT_D_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// hold SI-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN === 1'b1),
		posedge SI &&& (ENABLE_NOT_D_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// setup SI-HL CLK-LH
	$setup(negedge SI &&& (ENABLE_NOT_D_AND_SE_AND_SETN === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// setup SI-LH CLK-LH
	$setup(posedge SI &&& (ENABLE_NOT_D_AND_SE_AND_SETN === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// hold SI-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN === 1'b1),
		negedge SI &&& (ENABLE_D_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// hold SI-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN === 1'b1),
		posedge SI &&& (ENABLE_D_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// setup SI-HL CLK-LH
	$setup(negedge SI &&& (ENABLE_D_AND_SE_AND_SETN === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// setup SI-LH CLK-LH
	$setup(posedge SI &&& (ENABLE_D_AND_SE_AND_SETN === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN === 1'b1),1.0,notifier);

	// mpw CLK_lh
	$width(posedge CLK,1.0,0,notifier);

	// mpw CLK_hl
	$width(negedge CLK,1.0,0,notifier);

	// mpw SETN_hl
	$width(negedge SETN,1.0,0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_SE_AND_SETN_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK,1.0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
