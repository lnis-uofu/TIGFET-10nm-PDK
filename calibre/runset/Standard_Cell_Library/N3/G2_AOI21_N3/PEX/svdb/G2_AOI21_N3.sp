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
.SUBCKT G2_AOI21_N3 Vss Vdd B C Z A
** N=6 EP=6 IP=20 FDC=4
X0 Z Vss Vdd A B TIGFET_PCELL_SP15CP15_N3 $T=167 65 1 180 $X=0 $Y=66
X1 Z Vdd Vss B C TIGFET_PCELL_SP15CP15_N3 $T=167 373 1 180 $X=0 $Y=374
X2 Z Vss Vdd C Vdd TIGFET_PCELL_SP15CP15_N3 $T=137 65 0 0 $X=138 $Y=66
X3 Z Vdd Vss A C TIGFET_PCELL_SP15CP15_N3 $T=137 373 0 0 $X=138 $Y=374
.ENDS
***************************************
