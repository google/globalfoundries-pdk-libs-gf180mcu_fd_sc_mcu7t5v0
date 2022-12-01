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

module gf180mcu_fd_sc_mcu7t5v0__xor2_2_func( A2, A1, Z, VDD, VSS );
input A1, A2;
inout VDD, VSS;
output Z;

	wire A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor2_2;

	not MGM_BG_0( A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor2_2, A2 );

	wire Z_row1;

	and MGM_BG_1( Z_row1, A2_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor2_2, A1 );

	wire A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor2_2;

	not MGM_BG_2( A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor2_2, A1 );

	wire Z_row2;

	and MGM_BG_3( Z_row2, A1_inv_for_gf180mcu_fd_sc_mcu7t5v0__xor2_2, A2 );

	or MGM_BG_4( Z, Z_row1, Z_row2 );

endmodule
