************************************************************************
* auCdl Netlist:
* 
* Library Name:  TIGFET10nm
* Top Cell Name: G2_INV_N1
* View Name:     schematic
* Netlisted on:  Nov  4 14:14:12 2021
************************************************************************

*.EQUATION
*.SCALE METER
*.MEGA
*.PARAM


************************************************************************
* Library Name: TIGFET10nm
* Cell Name:    G2_No_Connection_N1
* View Name:    schematic
************************************************************************

*.HDL 'veriloga.va'

.SUBCKT TIGFET_PCELL_SP15CP15_N1 d pgd cg pgs s
* XMOS d pgd cg pgs s TIGFET_PCELL
.ENDS


.SUBCKT G2_No_Connection_N1 cg1 cg2 cg3 cg4 g1 g2 g3 g4 n1 n2 n3 n4 n5 n6
*.PININFO cg1:I cg2:I cg3:I cg4:I n1:I n2:I n3:I n4:I n5:I n6:I g1:O g2:O g3:O 
*.PININFO g4:O
XI4 cg4 n4 g4 g4 n5 / TIGFET_PCELL_SP15CP15_N1
XI7 cg2 n2 g2 g2 n3 / TIGFET_PCELL_SP15CP15_N1
XI5 cg3 n5 g3 g3 n6 / TIGFET_PCELL_SP15CP15_N1
XI6 cg1 n1 g1 g1 n2 / TIGFET_PCELL_SP15CP15_N1
.ENDS

************************************************************************
* Library Name: TIGFET10nm
* Cell Name:    G2_INV_N1
* View Name:    schematic
************************************************************************

.SUBCKT G2_INV_N1 A Ab B Bb GND Vdd
*.PININFO A:I B:I GND:I Vdd:I Ab:O Bb:O
XI3 A B A B Ab Bb Ab Bb GND Vdd GND GND Vdd GND / G2_No_Connection_N1
.ENDS
