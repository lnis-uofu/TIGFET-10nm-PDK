************************************************************************
* auCdl Netlist:
* 
* Library Name:  TIGFET10nm
* Top Cell Name: G2_AOI21_N1
* View Name:     schematic
* Netlisted on:  Jan 18 10:17:08 2022
************************************************************************

*.EQUATION
*.SCALE METER
*.MEGA
.PARAM



************************************************************************
* Library Name: TIGFET10nm
* Cell Name:    G2_AOI21_N1
* View Name:    schematic
************************************************************************

.SUBCKT G2_AOI21_N1 A B C Vdd Vss Z
*.PININFO A:I B:I C:I Z:O Vdd:B Vss:B
XI5 C Z Vdd Vdd Vss / TIGFET_PCELL_SP15CP15_N1
XI6 B Z Vss A Vdd / TIGFET_PCELL_SP15CP15_N1
XI1 B Z Vdd C Vss / TIGFET_PCELL_SP15CP15_N1
XI7 C Z Vss Vss Vdd / TIGFET_PCELL_SP15CP15_N1
.ENDS

