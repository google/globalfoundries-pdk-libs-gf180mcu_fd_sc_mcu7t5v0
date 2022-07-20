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

module gf180mcu_fd_sc_mcu7t5v0__latsnq_4( E, D, SETN, Q, VDD, VSS );
input D, E, SETN;
inout VDD, VSS;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__latsnq_4_func gf180mcu_fd_sc_mcu7t5v0__latsnq_4_behav_inst(.E(E),.D(D),.SETN(SETN),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__latsnq_4_func gf180mcu_fd_sc_mcu7t5v0__latsnq_4_inst(.E(E),.D(D),.SETN(SETN),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

	// spec_gates_begin


	buf MGM_G0(ENABLE_SETN,SETN);


	not MGM_G1(MGM_W0,D);


	and MGM_G2(ENABLE_NOT_D_AND_SETN,SETN,MGM_W0);


	and MGM_G3(ENABLE_D_AND_SETN,SETN,D);


	not MGM_G4(MGM_W1,D);


	not MGM_G5(MGM_W2,E);


	and MGM_G6(ENABLE_NOT_D_AND_NOT_E,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,E);


	and MGM_G8(ENABLE_D_AND_NOT_E,MGM_W3,D);


	// spec_gates_end



   specify

	// specify_block_begin

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && E===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(D===1'b0 && E===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(D===1'b1 && E===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	ifnone
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	// hold D-HL E-HL
	$hold(negedge E &&& (ENABLE_SETN === 1'b1),
		negedge D &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	// hold D-LH E-HL
	$hold(negedge E &&& (ENABLE_SETN === 1'b1),
		posedge D &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	// setup D-HL E-HL
	$setup(negedge D &&& (ENABLE_SETN === 1'b1),
		negedge E &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	// setup D-LH E-HL
	$setup(posedge D &&& (ENABLE_SETN === 1'b1),
		negedge E &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	$width(posedge E &&& (ENABLE_NOT_D_AND_SETN === 1'b1)
		,1.0,0,notifier);

	$width(posedge E &&& (ENABLE_D_AND_SETN === 1'b1)
		,1.0,0,notifier);

	// recovery SETN-LH E-HL
	$recovery(posedge SETN,negedge E,1.0,notifier);

	// removal SETN-LH E-HL
	$removal(posedge SETN,negedge E,1.0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	// mpw E_lh
	$width(posedge E,1.0,0,notifier);

	// mpw SETN_hl
	$width(negedge SETN,1.0,0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
