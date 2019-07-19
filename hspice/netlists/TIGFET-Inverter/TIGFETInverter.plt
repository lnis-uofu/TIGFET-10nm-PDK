set term wxt enhanced

set key left bottom
set format x "%0.2s%c"
set format y "%0.2s%c"

set grid

# * * * * * * * * * * * * * * * * * * * * * * * * * * * * Transient Plot * * * * * * * * * * * * * * * * * * * * * * 
set ylabel "Voltage"
# set xlabel "Time"

set multiplot layout 1, 1 title "TIGFET10nm INVERTER" font ",14"
plot 'TIGFETInverter.dat' u 1:2 w lp title 'Vin', \
     'TIGFETInverter.dat' u 1:3 w lp title 'Vout'

# plot 'TIGFETInverter.dat' u 1:4 w lp title 'Vin' axes y2
unset multiplot
    

pause mouse key
 if (MOUSE_KEY != 9) reread