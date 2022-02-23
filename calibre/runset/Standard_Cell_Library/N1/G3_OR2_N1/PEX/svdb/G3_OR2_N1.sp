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
.SUBCKT G3_OR2_N1 Vss Vdd B A Z
** N=6 EP=5 IP=25 FDC=5
X0 4 Vss Vdd B Vdd TIGFET_PCELL_SP15CP15_N1 $T=280 24 1 180 $X=0 $Y=64
X1 4 Vdd Vss B A TIGFET_PCELL_SP15CP15_N1 $T=280 244 1 180 $X=0 $Y=284
X2 4 Vss Vdd A Vdd TIGFET_PCELL_SP15CP15_N1 $T=24 244 0 0 $X=138 $Y=284
X3 Z Vss Vdd 4 Vdd TIGFET_PCELL_SP15CP15_N1 $T=556 244 1 180 $X=276 $Y=284
X4 Z Vdd Vss 4 Vss TIGFET_PCELL_SP15CP15_N1 $T=300 244 0 0 $X=414 $Y=284
.ENDS
***************************************
