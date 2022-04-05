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
.SUBCKT G3_LATQ1_N1 Vdd Vss G Q D
** N=7 EP=5 IP=30 FDC=6
X0 5 Vdd Vss G Vss TIGFET_PCELL_SP15CP15_N1 $T=280 172 0 180 $X=0 $Y=64
X1 Q Vss Vdd 4 Vdd TIGFET_PCELL_SP15CP15_N1 $T=280 244 1 180 $X=0 $Y=284
X2 5 Vss Vdd G Vdd TIGFET_PCELL_SP15CP15_N1 $T=24 172 1 0 $X=138 $Y=64
X3 Q Vdd Vss 4 Vss TIGFET_PCELL_SP15CP15_N1 $T=24 244 0 0 $X=138 $Y=284
X4 4 Vss Vdd D G TIGFET_PCELL_SP15CP15_N1 $T=556 24 1 180 $X=276 $Y=64
X5 4 Vdd Vss D 5 TIGFET_PCELL_SP15CP15_N1 $T=556 244 1 180 $X=276 $Y=284
.ENDS
***************************************
