
* Include TIGFET Models Library
.lib ../../model/tigfet_lib.sp tigfet22nm

* Global parameters
.param vdd=vdd_v
.temp 25.0

.SUBCKT TIGFET_INVX1 vdd gnd vin out
X1 out gnd vin gnd vdd TIGFET nw=1
X2 gnd vdd vin vdd out TIGFET nw=1
.ENDS

* Voltage sources
vsupply vdd 0 DC vdd

* ********************* Circuits ***************************

* ( 9 Stage Ring Oscillator )
X01 vdd gnd out09 out01 TIGFET_INVX1
X02 vdd gnd out01 out02 TIGFET_INVX1
X03 vdd gnd out02 out03 TIGFET_INVX1
X04 vdd gnd out03 out04 TIGFET_INVX1
X05 vdd gnd out04 out05 TIGFET_INVX1
X06 vdd gnd out05 out06 TIGFET_INVX1
X07 vdd gnd out06 out07 TIGFET_INVX1
X08 vdd gnd out07 out08 TIGFET_INVX1
X09 vdd gnd out08 out09 TIGFET_INVX1

* **********************************************************

* Hspice Options
.option PROBE POST=1 POST_VERSION=9601
.measure tran period trig v(out09) val=0.6 rise=4 targ v(out09) val=0.6 rise=5
.meas FreqGHz param="1E-9/period"
.meas RiseTime_psec param="1E12*period/9"

* Simulation parameters
.ic v(out09)=vdd
.tran 1p 5n uic
.print v(out09)
.end