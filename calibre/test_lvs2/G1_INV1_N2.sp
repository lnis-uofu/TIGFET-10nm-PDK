* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgs g pgd s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N2 1 2
** N=5 EP=2 IP=0 FDC=1
X0 1 3 4 5 2 tigfet1 $X=42 $Y=13 $D=0
.ENDS
***************************************
.SUBCKT G1_INV1_N2
** N=6 EP=0 IP=4 FDC=2
X0 1 4 TIGFET_PCELL_SP15CP15_N2 $T=-14 61 0 0 $X=0 $Y=64
X1 4 6 TIGFET_PCELL_SP15CP15_N2 $T=124 61 0 0 $X=138 $Y=64
.ENDS
***************************************
