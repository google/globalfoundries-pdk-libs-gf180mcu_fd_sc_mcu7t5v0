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

module gf180mcu_fd_sc_mcu7t5v0__clkinv_1( I, ZN );
input I;
output ZN;

   `ifdef FUNCTIONAL  //  functional //

	gf180mcu_fd_sc_mcu7t5v0__clkinv_1_func gf180mcu_fd_sc_mcu7t5v0__clkinv_1_behav_inst(.I(I),.ZN(ZN));

   `else

	gf180mcu_fd_sc_mcu7t5v0__clkinv_1_func gf180mcu_fd_sc_mcu7t5v0__clkinv_1_inst(.I(I),.ZN(ZN));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin

	// comb arc I --> ZN
	 (I => ZN) = (1.0,1.0);

	// specify_block_end

   endspecify

   `endif

endmodule
