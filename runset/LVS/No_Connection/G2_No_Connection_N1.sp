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
.SUBCKT G2_No_Connection_N1
** N=6 EP=0 IP=8 FDC=4
X0 1 3 TIGFET_PCELL_SP15CP15_N1 $T=3860 843 1 0 $X=2 $Y=29
X1 2 4 TIGFET_PCELL_SP15CP15_N1 $T=3860 -587 0 0 $X=2 $Y=159
X2 3 5 TIGFET_PCELL_SP15CP15_N1 $T=3998 843 1 0 $X=140 $Y=29
X3 4 6 TIGFET_PCELL_SP15CP15_N1 $T=3998 -587 0 0 $X=140 $Y=159
.ENDS
***************************************
