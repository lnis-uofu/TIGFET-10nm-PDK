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
.SUBCKT G2_BUF1_N3 Vdd Vss A Z
** N=5 EP=4 IP=20 FDC=4
X0 Z Vdd Vss 5 Vss TIGFET_PCELL_SP15CP15_N3 $T=167 197 0 180 $X=0 $Y=64
X1 5 Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N3 $T=167 301 1 180 $X=0 $Y=302
X2 Z Vss Vdd 5 Vdd TIGFET_PCELL_SP15CP15_N3 $T=137 197 1 0 $X=138 $Y=64
X3 5 Vss Vdd A Vdd TIGFET_PCELL_SP15CP15_N3 $T=137 301 0 0 $X=138 $Y=302
.ENDS
***************************************
