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
.SUBCKT G2_NAND2_N3 Vss Vdd A Z B
** N=5 EP=5 IP=15 FDC=3
X0 Z Vss Vdd A B TIGFET_PCELL_SP15CP15_N3 $T=167 -1 1 180 $X=0 $Y=0
X1 Z Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N3 $T=167 324 1 180 $X=0 $Y=325
X2 Z Vdd Vss B Vss TIGFET_PCELL_SP15CP15_N3 $T=137 324 0 0 $X=138 $Y=325
.ENDS
***************************************
