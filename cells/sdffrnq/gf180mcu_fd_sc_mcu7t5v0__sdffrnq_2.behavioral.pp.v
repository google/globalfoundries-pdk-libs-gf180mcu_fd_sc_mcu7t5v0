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

module gf180mcu_fd_sc_mcu7t5v0__sdffrnq_2( SE, SI, D, CLK, RN, Q, VDD, VSS );
input CLK, D, RN, SE, SI;
inout VDD, VSS;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__sdffrnq_2_func gf180mcu_fd_sc_mcu7t5v0__sdffrnq_2_behav_inst(.SE(SE),.SI(SI),.D(D),.CLK(CLK),.RN(RN),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__sdffrnq_2_func gf180mcu_fd_sc_mcu7t5v0__sdffrnq_2_inst(.SE(SE),.SI(SI),.D(D),.CLK(CLK),.RN(RN),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

	// spec_gates_begin


	not MGM_G0(MGM_W0,D);


	and MGM_G1(MGM_W1,RN,MGM_W0);


	not MGM_G2(MGM_W2,SE);


	and MGM_G3(MGM_W3,MGM_W2,MGM_W1);


	not MGM_G4(MGM_W4,SI);


	and MGM_G5(ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI,MGM_W4,MGM_W3);


	not MGM_G6(MGM_W5,D);


	and MGM_G7(MGM_W6,RN,MGM_W5);


	not MGM_G8(MGM_W7,SE);


	and MGM_G9(MGM_W8,MGM_W7,MGM_W6);


	and MGM_G10(ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SI,SI,MGM_W8);


	not MGM_G11(MGM_W9,D);


	and MGM_G12(MGM_W10,RN,MGM_W9);


	and MGM_G13(MGM_W11,SE,MGM_W10);


	not MGM_G14(MGM_W12,SI);


	and MGM_G15(ENABLE_NOT_D_AND_RN_AND_SE_AND_NOT_SI,MGM_W12,MGM_W11);


	not MGM_G16(MGM_W13,D);


	and MGM_G17(MGM_W14,RN,MGM_W13);


	and MGM_G18(MGM_W15,SE,MGM_W14);


	and MGM_G19(ENABLE_NOT_D_AND_RN_AND_SE_AND_SI,SI,MGM_W15);


	and MGM_G20(MGM_W16,RN,D);


	not MGM_G21(MGM_W17,SE);


	and MGM_G22(MGM_W18,MGM_W17,MGM_W16);


	not MGM_G23(MGM_W19,SI);


	and MGM_G24(ENABLE_D_AND_RN_AND_NOT_SE_AND_NOT_SI,MGM_W19,MGM_W18);


	and MGM_G25(MGM_W20,RN,D);


	not MGM_G26(MGM_W21,SE);


	and MGM_G27(MGM_W22,MGM_W21,MGM_W20);


	and MGM_G28(ENABLE_D_AND_RN_AND_NOT_SE_AND_SI,SI,MGM_W22);


	and MGM_G29(MGM_W23,RN,D);


	and MGM_G30(MGM_W24,SE,MGM_W23);


	not MGM_G31(MGM_W25,SI);


	and MGM_G32(ENABLE_D_AND_RN_AND_SE_AND_NOT_SI,MGM_W25,MGM_W24);


	and MGM_G33(MGM_W26,RN,D);


	and MGM_G34(MGM_W27,SE,MGM_W26);


	and MGM_G35(ENABLE_D_AND_RN_AND_SE_AND_SI,SI,MGM_W27);


	not MGM_G36(MGM_W28,SE);


	and MGM_G37(MGM_W29,MGM_W28,RN);


	not MGM_G38(MGM_W30,SI);


	and MGM_G39(ENABLE_RN_AND_NOT_SE_AND_NOT_SI,MGM_W30,MGM_W29);


	not MGM_G40(MGM_W31,SE);


	and MGM_G41(MGM_W32,MGM_W31,RN);


	and MGM_G42(ENABLE_RN_AND_NOT_SE_AND_SI,SI,MGM_W32);


	not MGM_G43(MGM_W33,D);


	and MGM_G44(MGM_W34,SE,MGM_W33);


	and MGM_G45(ENABLE_NOT_D_AND_SE_AND_SI,SI,MGM_W34);


	not MGM_G46(MGM_W35,SE);


	and MGM_G47(MGM_W36,MGM_W35,D);


	not MGM_G48(MGM_W37,SI);


	and MGM_G49(ENABLE_D_AND_NOT_SE_AND_NOT_SI,MGM_W37,MGM_W36);


	not MGM_G50(MGM_W38,SE);


	and MGM_G51(MGM_W39,MGM_W38,D);


	and MGM_G52(ENABLE_D_AND_NOT_SE_AND_SI,SI,MGM_W39);


	and MGM_G53(MGM_W40,SE,D);


	and MGM_G54(ENABLE_D_AND_SE_AND_SI,SI,MGM_W40);


	not MGM_G55(MGM_W41,CLK);


	not MGM_G56(MGM_W42,D);


	and MGM_G57(MGM_W43,MGM_W42,MGM_W41);


	not MGM_G58(MGM_W44,SE);


	and MGM_G59(MGM_W45,MGM_W44,MGM_W43);


	not MGM_G60(MGM_W46,SI);


	and MGM_G61(ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI,MGM_W46,MGM_W45);


	not MGM_G62(MGM_W47,CLK);


	not MGM_G63(MGM_W48,D);


	and MGM_G64(MGM_W49,MGM_W48,MGM_W47);


	not MGM_G65(MGM_W50,SE);


	and MGM_G66(MGM_W51,MGM_W50,MGM_W49);


	and MGM_G67(ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI,SI,MGM_W51);


	not MGM_G68(MGM_W52,CLK);


	not MGM_G69(MGM_W53,D);


	and MGM_G70(MGM_W54,MGM_W53,MGM_W52);


	and MGM_G71(MGM_W55,SE,MGM_W54);


	not MGM_G72(MGM_W56,SI);


	and MGM_G73(ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI,MGM_W56,MGM_W55);


	not MGM_G74(MGM_W57,CLK);


	not MGM_G75(MGM_W58,D);


	and MGM_G76(MGM_W59,MGM_W58,MGM_W57);


	and MGM_G77(MGM_W60,SE,MGM_W59);


	and MGM_G78(ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI,SI,MGM_W60);


	not MGM_G79(MGM_W61,CLK);


	and MGM_G80(MGM_W62,D,MGM_W61);


	not MGM_G81(MGM_W63,SE);


	and MGM_G82(MGM_W64,MGM_W63,MGM_W62);


	not MGM_G83(MGM_W65,SI);


	and MGM_G84(ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI,MGM_W65,MGM_W64);


	not MGM_G85(MGM_W66,CLK);


	and MGM_G86(MGM_W67,D,MGM_W66);


	not MGM_G87(MGM_W68,SE);


	and MGM_G88(MGM_W69,MGM_W68,MGM_W67);


	and MGM_G89(ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI,SI,MGM_W69);


	not MGM_G90(MGM_W70,CLK);


	and MGM_G91(MGM_W71,D,MGM_W70);


	and MGM_G92(MGM_W72,SE,MGM_W71);


	not MGM_G93(MGM_W73,SI);


	and MGM_G94(ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI,MGM_W73,MGM_W72);


	not MGM_G95(MGM_W74,CLK);


	and MGM_G96(MGM_W75,D,MGM_W74);


	and MGM_G97(MGM_W76,SE,MGM_W75);


	and MGM_G98(ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI,SI,MGM_W76);


	not MGM_G99(MGM_W77,D);


	and MGM_G100(MGM_W78,MGM_W77,CLK);


	not MGM_G101(MGM_W79,SE);


	and MGM_G102(MGM_W80,MGM_W79,MGM_W78);


	not MGM_G103(MGM_W81,SI);


	and MGM_G104(ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI,MGM_W81,MGM_W80);


	not MGM_G105(MGM_W82,D);


	and MGM_G106(MGM_W83,MGM_W82,CLK);


	not MGM_G107(MGM_W84,SE);


	and MGM_G108(MGM_W85,MGM_W84,MGM_W83);


	and MGM_G109(ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI,SI,MGM_W85);


	not MGM_G110(MGM_W86,D);


	and MGM_G111(MGM_W87,MGM_W86,CLK);


	and MGM_G112(MGM_W88,SE,MGM_W87);


	not MGM_G113(MGM_W89,SI);


	and MGM_G114(ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI,MGM_W89,MGM_W88);


	not MGM_G115(MGM_W90,D);


	and MGM_G116(MGM_W91,MGM_W90,CLK);


	and MGM_G117(MGM_W92,SE,MGM_W91);


	and MGM_G118(ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI,SI,MGM_W92);


	and MGM_G119(MGM_W93,D,CLK);


	not MGM_G120(MGM_W94,SE);


	and MGM_G121(MGM_W95,MGM_W94,MGM_W93);


	not MGM_G122(MGM_W96,SI);


	and MGM_G123(ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI,MGM_W96,MGM_W95);


	and MGM_G124(MGM_W97,D,CLK);


	not MGM_G125(MGM_W98,SE);


	and MGM_G126(MGM_W99,MGM_W98,MGM_W97);


	and MGM_G127(ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI,SI,MGM_W99);


	and MGM_G128(MGM_W100,D,CLK);


	and MGM_G129(MGM_W101,SE,MGM_W100);


	not MGM_G130(MGM_W102,SI);


	and MGM_G131(ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI,MGM_W102,MGM_W101);


	and MGM_G132(MGM_W103,D,CLK);


	and MGM_G133(MGM_W104,SE,MGM_W103);


	and MGM_G134(ENABLE_CLK_AND_D_AND_SE_AND_SI,SI,MGM_W104);


	not MGM_G135(MGM_W105,D);


	and MGM_G136(MGM_W106,RN,MGM_W105);


	and MGM_G137(ENABLE_NOT_D_AND_RN_AND_SI,SI,MGM_W106);


	and MGM_G138(MGM_W107,RN,D);


	not MGM_G139(MGM_W108,SI);


	and MGM_G140(ENABLE_D_AND_RN_AND_NOT_SI,MGM_W108,MGM_W107);


	not MGM_G141(MGM_W109,D);


	and MGM_G142(MGM_W110,RN,MGM_W109);


	and MGM_G143(ENABLE_NOT_D_AND_RN_AND_SE,SE,MGM_W110);


	and MGM_G144(MGM_W111,RN,D);


	and MGM_G145(ENABLE_D_AND_RN_AND_SE,SE,MGM_W111);


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
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	ifnone
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	// hold D-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),
		negedge D &&& (ENABLE_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold D-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge D &&& (ENABLE_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup D-HL CLK-LH
	$setup(negedge D &&& (ENABLE_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup D-LH CLK-LH
	$setup(posedge D &&& (ENABLE_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold D-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SI === 1'b1),
		negedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold D-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SI === 1'b1),
		posedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup D-HL CLK-LH
	$setup(negedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup D-LH CLK-LH
	$setup(posedge D &&& (ENABLE_RN_AND_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_RN_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// recovery RN-LH CLK-LH
	$recovery(posedge RN &&& (ENABLE_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// removal RN-LH CLK-LH
	$removal(posedge RN &&& (ENABLE_NOT_D_AND_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// recovery RN-LH CLK-LH
	$recovery(posedge RN &&& (ENABLE_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// removal RN-LH CLK-LH
	$removal(posedge RN &&& (ENABLE_D_AND_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// recovery RN-LH CLK-LH
	$recovery(posedge RN &&& (ENABLE_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// removal RN-LH CLK-LH
	$removal(posedge RN &&& (ENABLE_D_AND_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// recovery RN-LH CLK-LH
	$recovery(posedge RN &&& (ENABLE_D_AND_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	// removal RN-LH CLK-LH
	$removal(posedge RN &&& (ENABLE_D_AND_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE_AND_SI === 1'b1),1.0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_CLK_AND_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_NOT_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_CLK_AND_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	// hold SE-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SI === 1'b1),
		negedge SE &&& (ENABLE_NOT_D_AND_RN_AND_SI === 1'b1),1.0,notifier);

	// hold SE-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SI === 1'b1),
		posedge SE &&& (ENABLE_NOT_D_AND_RN_AND_SI === 1'b1),1.0,notifier);

	// setup SE-HL CLK-LH
	$setup(negedge SE &&& (ENABLE_NOT_D_AND_RN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SI === 1'b1),1.0,notifier);

	// setup SE-LH CLK-LH
	$setup(posedge SE &&& (ENABLE_NOT_D_AND_RN_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SI === 1'b1),1.0,notifier);

	// hold SE-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SI === 1'b1),
		negedge SE &&& (ENABLE_D_AND_RN_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SE-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SI === 1'b1),
		posedge SE &&& (ENABLE_D_AND_RN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SE-HL CLK-LH
	$setup(negedge SE &&& (ENABLE_D_AND_RN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SE-LH CLK-LH
	$setup(posedge SE &&& (ENABLE_D_AND_RN_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SI-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE === 1'b1),
		negedge SI &&& (ENABLE_NOT_D_AND_RN_AND_SE === 1'b1),1.0,notifier);

	// hold SI-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE === 1'b1),
		posedge SI &&& (ENABLE_NOT_D_AND_RN_AND_SE === 1'b1),1.0,notifier);

	// setup SI-HL CLK-LH
	$setup(negedge SI &&& (ENABLE_NOT_D_AND_RN_AND_SE === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE === 1'b1),1.0,notifier);

	// setup SI-LH CLK-LH
	$setup(posedge SI &&& (ENABLE_NOT_D_AND_RN_AND_SE === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE === 1'b1),1.0,notifier);

	// hold SI-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE === 1'b1),
		negedge SI &&& (ENABLE_D_AND_RN_AND_SE === 1'b1),1.0,notifier);

	// hold SI-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE === 1'b1),
		posedge SI &&& (ENABLE_D_AND_RN_AND_SE === 1'b1),1.0,notifier);

	// setup SI-HL CLK-LH
	$setup(negedge SI &&& (ENABLE_D_AND_RN_AND_SE === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_SE === 1'b1),1.0,notifier);

	// setup SI-LH CLK-LH
	$setup(posedge SI &&& (ENABLE_D_AND_RN_AND_SE === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_RN_AND_SE === 1'b1),1.0,notifier);

	// mpw CLK_lh
	$width(posedge CLK,1.0,0,notifier);

	// mpw CLK_hl
	$width(negedge CLK,1.0,0,notifier);

	// mpw RN_hl
	$width(negedge RN,1.0,0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_RN_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_RN_AND_SE_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK,1.0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
