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
.SUBCKT G2_NOR2_N2 Vss Vdd B Z A
** N=5 EP=5 IP=15 FDC=3
X0 Z Vss Vdd B Vdd TIGFET_PCELL_SP15CP15_N2 $T=180 61 1 180 $X=0 $Y=64
X1 Z Vdd Vss B A TIGFET_PCELL_SP15CP15_N2 $T=180 325 1 180 $X=0 $Y=328
X2 Z Vss Vdd A Vdd TIGFET_PCELL_SP15CP15_N2 $T=124 325 0 0 $X=138 $Y=328
.ENDS
***************************************
