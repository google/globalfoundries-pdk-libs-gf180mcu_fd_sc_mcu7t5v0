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

module gf180mcu_fd_sc_mcu7t5v0__or3_2( A1, A2, A3, Z, VDD, VSS );
input A1, A2, A3;
inout VDD, VSS;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__or3_2_func gf180mcu_fd_sc_mcu7t5v0__or3_2_behav_inst(.A1(A1),.A2(A2),.A3(A3),.Z(Z),.VDD(VDD),.VSS(VSS));

   `else

	gf180mcu_fd_sc_mcu7t5v0__or3_2_func gf180mcu_fd_sc_mcu7t5v0__or3_2_inst(.A1(A1),.A2(A2),.A3(A3),.Z(Z),.VDD(VDD),.VSS(VSS));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	// specify_block_end

   endspecify

   `endif

endmodule
