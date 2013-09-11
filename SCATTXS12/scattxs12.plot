#!/usr/bin/env gnuplot

set terminal pdf enhanced
set output 'scattxs12.pdf'

set xlabel 'Coolant Density [g/cc]'
set ylabel 'Effective Downscatter XS [1/cm]'

set key top left

plot 'rho_type1/fort.17' with lines lc rgb 'red' lw 3.0 title '1.6% No BPs', \
     'rho_type2/fort.17' with lines lc rgb 'blue' lw 3.0 title '2.4% 12 BPs', \
     'rho_type3/fort.17' with lines lc rgb 'orange' lw 3.0 title '2.4% 16 BPs', \
     'rho_type4/fort.17' with lines lc rgb 'black' lw 3.0 title '3.1% No BPs', \
     'rho_type5/fort.17' with lines lc rgb '#006400' lw 3.0 title '3.1% 16 BPs', \
     'rho_type6/fort.17' with lines lc rgb 'purple' lw 3.0 title '3.1% 20 BPs'
