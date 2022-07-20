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

module gf180mcu_fd_sc_mcu7t5v0__mux4_4( I2, S0, I3, Z, S1, I1, I0 );
input I0, I1, I2, I3, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__mux4_4_func gf180mcu_fd_sc_mcu7t5v0__mux4_4_behav_inst(.I2(I2),.S0(S0),.I3(I3),.Z(Z),.S1(S1),.I1(I1),.I0(I0));

   `else

	gf180mcu_fd_sc_mcu7t5v0__mux4_4_func gf180mcu_fd_sc_mcu7t5v0__mux4_4_inst(.I2(I2),.S0(S0),.I3(I3),.Z(Z),.S1(S1),.I1(I1),.I0(I0));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin

	if(I1===1'b0 && I2===1'b0 && I3===1'b0)
	// comb arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);

	if(I1===1'b0 && I2===1'b0 && I3===1'b1)
	// comb arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);

	if(I1===1'b0 && I2===1'b1 && I3===1'b0)
	// comb arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);

	if(I1===1'b0 && I2===1'b1 && I3===1'b1)
	// comb arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);

	if(I1===1'b1 && I2===1'b0 && I3===1'b0)
	// comb arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);

	if(I1===1'b1 && I2===1'b0 && I3===1'b1)
	// comb arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);

	if(I1===1'b1 && I2===1'b1 && I3===1'b0)
	// comb arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);

	if(I1===1'b1 && I2===1'b1 && I3===1'b1)
	// comb arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);

	ifnone
	// comb arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);

	if(I0===1'b0 && I2===1'b0 && I3===1'b0)
	// comb arc I1 --> Z
	 (I1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I2===1'b0 && I3===1'b1)
	// comb arc I1 --> Z
	 (I1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I2===1'b1 && I3===1'b0)
	// comb arc I1 --> Z
	 (I1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I2===1'b1 && I3===1'b1)
	// comb arc I1 --> Z
	 (I1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I2===1'b0 && I3===1'b0)
	// comb arc I1 --> Z
	 (I1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I2===1'b0 && I3===1'b1)
	// comb arc I1 --> Z
	 (I1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I2===1'b1 && I3===1'b0)
	// comb arc I1 --> Z
	 (I1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I2===1'b1 && I3===1'b1)
	// comb arc I1 --> Z
	 (I1 => Z) = (1.0,1.0);

	ifnone
	// comb arc I1 --> Z
	 (I1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I3===1'b0)
	// comb arc I2 --> Z
	 (I2 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I3===1'b1)
	// comb arc I2 --> Z
	 (I2 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I3===1'b0)
	// comb arc I2 --> Z
	 (I2 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I3===1'b1)
	// comb arc I2 --> Z
	 (I2 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I3===1'b0)
	// comb arc I2 --> Z
	 (I2 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I3===1'b1)
	// comb arc I2 --> Z
	 (I2 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I3===1'b0)
	// comb arc I2 --> Z
	 (I2 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I3===1'b1)
	// comb arc I2 --> Z
	 (I2 => Z) = (1.0,1.0);

	ifnone
	// comb arc I2 --> Z
	 (I2 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I2===1'b0)
	// comb arc I3 --> Z
	 (I3 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I2===1'b1)
	// comb arc I3 --> Z
	 (I3 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b0)
	// comb arc I3 --> Z
	 (I3 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b1)
	// comb arc I3 --> Z
	 (I3 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b0)
	// comb arc I3 --> Z
	 (I3 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b1)
	// comb arc I3 --> Z
	 (I3 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I2===1'b0)
	// comb arc I3 --> Z
	 (I3 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I2===1'b1)
	// comb arc I3 --> Z
	 (I3 => Z) = (1.0,1.0);

	ifnone
	// comb arc I3 --> Z
	 (I3 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I2===1'b1 && I3===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b1 && I3===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b0 && I3===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b0 && I3===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b1 && I3===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b1 && I3===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b1 && I3===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I2===1'b1 && I3===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I2===1'b0 && I3===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b0 && I3===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b0 && I3===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b0 && I3===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b1 && I3===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b1 && I3===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b0 && I3===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I2===1'b0 && I3===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b0 && I3===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b1 && I3===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b0 && I3===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b0 && I3===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I2===1'b0 && I3===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I2===1'b0 && I3===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I2===1'b0 && I3===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b1 && I2===1'b1 && I3===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I2===1'b0 && I3===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I2===1'b1 && I3===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I2===1'b1 && I3===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b0 && I2===1'b1 && I3===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b1 && I3===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b0 && I1===1'b1 && I2===1'b1 && I3===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b0 && I3===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(I0===1'b1 && I1===1'b0 && I2===1'b1 && I3===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end

   endspecify

   `endif

endmodule
