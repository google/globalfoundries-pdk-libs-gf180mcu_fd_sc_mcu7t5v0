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

module gf180mcu_fd_sc_mcu7t5v0__aoi222_2( ZN, C2, C1, B2, B1, A1, A2, VDD, VSS );
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS;
output ZN;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__aoi222_2_func gf180mcu_fd_sc_mcu7t5v0__aoi222_2_behav_inst(.ZN(ZN),.C2(C2),.C1(C1),.B2(B2),.B1(B1),.A1(A1),.A2(A2),.VDD(VDD),.VSS(VSS));

   `else

	gf180mcu_fd_sc_mcu7t5v0__aoi222_2_func gf180mcu_fd_sc_mcu7t5v0__aoi222_2_inst(.ZN(ZN),.C2(C2),.C1(C1),.B2(B2),.B1(B1),.A1(A1),.A2(A2),.VDD(VDD),.VSS(VSS));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	ifnone
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	ifnone
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	ifnone
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	ifnone
	// comb arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	ifnone
	// comb arc C1 --> ZN
	 (C1 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	ifnone
	// comb arc C2 --> ZN
	 (C2 => ZN) = (1.0,1.0);

	// specify_block_end

   endspecify

   `endif

endmodule
