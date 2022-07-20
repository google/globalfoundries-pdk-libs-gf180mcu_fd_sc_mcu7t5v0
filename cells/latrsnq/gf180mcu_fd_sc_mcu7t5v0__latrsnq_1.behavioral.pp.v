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

module gf180mcu_fd_sc_mcu7t5v0__latrsnq_1( E, D, RN, SETN, Q, VDD, VSS );
input D, E, RN, SETN;
inout VDD, VSS;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__latrsnq_1_func gf180mcu_fd_sc_mcu7t5v0__latrsnq_1_behav_inst(.E(E),.D(D),.RN(RN),.SETN(SETN),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__latrsnq_1_func gf180mcu_fd_sc_mcu7t5v0__latrsnq_1_inst(.E(E),.D(D),.RN(RN),.SETN(SETN),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

	// spec_gates_begin


	and MGM_G0(ENABLE_RN_AND_SETN,SETN,RN);


	not MGM_G1(MGM_W0,D);


	and MGM_G2(MGM_W1,RN,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RN_AND_SETN,SETN,MGM_W1);


	and MGM_G4(MGM_W2,RN,D);


	and MGM_G5(ENABLE_D_AND_RN_AND_SETN,SETN,MGM_W2);


	buf MGM_G6(ENABLE_SETN,SETN);


	not MGM_G7(MGM_W3,D);


	not MGM_G8(MGM_W4,E);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_E_AND_SETN,SETN,MGM_W5);


	not MGM_G11(MGM_W6,E);


	and MGM_G12(MGM_W7,MGM_W6,D);


	and MGM_G13(ENABLE_D_AND_NOT_E_AND_SETN,SETN,MGM_W7);


	not MGM_G14(MGM_W8,D);


	not MGM_G15(MGM_W9,E);


	and MGM_G16(ENABLE_NOT_D_AND_NOT_E,MGM_W9,MGM_W8);


	not MGM_G17(MGM_W10,E);


	and MGM_G18(ENABLE_D_AND_NOT_E,MGM_W10,D);


	buf MGM_G19(ENABLE_RN,RN);


	not MGM_G20(MGM_W11,D);


	not MGM_G21(MGM_W12,E);


	and MGM_G22(MGM_W13,MGM_W12,MGM_W11);


	and MGM_G23(ENABLE_NOT_D_AND_NOT_E_AND_RN,RN,MGM_W13);


	not MGM_G24(MGM_W14,E);


	and MGM_G25(MGM_W15,MGM_W14,D);


	and MGM_G26(ENABLE_D_AND_NOT_E_AND_RN,RN,MGM_W15);


	// spec_gates_end



   specify

	// specify_block_begin

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && E===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(D===1'b1 && E===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(D===1'b1 && E===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	ifnone
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(D===1'b0 && E===1'b0 && RN===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(D===1'b0 && E===1'b1 && RN===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(D===1'b0 && E===1'b1 && RN===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(D===1'b1 && E===1'b0 && RN===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(D===1'b1 && E===1'b1 && RN===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	ifnone
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(D===1'b0 && E===1'b0 && RN===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(D===1'b1 && E===1'b0 && RN===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	// hold D-HL E-HL
	$hold(negedge E &&& (ENABLE_RN_AND_SETN === 1'b1),
		negedge D &&& (ENABLE_RN_AND_SETN === 1'b1),1.0,notifier);

	// hold D-LH E-HL
	$hold(negedge E &&& (ENABLE_RN_AND_SETN === 1'b1),
		posedge D &&& (ENABLE_RN_AND_SETN === 1'b1),1.0,notifier);

	// setup D-HL E-HL
	$setup(negedge D &&& (ENABLE_RN_AND_SETN === 1'b1),
		negedge E &&& (ENABLE_RN_AND_SETN === 1'b1),1.0,notifier);

	// setup D-LH E-HL
	$setup(posedge D &&& (ENABLE_RN_AND_SETN === 1'b1),
		negedge E &&& (ENABLE_RN_AND_SETN === 1'b1),1.0,notifier);

	$width(posedge E &&& (ENABLE_NOT_D_AND_RN_AND_SETN === 1'b1)
		,1.0,0,notifier);

	$width(posedge E &&& (ENABLE_D_AND_RN_AND_SETN === 1'b1)
		,1.0,0,notifier);

	// recovery RN-LH E-HL
	$recovery(posedge RN &&& (ENABLE_SETN === 1'b1),
		negedge E &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	// removal RN-LH E-HL
	$removal(posedge RN &&& (ENABLE_SETN === 1'b1),
		negedge E &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_D_AND_NOT_E_AND_SETN === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_D_AND_NOT_E_AND_SETN === 1'b1)
		,1.0,0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge SETN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),1.0,notifier);

	// hold RN-LH SETN-LH
	$hold(posedge SETN &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RN &&& (ENABLE_D_AND_NOT_E === 1'b1),1.0,notifier);

	// setup RN-LH SETN-LH
	$setup(posedge RN &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge SETN &&& (ENABLE_D_AND_NOT_E === 1'b1),1.0,notifier);

	// recovery SETN-LH E-HL
	$recovery(posedge SETN &&& (ENABLE_RN === 1'b1),
		negedge E &&& (ENABLE_RN === 1'b1),1.0,notifier);

	// removal SETN-LH E-HL
	$removal(posedge SETN &&& (ENABLE_RN === 1'b1),
		negedge E &&& (ENABLE_RN === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge SETN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),1.0,notifier);

	// hold SETN-LH RN-LH
	$hold(posedge RN &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge SETN &&& (ENABLE_D_AND_NOT_E === 1'b1),1.0,notifier);

	// setup SETN-LH RN-LH
	$setup(posedge SETN &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RN &&& (ENABLE_D_AND_NOT_E === 1'b1),1.0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_D_AND_NOT_E_AND_RN === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_D_AND_NOT_E_AND_RN === 1'b1)
		,1.0,0,notifier);

	// mpw E_lh
	$width(posedge E,1.0,0,notifier);

	// mpw RN_hl
	$width(negedge RN,1.0,0,notifier);

	// mpw SETN_hl
	$width(negedge SETN,1.0,0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
