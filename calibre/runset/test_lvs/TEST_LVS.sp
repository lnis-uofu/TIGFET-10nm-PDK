* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgs g pgd s
.ENDS
***************************************
.SUBCKT TEST_LVS
** N=10 EP=0 IP=0 FDC=2
X0 2 5 6 7 3 tigfet1 $X=29 $Y=23 $D=0
X1 3 8 9 10 4 tigfet1 $X=167 $Y=23 $D=0
.ENDS
***************************************
