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

module gf180mcu_fd_sc_mcu7t5v0__dffsnq_4( CLK, D, SETN, Q );
input CLK, D, SETN;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__dffsnq_4_func gf180mcu_fd_sc_mcu7t5v0__dffsnq_4_behav_inst(.CLK(CLK),.D(D),.SETN(SETN),.Q(Q),.notifier(notifier));

   `else

	gf180mcu_fd_sc_mcu7t5v0__dffsnq_4_func gf180mcu_fd_sc_mcu7t5v0__dffsnq_4_inst(.CLK(CLK),.D(D),.SETN(SETN),.Q(Q),.notifier(notifier));

	// spec_gates_begin


	not MGM_G0(MGM_W0,D);


	and MGM_G1(ENABLE_NOT_D_AND_SETN,SETN,MGM_W0);


	and MGM_G2(ENABLE_D_AND_SETN,SETN,D);


	buf MGM_G3(ENABLE_SETN,SETN);


	not MGM_G4(MGM_W1,CLK);


	not MGM_G5(MGM_W2,D);


	and MGM_G6(ENABLE_NOT_CLK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CLK);


	and MGM_G8(ENABLE_NOT_CLK_AND_D,D,MGM_W3);


	not MGM_G9(MGM_W4,D);


	and MGM_G10(ENABLE_CLK_AND_NOT_D,MGM_W4,CLK);


	and MGM_G11(ENABLE_CLK_AND_D,D,CLK);


	// spec_gates_end



   specify

	// specify_block_begin

	// seq arc CLK --> Q
	(posedge CLK => (Q : D))  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b0 && D===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b0)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	if(CLK===1'b1 && D===1'b1)
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	ifnone
	// seq arc SETN --> Q
	(SETN => Q)  = (1.0,1.0);

	$width(negedge CLK &&& (ENABLE_NOT_D_AND_SETN === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_NOT_D_AND_SETN === 1'b1)
		,1.0,0,notifier);

	$width(negedge CLK &&& (ENABLE_D_AND_SETN === 1'b1)
		,1.0,0,notifier);

	$width(posedge CLK &&& (ENABLE_D_AND_SETN === 1'b1)
		,1.0,0,notifier);

	// hold D-HL CLK-LH
	$hold(posedge CLK &&& (ENABLE_SETN === 1'b1),
		negedge D &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	// hold D-LH CLK-LH
	$hold(posedge CLK &&& (ENABLE_SETN === 1'b1),
		posedge D &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	// setup D-HL CLK-LH
	$setup(negedge D &&& (ENABLE_SETN === 1'b1),
		posedge CLK &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	// setup D-LH CLK-LH
	$setup(posedge D &&& (ENABLE_SETN === 1'b1),
		posedge CLK &&& (ENABLE_SETN === 1'b1),1.0,notifier);

	// recovery SETN-LH CLK-LH
	$recovery(posedge SETN,posedge CLK,1.0,notifier);

	// removal SETN-LH CLK-LH
	$removal(posedge SETN,posedge CLK,1.0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_NOT_CLK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SETN &&& (ENABLE_CLK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CLK_lh
	$width(posedge CLK,1.0,0,notifier);

	// mpw CLK_hl
	$width(negedge CLK,1.0,0,notifier);

	// mpw SETN_hl
	$width(negedge SETN,1.0,0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_NOT_D_AND_SETN === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK &&& (ENABLE_D_AND_SETN === 1'b1)
		,1.0,notifier);

	// period CLK
	$period(posedge CLK,1.0,notifier);

	// specify_block_end

   endspecify

   `endif

endmodule
