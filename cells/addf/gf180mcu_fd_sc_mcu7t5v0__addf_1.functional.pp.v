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

module gf180mcu_fd_sc_mcu7t5v0__addf_1( S, A, CI, B, CO, VDD, VSS );
input A, B, CI;
inout VDD, VSS;
output CO, S;

	wire CO_row1;

	and MGM_BG_0( CO_row1, A, B );

	wire CO_row2;

	and MGM_BG_1( CO_row2, A, CI );

	wire CO_row3;

	and MGM_BG_2( CO_row3, B, CI );

	or MGM_BG_3( CO, CO_row1, CO_row2, CO_row3 );

	wire S_row1;

	and MGM_BG_4( S_row1, A, B, CI );

	wire B_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1;

	not MGM_BG_5( B_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1, B );

	wire CI_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1;

	not MGM_BG_6( CI_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1, CI );

	wire S_row2;

	and MGM_BG_7( S_row2, B_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1, CI_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1, A );

	wire A_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1;

	not MGM_BG_8( A_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1, A );

	wire S_row3;

	and MGM_BG_9( S_row3, A_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1, CI_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1, B );

	wire S_row4;

	and MGM_BG_10( S_row4, A_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1, B_inv_for_gf180mcu_fd_sc_mcu7t5v0__addf_1, CI );

	or MGM_BG_11( S, S_row1, S_row2, S_row3, S_row4 );

endmodule
