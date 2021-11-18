* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgs g pgd s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N1 1 2
** N=5 EP=2 IP=0 FDC=1
X0 1 3 4 5 2 tigfet1 $X=-3830 $Y=768 $D=0
.ENDS
***************************************
.SUBCKT G1_INV_N1
** N=6 EP=0 IP=4 FDC=2
X0 1 4 TIGFET_PCELL_SP15CP15_N1 $T=3947 -602 0 0 $X=89 $Y=144
X1 4 6 TIGFET_PCELL_SP15CP15_N1 $T=4085 -602 0 0 $X=227 $Y=144
.ENDS
***************************************
