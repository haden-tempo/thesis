# Last edit: Oct 8 (00:05), 2013
# this file is called pareto_objective.p
# this one shows Pareto frontier of Time-Effort, with 32 B-Doodles,
# but without the datapoints. Just pareto-frotier as a line. 
set size ratio 0.45
#set tmargin at screen 0.6
#set bmargin at screen 0.4
set autoscale# scale axes automatically
unset log# remove any log-scaling
unset label# remove any previous labels
set xtic auto# set xtics automatically
set ytic auto# set ytics automatically
set title " "
set xlabel font "Helvetica,26"
set ylabel font "Helvetica,26"
set xlabel "Expected Time"
set ylabel "Expected Inconvenience"
set key spacing 1.1
set key font "Helvetica,24"
set xtics font "Helvetica,20"
set ytics font "Helvetica,20"
set xr [0.95:2.4]
set yr [2.0:6.2]
set pointsize 3
set term postscript
set output "pareto_objective.eps"
plot "pareto-all-frontier.dat" using 1:2 smooth csplines title "Pareto-frontier", \
     "pareto-objective.dat" using 1:2 smooth csplines title "Objective", \
     "pareto-half.dat" using 1:2 title 'Optimal' with points lt -1 pt 4 ps 2, \
     "pareto-all.dat"  using 1:2 with points ps 1 lt -1 pt 1 title ""

