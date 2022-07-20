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

module gf180mcu_fd_sc_mcu7t5v0__latrnq_1( E, D, RN, Q, VDD, VSS );
input D, E, RN;
inout VDD, VSS;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__latrnq_1_func gf180mcu_fd_sc_mcu7t5v0__latrnq_1_behav_inst(.E(E),.D(D),.RN(RN),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__latrnq_1_func gf180mcu_fd_sc_mcu7t5v0__latrnq_1_inst(.E(E),.D(D),.RN(RN),.Q(Q),.VDD(VDD),.VSS(VSS),.notifier(notifier));

	// spec_gates_begin


	buf MGM_G0(ENABLE_RN,RN);


	not MGM_G1(MGM_W0,D);


	and MGM_G2(ENABLE_NOT_D_AND_RN,RN,MGM_W0);


	and MGM_G3(ENABLE_D_AND_RN,RN,D);


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

	// hold D-HL E-HL
	$hold(negedge E &&& (ENABLE_RN === 1'b1),
		negedge D &&& (ENABLE_RN === 1'b1),1.0,notifier);

	// hold D-LH E-HL
	$hold(negedge E &&& (ENABLE_RN === 1'b1),
		posedge D &&& (ENABLE_RN === 1'b1),1.0,notifier);

	// setup D-HL E-HL
	$setup(negedge D &&& (ENABLE_RN === 1'b1),
		negedge E &&& (ENABLE_RN === 1'b1),1.0,notifier);

	// setup D-LH E-HL
	$setup(posedge D &&& (ENABLE_RN === 1'b1),
		negedge E &&& (ENABLE_RN === 1'b1),1.0,notifier);

	$width(posedge E &&& (ENABLE_NOT_D_AND_RN === 1'b1)
		,1.0,0,notifier);

	$width(posedge E &&& (ENABLE_D_AND_RN === 1'b1)
		,1.0,0,notifier);

	// recovery RN-LH E-HL
	$recovery(posedge RN,negedge E,1.0,notifier);

	// removal RN-LH E-HL
	$removal(posedge RN,negedge E,1.0,notifier);

	$width(negedge RN &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RN &&& (ENABLE_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	// mpw E_lh
	$width(posedge E,1.0,0,notifier);

	// mpw RN_hl
	$width(negedge RN,1.0,0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
