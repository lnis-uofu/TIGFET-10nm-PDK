* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgs g pgd s
.ENDS
***************************************
.SUBCKT TEST_LVS
** N=9 EP=0 IP=0 FDC=2
X0 1 4 5 6 2 tigfet1 $X=29 $Y=23 $D=0
X1 2 7 8 9 3 tigfet1 $X=167 $Y=23 $D=0
.ENDS
***************************************
