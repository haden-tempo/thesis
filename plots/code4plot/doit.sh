rm -rf *.pdf
rm -rf *.eps

gnuplot pareto_scatter.p; ps2eps -f -B -l -R + pareto_scatter.eps; mv pareto_scatter.eps.eps pareto_scatter_fin.eps;  ps2pdf pareto_scatter_fin.eps

gnuplot pareto_objective.p; ps2eps -f -B -l -R + pareto_objective.eps; mv pareto_objective.eps.eps pareto_objective_fin.eps;  ps2pdf pareto_objective_fin.eps

gnuplot pareto_combined.p; ps2eps -f -B -l -R + pareto_combined.eps; mv pareto_combined.eps.eps pareto_combined_fin.eps;  ps2pdf pareto_combined_fin.eps

