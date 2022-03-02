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
.SUBCKT G2_OAI21_N3 Vss Vdd B A Z C
** N=6 EP=6 IP=20 FDC=4
X0 Z Vss Vdd B C TIGFET_PCELL_SP15CP15_N3 $T=167 75 1 180 $X=0 $Y=76
X1 Z Vdd Vss B A TIGFET_PCELL_SP15CP15_N3 $T=167 383 1 180 $X=0 $Y=384
X2 Z Vss Vdd A C TIGFET_PCELL_SP15CP15_N3 $T=137 75 0 0 $X=138 $Y=76
X3 Z Vdd Vss C Vss TIGFET_PCELL_SP15CP15_N3 $T=137 383 0 0 $X=138 $Y=384
.ENDS
***************************************
