#!/usr/bin/env gnuplot

set terminal pdf enhanced
set output 'trainxs1train.pdf'

set xlabel 'Datapoint'
set ylabel 'Predicted to Trained Group 1 Transport XS'

unset key

plot 'error' using 0:($1/$2) with points
