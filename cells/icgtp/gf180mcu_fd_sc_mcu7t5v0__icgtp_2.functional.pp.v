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

module gf180mcu_fd_sc_mcu7t5v0__icgtp_2_func( TE, E, CLK, Q, VDD, VSS, notifier );
input CLK, E, TE, VDD, VSS, notifier;
output Q;

	not MGM_BG_0( MGM_EN0, CLK );

	or MGM_BG_1( MGM_D0, E, TE );

	UDP_GF018hv5v_mcu_sc7_TT_5P0V_25C_verilog_pg_MGM_N_IQ_LATCH_UDP( IQ2, 1'b0, 1'b0, MGM_EN0, MGM_D0, notifier );

	and MGM_BG_2( Q, CLK, IQ2 );

endmodule
