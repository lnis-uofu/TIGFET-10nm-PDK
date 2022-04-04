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
.SUBCKT G3_MIN3_T6_N1 Vss Vdd Z C B A
** N=6 EP=6 IP=30 FDC=6
X0 Z Vdd Vss C B TIGFET_PCELL_SP15CP15_N1 $T=-46 22 0 0 $X=68 $Y=62
X1 Z Vss Vdd C B TIGFET_PCELL_SP15CP15_N1 $T=-46 300 1 0 $X=68 $Y=192
X2 Z Vdd Vss A B TIGFET_PCELL_SP15CP15_N1 $T=486 22 1 180 $X=206 $Y=62
X3 Z Vss Vdd A B TIGFET_PCELL_SP15CP15_N1 $T=486 300 0 180 $X=206 $Y=192
X4 Z Vdd Vss C A TIGFET_PCELL_SP15CP15_N1 $T=230 22 0 0 $X=344 $Y=62
X5 Z Vss Vdd C A TIGFET_PCELL_SP15CP15_N1 $T=230 300 1 0 $X=344 $Y=192
.ENDS
***************************************
