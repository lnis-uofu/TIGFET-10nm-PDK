# TIGFET ID-VD Simulation
.lib ../../model/tigfet_lib.sp tigfet10nm

.param vdd_v=0.7
.global gnd

* Subcircuit NW3G D PGD CG PGS S
XNmos d vdd cg vdd gnd TIGFET nw=1
XPmos d gnd cg gnd vdd TIGFET nw=1

VsourceN_vdd vdd gnd DC vdd_v
VsourceN_d d gnd DC vdd_v
vgate cg gnd DC vdd_v

.temp 25.0

.op

* ID-VD Simulation
.dc VsourceN_d 0 vdd_v 0.005 vgate 0 vdd_v 0.1

.print dc isub(XNmos.D) isub(XPmos.D)

.OPTION PROBE POST=1 POST_VERSION=9601
.end
