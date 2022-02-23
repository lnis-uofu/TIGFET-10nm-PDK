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
.SUBCKT G2_NAND2_N1 Vss Vdd A Z B
** N=5 EP=5 IP=15 FDC=3
X0 Z Vss Vdd A B TIGFET_PCELL_SP15CP15_N1 $T=280 -40 1 180 $X=0 $Y=0
X1 Z Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N1 $T=280 180 1 180 $X=0 $Y=220
X2 Z Vdd Vss B Vss TIGFET_PCELL_SP15CP15_N1 $T=24 180 0 0 $X=138 $Y=220
.ENDS
***************************************
