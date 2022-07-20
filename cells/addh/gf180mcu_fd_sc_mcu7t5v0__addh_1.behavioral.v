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

module gf180mcu_fd_sc_mcu7t5v0__addh_1( CO, A, B, S );
input A, B;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__addh_1_func gf180mcu_fd_sc_mcu7t5v0__addh_1_behav_inst(.CO(CO),.A(A),.B(B),.S(S));

   `else

	gf180mcu_fd_sc_mcu7t5v0__addh_1_func gf180mcu_fd_sc_mcu7t5v0__addh_1_inst(.CO(CO),.A(A),.B(B),.S(S));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin

	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	// specify_block_end

   endspecify

   `endif

endmodule
