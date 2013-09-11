#!/usr/bin/env gnuplot

set terminal pdf enhanced
set output 'nfissxs2train.pdf'

set xlabel 'Datapoint'
set ylabel 'Predicted to Trained Group 2 Nu-fission XS'

unset key

plot 'error' using 0:($1/$2) with points
