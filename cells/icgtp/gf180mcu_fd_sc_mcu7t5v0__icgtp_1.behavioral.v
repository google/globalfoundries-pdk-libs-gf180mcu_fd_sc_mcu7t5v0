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

module gf180mcu_fd_sc_mcu7t5v0__icgtp_1( TE, E, CLK, Q );
input CLK, E, TE;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__icgtp_1_func gf180mcu_fd_sc_mcu7t5v0__icgtp_1_behav_inst(.TE(TE),.E(E),.CLK(CLK),.Q(Q),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__icgtp_1_func gf180mcu_fd_sc_mcu7t5v0__icgtp_1_inst(.TE(TE),.E(E),.CLK(CLK),.Q(Q),.notifier(notifier));

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
	// comb arc CLK --> Q
	 (CLK => Q) = (1.0,1.0);

	if(E===1'b1 && TE===1'b0)
	// comb arc CLK --> Q
	 (CLK => Q) = (1.0,1.0);

	if(E===1'b1 && TE===1'b1)
	// comb arc CLK --> Q
	 (CLK => Q) = (1.0,1.0);

	ifnone
	// comb arc CLK --> Q
	 (CLK => Q) = (1.0,1.0);

	if(E===1'b0 && TE===1'b0)
	// comb arc CLK --> Q
	 (CLK => Q) = (1.0,1.0);

	$width(negedge CLK &&& (ENABLE_NOT_E_AND_NOT_TE === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_NOT_E_AND_TE === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_E_AND_NOT_TE === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_E_AND_TE === 1'b1)
		,1.0,0,notifier);

	// hold E-HL CLK-LH
	$hold(posedge CLK,negedge E,1.0,notifier);

	// hold E-LH CLK-LH
	$hold(posedge CLK,posedge E,1.0,notifier);

	// setup E-HL CLK-LH
	$setup(negedge E,posedge CLK,1.0,notifier);

	// setup E-LH CLK-LH
	$setup(posedge E,posedge CLK,1.0,notifier);

	// hold TE-HL CLK-LH
	$hold(posedge CLK,negedge TE,1.0,notifier);

	// hold TE-LH CLK-LH
	$hold(posedge CLK,posedge TE,1.0,notifier);

	// setup TE-HL CLK-LH
	$setup(negedge TE,posedge CLK,1.0,notifier);

	// setup TE-LH CLK-LH
	$setup(posedge TE,posedge CLK,1.0,notifier);

	// mpw CLK_hl
	$width(negedge CLK,1.0,0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
