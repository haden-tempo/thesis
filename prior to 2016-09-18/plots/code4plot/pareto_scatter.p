# Last edit: Oct 8 (00:05), 2013
# this file is called pareto_scatter.p
# this one shows Pareto frontier of Time-Effort, with 32 B-Doodles.
# 3 special B-Doodles: Doodle, Half-n-half, One-at-a-time. 
# The rest 29 B-Doodles are "others". Also, optimal is NOT shown in this figure.
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
set output "pareto_scatter.eps"
plot"pareto-doodle.dat" using 1:2 title 'Doodle' with points lt -1 pt 8 , \
"pareto-one.dat" using 1:2 title 'One-at-a-time' with points lt -1 pt 10 , \
"pareto-others30.dat" using 1:2 title 'Other B-Doodles' with points ps 1 lt -1 pt 2
#, \
#"pareto-all-frontier.dat" using 1:2 smooth csplines title ""

# plot"pareto-doodle.dat" using 1:2 title 'Doodle' with points lt -1 pt 8 , \
#"pareto-half.dat" using 1:2 title 'Half-n-half' with points lt -1 pt 6 , \
#"pareto-optimal.dat" using 1:2 title 'Optimal' with points lt -1 pt 4 , \
#"pareto-one.dat" using 1:2 title 'One-at-a-time' with points lt -1 pt 10 , \
#"pareto-others.dat" using 1:2 title 'Other B-Doodles' with points ps 1 lt -1 pt 2



