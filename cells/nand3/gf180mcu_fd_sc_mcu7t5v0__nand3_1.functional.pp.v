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

module gf180mcu_fd_sc_mcu7t5v0__nand3_1( A3, ZN, A2, A1, VDD, VSS );
input A1, A2, A3;
inout VDD, VSS;
output ZN;

	wire A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_1;

	not MGM_BG_0( A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_1, A1 );

	wire A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_1;

	not MGM_BG_1( A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_1, A2 );

	wire A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_1;

	not MGM_BG_2( A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_1, A3 );

	or MGM_BG_3( ZN, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_1, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_1, A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__nand3_1 );

endmodule
