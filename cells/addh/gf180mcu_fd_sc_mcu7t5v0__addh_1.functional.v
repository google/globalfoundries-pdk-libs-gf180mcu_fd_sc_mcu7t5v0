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

module gf180mcu_fd_sc_mcu7t5v0__addh_1( CO, A, B, S );
input A, B;
output CO, S;

	and MGM_BG_0( CO, A, B );

	wire B_inv_for_gf180mcu_fd_sc_mcu7t5v0__addh_1;

	not MGM_BG_1( B_inv_for_gf180mcu_fd_sc_mcu7t5v0__addh_1, B );

	wire S_row1;

	and MGM_BG_2( S_row1, B_inv_for_gf180mcu_fd_sc_mcu7t5v0__addh_1, A );

	wire A_inv_for_gf180mcu_fd_sc_mcu7t5v0__addh_1;

	not MGM_BG_3( A_inv_for_gf180mcu_fd_sc_mcu7t5v0__addh_1, A );

	wire S_row2;

	and MGM_BG_4( S_row2, A_inv_for_gf180mcu_fd_sc_mcu7t5v0__addh_1, B );

	or MGM_BG_5( S, S_row1, S_row2 );

endmodule
