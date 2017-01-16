# specifying the model
model <- ugarchspec(variance.model=list(model='sGARCH', garchOrder=c(1,1)), mean.model=list(armaOrder=c(5,3), include.mean=TRUE), distribution.model='sstd')

#estimating the model
modelfit <- ugarchfit(spec=model, data=libor$libor12m)

show(modelfit)

# document proper model fit 
  # summary stats
  # plots

# read: https://cran.r-project.org/web/packages/rugarch/vignettes/Introduction_to_the_rugarch_package.pdf
# read: http://faculty.chicagobooth.edu/ruey.tsay/teaching/bs41202/sp2015/IntroPackages.pdf