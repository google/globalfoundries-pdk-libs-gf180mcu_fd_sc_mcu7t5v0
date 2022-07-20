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

module gf180mcu_fd_sc_mcu7t5v0__xor3_2( A2, A1, A3, Z, VDD, VSS );
input A1, A2, A3;
inout VDD, VSS;
output Z;

	wire Z_row1;

	and MGM_BG_0( Z_row1, A1, A2, A3 );

	wire A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2;

	not MGM_BG_1( A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2, A2 );

	wire A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2;

	not MGM_BG_2( A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2, A3 );

	wire Z_row2;

	and MGM_BG_3( Z_row2, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2, A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2, A1 );

	wire A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2;

	not MGM_BG_4( A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2, A1 );

	wire Z_row3;

	and MGM_BG_5( Z_row3, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2, A3_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2, A2 );

	wire Z_row4;

	and MGM_BG_6( Z_row4, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor3_2, A3 );

	or MGM_BG_7( Z, Z_row1, Z_row2, Z_row3, Z_row4 );

endmodule
