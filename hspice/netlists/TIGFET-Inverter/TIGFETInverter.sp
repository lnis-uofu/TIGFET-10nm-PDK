
* Include TIGFET Models Library
.lib ../../model/tigfet_lib.sp tigfet10nm

* Global parameters
.temp 25.0
.global vdd gnd

* NW3G TIGFET
.SUBCKT INVX1 vdd gnd vin out
X1 out gnd vin gnd vdd TIGFET nw=1
X2 out vdd vin vdd gnd TIGFET nw=1
.ENDS

* ********************* Circuits ***************************
XNmos vdd gnd vin vout INVX1

* Voltage sources
vsupply vdd gnd DC vdd_v

* **********************************************************


******* DC Analysis *********
* vinput vin 0 DC 0
* .dc vinput 0 vdd_v 0.01

******* Transient Analysis ************
vinput vin 0 pulse(vdd_v 0 '2*rt' rt ft pw '(pw*2)-rt')
.tran 1p '5*pw'

* Hspice Options
.option PROBE POST=1 POST_VERSION=9601
* Simulation parameters
.print v(vin) v(vout) i(vinput)
.end