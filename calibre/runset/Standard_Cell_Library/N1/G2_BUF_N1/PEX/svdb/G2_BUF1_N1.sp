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
.SUBCKT G2_BUF1_N1 Vdd Vss A Z
** N=5 EP=4 IP=20 FDC=4
X0 Z Vdd Vss 5 Vss TIGFET_PCELL_SP15CP15_N1 $T=280 172 0 180 $X=0 $Y=64
X1 5 Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N1 $T=280 174 1 180 $X=0 $Y=214
X2 Z Vss Vdd 5 Vdd TIGFET_PCELL_SP15CP15_N1 $T=24 172 1 0 $X=138 $Y=64
X3 5 Vss Vdd A Vdd TIGFET_PCELL_SP15CP15_N1 $T=24 174 0 0 $X=138 $Y=214
.ENDS
***************************************
