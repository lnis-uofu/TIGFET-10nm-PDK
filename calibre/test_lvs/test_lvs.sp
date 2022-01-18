* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgs g pgd s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N1
** N=5 EP=0 IP=0 FDC=0
*.SEEDPROM
.ENDS
***************************************
.SUBCKT test_lvs
** N=14 EP=0 IP=10 FDC=2
X0 1 9 10 11 4 tigfet1 $X=88 $Y=88 $D=0
X1 4 12 13 14 6 tigfet1 $X=226 $Y=88 $D=0
.ENDS
***************************************
