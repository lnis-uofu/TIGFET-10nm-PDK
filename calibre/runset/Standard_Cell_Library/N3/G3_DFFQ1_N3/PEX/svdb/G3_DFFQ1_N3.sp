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
.SUBCKT G3_DFFQ1_N3 Vss CK Vdd D Q
** N=7 EP=5 IP=30 FDC=6
X0 4 Vss Vdd CK Vdd TIGFET_PCELL_SP15CP15_N3 $T=167 19 1 180 $X=0 $Y=20
X1 4 Vdd Vss CK Vss TIGFET_PCELL_SP15CP15_N3 $T=137 19 0 0 $X=138 $Y=20
X2 6 Vdd Vss D CK TIGFET_PCELL_SP15CP15_N3 $T=443 19 1 180 $X=276 $Y=20
X3 Q Vss Vdd 6 CK TIGFET_PCELL_SP15CP15_N3 $T=443 327 1 180 $X=276 $Y=328
X4 6 Vss Vdd D 4 TIGFET_PCELL_SP15CP15_N3 $T=413 19 0 0 $X=414 $Y=20
X5 Q Vdd Vss 6 4 TIGFET_PCELL_SP15CP15_N3 $T=413 327 0 0 $X=414 $Y=328
.ENDS
***************************************
