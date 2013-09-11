#!/usr/bin/env gnuplot

set terminal pdf enhanced
set output 'scattxs12train.pdf'

set xlabel 'Datapoint'
set ylabel 'Predicted to Trained Group 2 Effective Downscatter XS'

unset key

plot 'error' using 0:($1/$2) with points
