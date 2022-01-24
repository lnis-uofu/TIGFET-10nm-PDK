* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgs g pgd s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N1 1 2
** N=5 EP=2 IP=0 FDC=1
X0 1 3 4 5 2 tigfet1 $X=142 $Y=62 $D=0
.ENDS
***************************************
.SUBCKT G1_INV1_N1 A Z
** N=6 EP=2 IP=4 FDC=2
X0 1 Z TIGFET_PCELL_SP15CP15_N1 $T=-54 26 0 0 $X=60 $Y=66
X1 Z 6 TIGFET_PCELL_SP15CP15_N1 $T=84 26 0 0 $X=198 $Y=66
.ENDS
***************************************
