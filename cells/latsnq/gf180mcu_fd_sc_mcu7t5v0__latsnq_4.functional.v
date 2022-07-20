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

module gf180mcu_fd_sc_mcu7t5v0__latsnq_4( E, D, SETN, Q, notifier );
input D, E, SETN, notifier;
output Q;

	not MGM_BG_0( MGM_P0, SETN );

	UDP_GF018hv5v_mcu_sc7_TT_1P8V_25C_verilog_nonpg_MGM_N_IQ_LATCH_UDP( IQ2, 1'b0, MGM_P0, E, D, notifier );

	buf MGM_BG_1( Q, IQ2 );

endmodule
