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

module gf180mcu_fd_sc_mcu7t5v0__sdffq_4( SE, SI, D, CLK, Q, VDD, VSS );
input CLK, D, SE, SI;
inout VDD, VSS;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__sdffq_4_func gf180mcu_fd_sc_mcu7t5v0__sdffq_4_behav_inst(.SE(SE),.SI(SI),.D(D),.CLK(CLK),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__sdffq_4_func gf180mcu_fd_sc_mcu7t5v0__sdffq_4_inst(.SE(SE),.SI(SI),.D(D),.CLK(CLK),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

	// spec_gates_begin


	not MGM_G0(MGM_W0,D);


	not MGM_G1(MGM_W1,SE);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,SI);


	and MGM_G4(ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D);


	not MGM_G6(MGM_W5,SE);


	and MGM_G7(MGM_W6,MGM_W5,MGM_W4);


	and MGM_G8(ENABLE_NOT_D_AND_NOT_SE_AND_SI,SI,MGM_W6);


	not MGM_G9(MGM_W7,D);


	and MGM_G10(MGM_W8,SE,MGM_W7);


	not MGM_G11(MGM_W9,SI);


	and MGM_G12(ENABLE_NOT_D_AND_SE_AND_NOT_SI,MGM_W9,MGM_W8);


	not MGM_G13(MGM_W10,D);


	and MGM_G14(MGM_W11,SE,MGM_W10);


	and MGM_G15(ENABLE_NOT_D_AND_SE_AND_SI,SI,MGM_W11);


	not MGM_G16(MGM_W12,SE);


	and MGM_G17(MGM_W13,MGM_W12,D);


	not MGM_G18(MGM_W14,SI);


	and MGM_G19(ENABLE_D_AND_NOT_SE_AND_NOT_SI,MGM_W14,MGM_W13);


	not MGM_G20(MGM_W15,SE);


	and MGM_G21(MGM_W16,MGM_W15,D);


	and MGM_G22(ENABLE_D_AND_NOT_SE_AND_SI,SI,MGM_W16);


	and MGM_G23(MGM_W17,SE,D);


	not MGM_G24(MGM_W18,SI);


	and MGM_G25(ENABLE_D_AND_SE_AND_NOT_SI,MGM_W18,MGM_W17);


	and MGM_G26(MGM_W19,SE,D);


	and MGM_G27(ENABLE_D_AND_SE_AND_SI,SI,MGM_W19);


	not MGM_G28(MGM_W20,SE);


	not MGM_G29(MGM_W21,SI);


	and MGM_G30(ENABLE_NOT_SE_AND_NOT_SI,MGM_W21,MGM_W20);


	not MGM_G31(MGM_W22,SE);


	and MGM_G32(ENABLE_NOT_SE_AND_SI,SI,MGM_W22);


	not MGM_G33(MGM_W23,D);


	and MGM_G34(ENABLE_NOT_D_AND_SI,SI,MGM_W23);


	not MGM_G35(MGM_W24,SI);


	and MGM_G36(ENABLE_D_AND_NOT_SI,MGM_W24,D);


	not MGM_G37(MGM_W25,D);


	and MGM_G38(ENABLE_NOT_D_AND_SE,SE,MGM_W25);


	and MGM_G39(ENABLE_D_AND_SE,SE,D);


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

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_SE_AND_SI === 1'b1)
		,1.0,0,notifier);

	// hold D-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_SE_AND_NOT_SI === 1'b1),
		negedge D &&& (ENABLE_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold D-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_SE_AND_NOT_SI === 1'b1),
		posedge D &&& (ENABLE_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup D-HL CLK-LH
	$setup(negedge D &&& (ENABLE_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup D-LH CLK-LH
	$setup(posedge D &&& (ENABLE_NOT_SE_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_SE_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold D-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_SE_AND_SI === 1'b1),
		negedge D &&& (ENABLE_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold D-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_SE_AND_SI === 1'b1),
		posedge D &&& (ENABLE_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup D-HL CLK-LH
	$setup(negedge D &&& (ENABLE_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// setup D-LH CLK-LH
	$setup(posedge D &&& (ENABLE_NOT_SE_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_SE_AND_SI === 1'b1),1.0,notifier);

	// hold SE-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_SI === 1'b1),
		negedge SE &&& (ENABLE_NOT_D_AND_SI === 1'b1),1.0,notifier);

	// hold SE-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_SI === 1'b1),
		posedge SE &&& (ENABLE_NOT_D_AND_SI === 1'b1),1.0,notifier);

	// setup SE-HL CLK-LH
	$setup(negedge SE &&& (ENABLE_NOT_D_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SI === 1'b1),1.0,notifier);

	// setup SE-LH CLK-LH
	$setup(posedge SE &&& (ENABLE_NOT_D_AND_SI === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SI === 1'b1),1.0,notifier);

	// hold SE-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_NOT_SI === 1'b1),
		negedge SE &&& (ENABLE_D_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SE-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_NOT_SI === 1'b1),
		posedge SE &&& (ENABLE_D_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SE-HL CLK-LH
	$setup(negedge SE &&& (ENABLE_D_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SI === 1'b1),1.0,notifier);

	// setup SE-LH CLK-LH
	$setup(posedge SE &&& (ENABLE_D_AND_NOT_SI === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_NOT_SI === 1'b1),1.0,notifier);

	// hold SI-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_SE === 1'b1),
		negedge SI &&& (ENABLE_NOT_D_AND_SE === 1'b1),1.0,notifier);

	// hold SI-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_NOT_D_AND_SE === 1'b1),
		posedge SI &&& (ENABLE_NOT_D_AND_SE === 1'b1),1.0,notifier);

	// setup SI-HL CLK-LH
	$setup(negedge SI &&& (ENABLE_NOT_D_AND_SE === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE === 1'b1),1.0,notifier);

	// setup SI-LH CLK-LH
	$setup(posedge SI &&& (ENABLE_NOT_D_AND_SE === 1'b1),
		posedge CLK &&& (ENABLE_NOT_D_AND_SE === 1'b1),1.0,notifier);

	// hold SI-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_SE === 1'b1),
		negedge SI &&& (ENABLE_D_AND_SE === 1'b1),1.0,notifier);

	// hold SI-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_D_AND_SE === 1'b1),
		posedge SI &&& (ENABLE_D_AND_SE === 1'b1),1.0,notifier);

	// setup SI-HL CLK-LH
	$setup(negedge SI &&& (ENABLE_D_AND_SE === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE === 1'b1),1.0,notifier);

	// setup SI-LH CLK-LH
	$setup(posedge SI &&& (ENABLE_D_AND_SE === 1'b1),
		posedge CLK &&& (ENABLE_D_AND_SE === 1'b1),1.0,notifier);

	// mpw CLK_lh
	$width(posedge CLK,1.0,0,notifier);

	// mpw CLK_hl
	$width(negedge CLK,1.0,0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_SE_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_NOT_SE_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_SE_AND_NOT_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_SE_AND_SI === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK,1.0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
