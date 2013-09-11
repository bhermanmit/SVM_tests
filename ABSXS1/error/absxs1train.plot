#!/usr/bin/env gnuplot

set terminal pdf enhanced
set output 'absxs1train.pdf'

set xlabel 'Datapoint'
set ylabel 'Predicted to Trained Group 1 Abssorption XS'

unset key

plot 'error' using 0:($1/$2) with points 
