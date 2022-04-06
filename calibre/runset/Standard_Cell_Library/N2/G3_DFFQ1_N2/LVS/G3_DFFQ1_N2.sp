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
.SUBCKT G3_DFFQ1_N2 Vss CK Vdd D Q
** N=7 EP=5 IP=30 FDC=6
X0 4 Vss Vdd CK Vdd TIGFET_PCELL_SP15CP15_N2 $T=180 61 1 180 $X=0 $Y=64
X1 4 Vdd Vss CK Vss TIGFET_PCELL_SP15CP15_N2 $T=124 61 0 0 $X=138 $Y=64
X2 6 Vdd Vss D CK TIGFET_PCELL_SP15CP15_N2 $T=456 61 1 180 $X=276 $Y=64
X3 Q Vss Vdd 6 CK TIGFET_PCELL_SP15CP15_N2 $T=456 325 1 180 $X=276 $Y=328
X4 6 Vss Vdd D 4 TIGFET_PCELL_SP15CP15_N2 $T=400 61 0 0 $X=414 $Y=64
X5 Q Vdd Vss 6 4 TIGFET_PCELL_SP15CP15_N2 $T=400 325 0 0 $X=414 $Y=328
.ENDS
***************************************
