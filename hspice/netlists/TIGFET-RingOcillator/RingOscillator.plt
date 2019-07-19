set term wxt enhanced

set key left bottom
set format x "%0.2s%c"
set format y "%0.2s%c"

set grid

# * * * * * * * * * * * * * * * * * * * * * * * * * * * * Transient Plot * * * * * * * * * * * * * * * * * * * * * *
set ylabel "Voltage"
# set xlabel "Time"

set multiplot layout 1, 1 title "TIGFET10nm 9stage Ring Oscillator" font ",14"
plot 'RingOscillator.dat' u 1:2 w lp title 'Vin-A'	
unset multiplot

pause mouse key
 if (MOUSE_KEY != 9) reread