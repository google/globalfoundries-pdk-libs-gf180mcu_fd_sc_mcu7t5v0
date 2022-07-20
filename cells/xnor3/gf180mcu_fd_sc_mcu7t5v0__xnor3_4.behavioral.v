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

module gf180mcu_fd_sc_mcu7t5v0__xnor3_4( A2, A1, A3, ZN );
input A1, A2, A3;
output ZN;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__xnor3_4_func gf180mcu_fd_sc_mcu7t5v0__xnor3_4_behav_inst(.A2(A2),.A1(A1),.A3(A3),.ZN(ZN));

   `else

	gf180mcu_fd_sc_mcu7t5v0__xnor3_4_func gf180mcu_fd_sc_mcu7t5v0__xnor3_4_inst(.A2(A2),.A1(A1),.A3(A3),.ZN(ZN));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin

	if(A2===1'b0 && A3===1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(A2===1'b1 && A3===1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	ifnone
	// comb arc posedge A1 --> (ZN:A1)
	 (posedge A1 => (ZN:A1)) = (1.0,1.0);

	ifnone
	// comb arc negedge A1 --> (ZN:A1)
	 (negedge A1 => (ZN:A1)) = (1.0,1.0);

	if(A2===1'b0 && A3===1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(A2===1'b1 && A3===1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A3===1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A3===1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	ifnone
	// comb arc posedge A2 --> (ZN:A2)
	 (posedge A2 => (ZN:A2)) = (1.0,1.0);

	ifnone
	// comb arc negedge A2 --> (ZN:A2)
	 (negedge A2 => (ZN:A2)) = (1.0,1.0);

	if(A1===1'b0 && A3===1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A3===1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc A3 --> ZN
	 (A3 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc A3 --> ZN
	 (A3 => ZN) = (1.0,1.0);

	ifnone
	// comb arc posedge A3 --> (ZN:A3)
	 (posedge A3 => (ZN:A3)) = (1.0,1.0);

	ifnone
	// comb arc negedge A3 --> (ZN:A3)
	 (negedge A3 => (ZN:A3)) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc A3 --> ZN
	 (A3 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc A3 --> ZN
	 (A3 => ZN) = (1.0,1.0);

	// specify_block_end

   endspecify

   `endif

endmodule
