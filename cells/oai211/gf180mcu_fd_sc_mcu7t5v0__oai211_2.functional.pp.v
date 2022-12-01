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

module gf180mcu_fd_sc_mcu7t5v0__oai211_2_func( A2, ZN, A1, B, C, VDD, VSS );
input A1, A2, B, C;
inout VDD, VSS;
output ZN;

	wire A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2;

	not MGM_BG_0( A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2, A1 );

	wire A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2;

	not MGM_BG_1( A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2, A2 );

	wire ZN_row1;

	and MGM_BG_2( ZN_row1, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2 );

	wire B_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2;

	not MGM_BG_3( B_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2, B );

	wire C_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2;

	not MGM_BG_4( C_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2, C );

	or MGM_BG_5( ZN, ZN_row1, B_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2, C_inv_for_gf180mcu_fd_sc_mcu7t5v0__oai211_2 );

endmodule
