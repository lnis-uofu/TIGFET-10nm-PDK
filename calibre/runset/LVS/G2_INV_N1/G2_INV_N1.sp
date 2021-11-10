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
.SUBCKT G2_INV_N1
** N=8 EP=0 IP=8 FDC=4
X0 1 4 TIGFET_PCELL_SP15CP15_N1 $T=3888 842 1 0 $X=30 $Y=28
X1 1 5 TIGFET_PCELL_SP15CP15_N1 $T=3888 -588 0 0 $X=30 $Y=158
X2 4 8 TIGFET_PCELL_SP15CP15_N1 $T=4026 842 1 0 $X=168 $Y=28
X3 5 8 TIGFET_PCELL_SP15CP15_N1 $T=4026 -588 0 0 $X=168 $Y=158
.ENDS
***************************************
