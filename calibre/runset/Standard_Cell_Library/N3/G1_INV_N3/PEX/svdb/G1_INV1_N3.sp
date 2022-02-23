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
.SUBCKT G1_INV1_N3 Vdd A Vss Z
** N=4 EP=4 IP=10 FDC=2
X0 Z Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N3 $T=167 63 1 180 $X=0 $Y=64
X1 Z Vss Vdd A Vdd TIGFET_PCELL_SP15CP15_N3 $T=137 63 0 0 $X=138 $Y=64
.ENDS
***************************************
