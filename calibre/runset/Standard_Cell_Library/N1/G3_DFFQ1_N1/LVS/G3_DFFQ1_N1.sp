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
.SUBCKT G3_DFFQ1_N1 Vss CK Vdd D Q
** N=7 EP=5 IP=30 FDC=6
X0 4 Vss Vdd CK Vdd TIGFET_PCELL_SP15CP15_N1 $T=280 24 1 180 $X=0 $Y=64
X1 4 Vdd Vss CK Vss TIGFET_PCELL_SP15CP15_N1 $T=24 24 0 0 $X=138 $Y=64
X2 6 Vdd Vss D CK TIGFET_PCELL_SP15CP15_N1 $T=556 24 1 180 $X=276 $Y=64
X3 Q Vss Vdd 6 CK TIGFET_PCELL_SP15CP15_N1 $T=556 244 1 180 $X=276 $Y=284
X4 6 Vss Vdd D 4 TIGFET_PCELL_SP15CP15_N1 $T=300 24 0 0 $X=414 $Y=64
X5 Q Vdd Vss 6 4 TIGFET_PCELL_SP15CP15_N1 $T=300 244 0 0 $X=414 $Y=284
.ENDS
***************************************
