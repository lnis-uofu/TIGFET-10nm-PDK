* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgs g pgd s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N1
** N=5 EP=0 IP=0 FDC=1
X0 1 3 4 5 2 tigfet1 $X=142 $Y=62 $D=0
.ENDS
***************************************
