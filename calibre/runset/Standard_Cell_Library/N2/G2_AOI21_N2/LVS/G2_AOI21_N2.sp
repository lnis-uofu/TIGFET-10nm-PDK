* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgd cg pgs s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N2 D S PGD CG PGS
** N=5 EP=5 IP=0 FDC=1
X0 D PGD CG PGS S tigfet1 $X=42 $Y=13 $D=0
.ENDS
***************************************
.SUBCKT G2_AOI21_N2 Vss Vdd B A Z C
** N=6 EP=6 IP=20 FDC=4
X0 Z Vss Vdd B C TIGFET_PCELL_SP15CP15_N2 $T=180 63 1 180 $X=0 $Y=66
X1 Z Vdd Vss B A TIGFET_PCELL_SP15CP15_N2 $T=180 327 1 180 $X=0 $Y=330
X2 Z Vss Vdd C Vdd TIGFET_PCELL_SP15CP15_N2 $T=124 63 0 0 $X=138 $Y=66
X3 Z Vdd Vss C Vss TIGFET_PCELL_SP15CP15_N2 $T=124 327 0 0 $X=138 $Y=330
.ENDS
***************************************
