* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgd cg pgs s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N1 D S PGD CG PGS
** N=5 EP=5 IP=0 FDC=1
X0 D PGD CG PGS S tigfet1 $X=142 $Y=62 $D=0
.ENDS
***************************************
.SUBCKT G2_AOI21_N1 Vss Vdd B A Z C
** N=6 EP=6 IP=20 FDC=4
X0 Z Vss Vdd B C TIGFET_PCELL_SP15CP15_N1 $T=280 24 1 180 $X=0 $Y=64
X1 Z Vdd Vss B A TIGFET_PCELL_SP15CP15_N1 $T=280 244 1 180 $X=0 $Y=284
X2 Z Vss Vdd C Vdd TIGFET_PCELL_SP15CP15_N1 $T=24 172 1 0 $X=138 $Y=64
X3 Z Vdd Vss C Vss TIGFET_PCELL_SP15CP15_N1 $T=24 244 0 0 $X=138 $Y=284
.ENDS
***************************************
