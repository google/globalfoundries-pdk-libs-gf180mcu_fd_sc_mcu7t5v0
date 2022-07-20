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

module gf180mcu_fd_sc_mcu7t5v0__addf_2( S, A, CI, B, CO );
input A, B, CI;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__addf_2_func gf180mcu_fd_sc_mcu7t5v0__addf_2_behav_inst(.S(S),.A(A),.CI(CI),.B(B),.CO(CO));

   `else

	gf180mcu_fd_sc_mcu7t5v0__addf_2_func gf180mcu_fd_sc_mcu7t5v0__addf_2_inst(.S(S),.A(A),.CI(CI),.B(B),.CO(CO));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	ifnone
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	ifnone
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	if(B===1'b0 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	if(A===1'b0 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	ifnone
	// comb arc posedge CI --> (S:CI)
	 (posedge CI => (S:CI)) = (1.0,1.0);

	ifnone
	// comb arc negedge CI --> (S:CI)
	 (negedge CI => (S:CI)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	// specify_block_end

   endspecify

   `endif

endmodule
