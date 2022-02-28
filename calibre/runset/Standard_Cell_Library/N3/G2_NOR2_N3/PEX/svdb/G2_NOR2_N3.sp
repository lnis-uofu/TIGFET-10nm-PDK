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
.SUBCKT G2_NOR2_N3 Vss Vdd B Z A
** N=5 EP=5 IP=15 FDC=3
X0 Z Vss Vdd B Vdd TIGFET_PCELL_SP15CP15_N3 $T=167 63 1 180 $X=0 $Y=64
X1 Z Vdd Vss B A TIGFET_PCELL_SP15CP15_N3 $T=167 371 1 180 $X=0 $Y=372
X2 Z Vss Vdd A Vdd TIGFET_PCELL_SP15CP15_N3 $T=137 371 0 0 $X=138 $Y=372
.ENDS
***************************************
