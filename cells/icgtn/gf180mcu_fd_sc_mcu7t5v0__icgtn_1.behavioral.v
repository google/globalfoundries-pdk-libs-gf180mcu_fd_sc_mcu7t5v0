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

module gf180mcu_fd_sc_mcu7t5v0__icgtn_1( TE, E, CLKN, Q );
input CLKN, E, TE;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__icgtn_1_func gf180mcu_fd_sc_mcu7t5v0__icgtn_1_behav_inst(.TE(TE),.E(E),.CLKN(CLKN),.Q(Q),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__icgtn_1_func gf180mcu_fd_sc_mcu7t5v0__icgtn_1_inst(.TE(TE),.E(E),.CLKN(CLKN),.Q(Q),.notifier(notifier));

	// spec_gates_begin


	not MGM_G0(MGM_W0,E);


	not MGM_G1(MGM_W1,TE);


	and MGM_G2(ENABLE_NOT_E_AND_NOT_TE,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W2,E);


	and MGM_G4(ENABLE_NOT_E_AND_TE,TE,MGM_W2);


	not MGM_G5(MGM_W3,TE);


	and MGM_G6(ENABLE_E_AND_NOT_TE,MGM_W3,E);


	and MGM_G7(ENABLE_E_AND_TE,TE,E);


	// spec_gates_end



   specify

	// specify_block_begin

	if(E===1'b0 && TE===1'b1)
	// comb arc CLKN --> Q
	 (CLKN => Q) = (1.0,1.0);

	if(E===1'b1 && TE===1'b0)
	// comb arc CLKN --> Q
	 (CLKN => Q) = (1.0,1.0);

	if(E===1'b1 && TE===1'b1)
	// comb arc CLKN --> Q
	 (CLKN => Q) = (1.0,1.0);

	ifnone
	// comb arc CLKN --> Q
	 (CLKN => Q) = (1.0,1.0);

	if(E===1'b0 && TE===1'b0)
	// comb arc CLKN --> Q
	 (CLKN => Q) = (1.0,1.0);

	$width(posedge CLKN &&& (ENABLE_NOT_E_AND_NOT_TE === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLKN &&& (ENABLE_NOT_E_AND_TE === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLKN &&& (ENABLE_E_AND_NOT_TE === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLKN &&& (ENABLE_E_AND_TE === 1'b1)
		,1.0,0,notifier);

	// hold E-HL CLKN-HL
	$hold(negedge CLKN,negedge E,1.0,notifier);

	// hold E-LH CLKN-HL
	$hold(negedge CLKN,posedge E,1.0,notifier);

	// setup E-HL CLKN-HL
	$setup(negedge E,negedge CLKN,1.0,notifier);

	// setup E-LH CLKN-HL
	$setup(posedge E,negedge CLKN,1.0,notifier);

	// hold TE-HL CLKN-HL
	$hold(negedge CLKN,negedge TE,1.0,notifier);

	// hold TE-LH CLKN-HL
	$hold(negedge CLKN,posedge TE,1.0,notifier);

	// setup TE-HL CLKN-HL
	$setup(negedge TE,negedge CLKN,1.0,notifier);

	// setup TE-LH CLKN-HL
	$setup(posedge TE,negedge CLKN,1.0,notifier);

	// mpw CLKN_lh
	$width(posedge CLKN,1.0,0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
