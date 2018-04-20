#2b. Write a function `model_select(covariates, responses,cutoff)` which fits the linear regression 
#`responses ~ covariates` and retains only those covariates whose coefficient p-values are
#less than or equal to `cutoff`. Then fit another regression using
#only the retained covariates and return the p-values from this
#reduced model. If there are no retained covariates return an empty
#vector. *HINT*: You can use indexing inside of formulas:`lm(responses ~ covariates[, c(1, 2)])`
#will fit a regression with only the first two covariates.

model_select = function(covariates, responses, cutoff){
  cov.lm = lm(responses ~ covariates)
  significant = list()
  i = 1
  if(summary(cov.lm)$p.values[[i]] <= cutoff){
    significant[i] = summary(cov.lm)$p.values[[i]]
  }
  cov.lm.retained = lm(responses ~ significant)
  if(length(cov.lm.retained) > 0){
    return (cov.lm.retained)
  }
  else{
    return (c())
  }
}
