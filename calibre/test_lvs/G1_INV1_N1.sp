* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgs g pgd s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N1 2 3
** N=6 EP=2 IP=0 FDC=1
*.CALIBRE ISOLATED NETS: Vdd
X0 2 4 5 6 3 tigfet1 $X=142 $Y=62 $D=0
.ENDS
***************************************
.SUBCKT G1_INV1_N1 Vdd A Z Vss
** N=6 EP=4 IP=6 FDC=2
X0 Vdd Z TIGFET_PCELL_SP15CP15_N1 $T=-54 26 0 0 $X=60 $Y=66
X1 Z Vss TIGFET_PCELL_SP15CP15_N1 $T=84 26 0 0 $X=198 $Y=66
.ENDS
***************************************
