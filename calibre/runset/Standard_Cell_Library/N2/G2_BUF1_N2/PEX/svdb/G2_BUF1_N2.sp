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
.SUBCKT G2_BUF1_N2 Vdd Vss A Z
** N=5 EP=4 IP=20 FDC=4
X0 Z Vdd Vss 5 Vss TIGFET_PCELL_SP15CP15_N2 $T=180 155 0 180 $X=0 $Y=64
X1 5 Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N2 $T=180 255 1 180 $X=0 $Y=258
X2 Z Vss Vdd 5 Vdd TIGFET_PCELL_SP15CP15_N2 $T=124 155 1 0 $X=138 $Y=64
X3 5 Vss Vdd A Vdd TIGFET_PCELL_SP15CP15_N2 $T=124 255 0 0 $X=138 $Y=258
.ENDS
***************************************
