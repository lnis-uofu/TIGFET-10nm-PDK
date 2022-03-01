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
.SUBCKT G3_AND2_N2 Vss Vdd A B Z
** N=6 EP=5 IP=25 FDC=5
X0 4 Vss Vdd A B TIGFET_PCELL_SP15CP15_N2 $T=180 -3 1 180 $X=0 $Y=0
X1 4 Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N2 $T=180 274 1 180 $X=0 $Y=277
X2 4 Vdd Vss B Vss TIGFET_PCELL_SP15CP15_N2 $T=124 274 0 0 $X=138 $Y=277
X3 Z Vdd Vss 4 Vss TIGFET_PCELL_SP15CP15_N2 $T=456 274 1 180 $X=276 $Y=277
X4 Z Vss Vdd 4 Vdd TIGFET_PCELL_SP15CP15_N2 $T=400 274 0 0 $X=414 $Y=277
.ENDS
***************************************
