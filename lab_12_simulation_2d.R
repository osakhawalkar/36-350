#- **2d.** One problem with simulations is that they can take a long
#time to run. This can be a problem if you merely want to change
#the resulting figure (maybe there was a typo). Thus a better
#strategy is to separate the simulation and plotting functions.
#Edit your previous code to save the p-values to a file and add a
#function `make_plot(datapath)` which reads the data from
#`datapath` and makes the plot.

run_simulation = function(n_trials,n,p,cutoff){
  rep_vec = rep(mode_select(generate_data(n,p),cutoff),each = n_trials)
}
hist(run_simulation(n = c(100,1000,10000), p = 10, cutoff = 0.05))
hist(run_simulation(n = c(100,1000,10000), p = 20, cutoff = 0.05))
hist(run_simulation(n = c(100,1000,10000), p = 50, cutoff = 0.05))

make_plot = function(datapath){
  linesRead = readLines(datapath)
  plot(linesRead)
}

