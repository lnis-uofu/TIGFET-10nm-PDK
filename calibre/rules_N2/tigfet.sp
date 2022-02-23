*~/TIGFET-10nm-PDK/TIGFET10nm/TIGFET_PCELL_SP15CP15_N1/hspiceD/spice.spc
*~/TIGFET-10nm-PDK/calibre/tig.sp



* This file must be added in Calibre > Setup > Netlist Export in the Inlcude File section
* Otherwise LVS will not work


.SUBCKT tigfet1 D PGD CG PGS S
.ENDS

.SUBCKT TIGFET_PCELL_SP15CP15_N2 D PGD CG PGS S
 X0 D PGD CG PGS S tigfet1 
.ENDS

