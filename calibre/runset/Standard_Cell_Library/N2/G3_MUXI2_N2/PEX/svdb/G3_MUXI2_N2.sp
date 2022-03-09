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
.SUBCKT G3_MUXI2_N2 Vss Vdd SEL B Z A
** N=7 EP=6 IP=30 FDC=6
X0 3 Vss Vdd SEL Vdd TIGFET_PCELL_SP15CP15_N2 $T=180 325 1 180 $X=0 $Y=328
X1 3 Vdd Vss SEL Vss TIGFET_PCELL_SP15CP15_N2 $T=124 325 0 0 $X=138 $Y=328
X2 Z Vss Vdd 3 B TIGFET_PCELL_SP15CP15_N2 $T=456 61 1 180 $X=276 $Y=64
X3 Z Vdd Vss SEL B TIGFET_PCELL_SP15CP15_N2 $T=456 325 1 180 $X=276 $Y=328
X4 Z Vss Vdd SEL A TIGFET_PCELL_SP15CP15_N2 $T=400 61 0 0 $X=414 $Y=64
X5 Z Vdd Vss 3 A TIGFET_PCELL_SP15CP15_N2 $T=400 325 0 0 $X=414 $Y=328
.ENDS
***************************************
