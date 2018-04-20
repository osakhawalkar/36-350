#Question 2A: Write a function `generate_data(n, p)` which returns a list
#with the following elements: `covariates` which is a n-by-p matrix
#of draws from the standard normal distribution, and `responses`
#which is a vector of length n of draws from the standard normal.

generate_data = function(n, p){
  picks = rnorm(n*p, mean = 0, sd = 1)
  covariates = matrix(picks, n, p)
  responses = vector(mode = "logical", length = n)
  for(i in 1:length(responses)){
    responses[i] = rnorm(n)
  }
  return(list(covariates,responses))
}
