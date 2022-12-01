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

module gf180mcu_fd_sc_mcu7t5v0__oai32_4_func( A2, A3, A1, ZN, B2, B1, VDD, VSS );
input A1, A2, A3, B1, B2;
inout VDD, VSS;
output ZN;

	wire A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4;

	not MGM_BG_0( A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4, A1 );

	wire A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4;

	not MGM_BG_1( A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4, A2 );

	wire A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4;

	not MGM_BG_2( A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4, A3 );

	wire ZN_row1;

	and MGM_BG_3( ZN_row1, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4, A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4 );

	wire B1_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4;

	not MGM_BG_4( B1_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4, B1 );

	wire B2_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4;

	not MGM_BG_5( B2_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4, B2 );

	wire ZN_row2;

	and MGM_BG_6( ZN_row2, B1_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4, B2_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai32_4 );

	or MGM_BG_7( ZN, ZN_row1, ZN_row2 );

endmodule
