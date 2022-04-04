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
.SUBCKT G3_MIN3_T6_N3 Vss Vdd Z C B A
** N=6 EP=6 IP=30 FDC=6
X0 Z Vdd Vss C B TIGFET_PCELL_SP15CP15_N3 $T=67 73 0 0 $X=68 $Y=74
X1 Z Vss Vdd C B TIGFET_PCELL_SP15CP15_N3 $T=67 291 0 0 $X=68 $Y=292
X2 Z Vdd Vss A B TIGFET_PCELL_SP15CP15_N3 $T=373 73 1 180 $X=206 $Y=74
X3 Z Vss Vdd A B TIGFET_PCELL_SP15CP15_N3 $T=373 291 1 180 $X=206 $Y=292
X4 Z Vdd Vss C A TIGFET_PCELL_SP15CP15_N3 $T=343 73 0 0 $X=344 $Y=74
X5 Z Vss Vdd C A TIGFET_PCELL_SP15CP15_N3 $T=343 291 0 0 $X=344 $Y=292
.ENDS
***************************************
