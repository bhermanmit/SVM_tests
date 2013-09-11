#!/usr/bin/env gnuplot

set terminal pdf enhanced
set output 'scattxs12_1.pdf'

set xlabel 'Coolant Density [g/cc]'
set ylabel 'Effective Downscatter XS [1/cm]'

set key top left

plot 'rho_type1/fort.17' with lines lc rgb 'red' lw 3.0 title '1.6% No BPs', \
     'rho_type1/train' with points lc rgb 'red' title '1.6% No BPs Training Points'
