* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgd cg pgs s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N3 D S PGD CG PGS
** N=5 EP=5 IP=0 FDC=1
X0 D PGD CG PGS S tigfet1 $X=29 $Y=11 $D=0
.ENDS
***************************************
.SUBCKT G3_AND2_N3 Vss Vdd A B Z
** N=6 EP=5 IP=25 FDC=5
X0 4 Vss Vdd A B TIGFET_PCELL_SP15CP15_N3 $T=167 -1 1 180 $X=0 $Y=0
X1 4 Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N3 $T=167 324 1 180 $X=0 $Y=325
X2 4 Vdd Vss B Vss TIGFET_PCELL_SP15CP15_N3 $T=137 324 0 0 $X=138 $Y=325
X3 Z Vdd Vss 4 Vss TIGFET_PCELL_SP15CP15_N3 $T=443 324 1 180 $X=276 $Y=325
X4 Z Vss Vdd 4 Vdd TIGFET_PCELL_SP15CP15_N3 $T=413 324 0 0 $X=414 $Y=325
.ENDS
***************************************
