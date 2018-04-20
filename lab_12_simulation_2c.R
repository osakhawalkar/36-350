#**2c.** Write a function `run_simulation(n_trials, n, p, cutoff)`
#which uses the previous two functions to run `n_trials`
#simulations which uses data from `generate_data` in
#`model_select`, collects the returned p-values and displays a
#histogram of the p-values. Under the null hypothesis (that the
#regression coefficients are zero) these p-values should be
#uniformly distributed between 0 and 1; does this seem to be the
#case? Display figures for all combinations of `n = c(100, 1000,
#10000)`, `p = 10, 20, 50` and set `cutoff = 0.05`.

run_simulation = function(n_trials,n,p,cutoff){
  rep_vec = rep(mode_select(generate_data(n,p),cutoff),each = n_trials)
}
hist(run_simulation(n = c(100,1000,10000), p = 10, cutoff = 0.05))
hist(run_simulation(n = c(100,1000,10000), p = 20, cutoff = 0.05))
hist(run_simulation(n = c(100,1000,10000), p = 50, cutoff = 0.05))