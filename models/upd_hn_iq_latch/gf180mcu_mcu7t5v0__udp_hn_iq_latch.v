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

`ifndef GF180MCU_FD_SC_MCU7T5V0__UDP_HN_IQ_LATCH_V
`define GF180MCU_FD_SC_MCU7T5V0__UDP_HN_IQ_LATCH_V

primitive gf180mcu_fd_sc_mcu7t5v0__udp_hn_iq_latch( Q, C, P, CK, D, N );
output Q;
reg Q;
input C, P, CK, D, N;
table
// C    P    CK   D    N  :  Q  :  Q
   0    0    0    *    ?  :  ?  :  -;
   0    0    (?0) ?    ?  :  ?  :  -;
   0    (?0) 0    ?    ?  :  ?  :  -;
   (?0) 0    0    ?    ?  :  ?  :  -;
   ?    0    1    0    ?  :  ?  :  0;
   ?    0    ?    (?0) ?  :  0  :  0;
   ?    (?0) ?    0    ?  :  0  :  0;
   1    0    ?    ?    ?  :  ?  :  0;
   0    ?    1    1    ?  :  ?  :  1;
   0    ?    ?    (?1) ?  :  1  :  1;
   (?0) ?    ?    1    ?  :  1  :  1;
   ?    1    ?    ?    ?  :  ?  :  1;
   ?    ?    ?    ?    *  :  ?  :  x;

endtable
endprimitive

`endif // GF180MCU_FD_SC_MCU7T5V0__UDP_HN_IQ_LATCH_V
