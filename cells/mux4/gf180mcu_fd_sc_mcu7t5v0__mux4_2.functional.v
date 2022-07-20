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

module gf180mcu_fd_sc_mcu7t5v0__mux4_2( I2, S0, I3, Z, S1, I1, I0 );
input I0, I1, I2, I3, S0, S1;
output Z;

	wire S0_inv_for_gf180mcu_fd_sc_mcu7t5v0__mux4_2;

	not MGM_BG_0( S0_inv_for_gf180mcu_fd_sc_mcu7t5v0__mux4_2, S0 );

	wire S1_inv_for_gf180mcu_fd_sc_mcu7t5v0__mux4_2;

	not MGM_BG_1( S1_inv_for_gf180mcu_fd_sc_mcu7t5v0__mux4_2, S1 );

	wire Z_row1;

	and MGM_BG_2( Z_row1, S0_inv_for_gf180mcu_fd_sc_mcu7t5v0__mux4_2, S1_inv_for_gf180mcu_fd_sc_mcu7t5v0__mux4_2, I0 );

	wire Z_row2;

	and MGM_BG_3( Z_row2, S1_inv_for_gf180mcu_fd_sc_mcu7t5v0__mux4_2, I1, S0 );

	wire Z_row3;

	and MGM_BG_4( Z_row3, S0_inv_for_gf180mcu_fd_sc_mcu7t5v0__mux4_2, I2, S1 );

	wire Z_row4;

	and MGM_BG_5( Z_row4, I3, S0, S1 );

	or MGM_BG_6( Z, Z_row1, Z_row2, Z_row3, Z_row4 );

endmodule
