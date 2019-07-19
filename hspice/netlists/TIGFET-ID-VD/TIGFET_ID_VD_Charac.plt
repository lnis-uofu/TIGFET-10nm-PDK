#set term wxt enhanced

set title "ID-VD Curve"

set key left top
set format x "%0.2s%c"
set format y "%0.2s%c"

set grid

# * * * * * * * * * * * * * * * * * * * * * * * * * * * * Transient Plot * * * * * * * * * * * * * * * * * * * * * *
set ylabel "Current (A)"
set xlabel "Drain Voltage (V)"

plot 'TIGFET_ID_VD_Charac.dat' u 1:($2) w lp title 'NMOS', \
     'TIGFET_ID_VD_Charac.dat' u 1:(-$3) w lp title 'PMOS'

pause mouse key
 if (MOUSE_KEY != 9) reread 