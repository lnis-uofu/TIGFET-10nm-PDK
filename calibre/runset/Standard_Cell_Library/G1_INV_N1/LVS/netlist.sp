************************************************************************
* auCdl Netlist:
* 
* Library Name:  TIGFET10nm
* Top Cell Name: G1_INV_N1
* View Name:     schematic
* Netlisted on:  Nov 15 15:55:23 2021
************************************************************************

*.EQUATION
*.SCALE METER
*.MEGA
.PARAM



************************************************************************
* Library Name: TIGFET10nm
* Cell Name:    G1_No_Connection_N1
* View Name:    schematic
************************************************************************
.HDL verligoa.va

.SUBCKT G1_No_Connection_N1 A Ap B Bp Vdd Vss X
*.PININFO A:I Ap:I B:I Bp:I X:O Vdd:B Vss:B
XI1 B X Bp Bp Vss / TIGFET
XI0 A Vdd Ap Ap X / TIGFET
.ENDS

************************************************************************
* Library Name: TIGFET10nm
* Cell Name:    G1_INV_N1
* View Name:    schematic
************************************************************************

.SUBCKT G1_INV_N1 IN OUT Vdd Vss
*.PININFO IN:I OUT:O Vdd:B Vss:B
XI0 Vss IN IN Vdd Vdd Vss OUT / G1_No_Connection_N1
.ENDS
