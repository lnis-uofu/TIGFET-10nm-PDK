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
.SUBCKT G3_LATQ1_N3 Vdd Vss G Q D
** N=7 EP=5 IP=30 FDC=6
X0 5 Vdd Vss G Vss TIGFET_PCELL_SP15CP15_N3 $T=167 63 1 180 $X=0 $Y=64
X1 Q Vss Vdd 4 Vdd TIGFET_PCELL_SP15CP15_N3 $T=167 371 1 180 $X=0 $Y=372
X2 5 Vss Vdd G Vdd TIGFET_PCELL_SP15CP15_N3 $T=137 63 0 0 $X=138 $Y=64
X3 Q Vdd Vss 4 Vss TIGFET_PCELL_SP15CP15_N3 $T=137 371 0 0 $X=138 $Y=372
X4 4 Vss Vdd D G TIGFET_PCELL_SP15CP15_N3 $T=443 63 1 180 $X=276 $Y=64
X5 4 Vdd Vss D 5 TIGFET_PCELL_SP15CP15_N3 $T=443 371 1 180 $X=276 $Y=372
.ENDS
***************************************
