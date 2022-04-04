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
.SUBCKT G3_MIN3_T6_N2 Vss Vdd Z C B A
** N=6 EP=6 IP=30 FDC=6
X0 Z Vdd Vss C B TIGFET_PCELL_SP15CP15_N2 $T=54 71 0 0 $X=68 $Y=74
X1 Z Vss Vdd C B TIGFET_PCELL_SP15CP15_N2 $T=54 245 0 0 $X=68 $Y=248
X2 Z Vdd Vss A B TIGFET_PCELL_SP15CP15_N2 $T=386 71 1 180 $X=206 $Y=74
X3 Z Vss Vdd A B TIGFET_PCELL_SP15CP15_N2 $T=386 245 1 180 $X=206 $Y=248
X4 Z Vdd Vss C A TIGFET_PCELL_SP15CP15_N2 $T=330 71 0 0 $X=344 $Y=74
X5 Z Vss Vdd C A TIGFET_PCELL_SP15CP15_N2 $T=330 245 0 0 $X=344 $Y=248
.ENDS
***************************************
