#### separate data prep, model estimation, model fit, and evaluation into different files; have one exec that runs all of them
#### calculate mortgage payment on 30-year fixed with today's rate to get the calculation of payments right

# comparing mortgage payments on ARMs and fixed-rate mortgages

# processing data
source(data_processing.R)


# inspect data
source(data_summary.R)

# model interest rate:
  # model mean of rates via ARMA: 
  #   - r_t = \mu + \alpha r_{t-1} + \eta_{t}
  # model residuals (which are mean-zero) as GARCH/EGARCH model (see CLM p. 486 for a really general model)
  #   - \eta_{t} = \sigma_{t-1} * \eps_t

source(model_estimation.R)

  #   - choose model with best fit, test mortgage payment predictions with second-best model
  #     - evaluate fit through
  #         - LL value
  #         - MSE of \hat(r)_t - r_t (\eta_t is modelled!)
  # the model is a model of interest rates based on IID-normal residuals (innovations to ARMA are not conditionally ID).
# simulate many interest rate paths (starting values):
  #   1. draw IID-normal residuals
  #   2. based on \sigma_{t-1}, calculate \sigma_t
  #   3. calculate \eta_t
  #   4. calculate r_t based on \eta_t and \r_{t-1}
# for each path, calculate mortgage payments (choosing different ARMs):
  #   - check differences in margins for different ARMs
  #   - beginning-of-year interest rate (check)
  #   - both for no cap on increases and a standard cap
# report what these payments are like:
  #   - total payments over the liftetime of the average mortgage (how to deal with inflation?); that's where the MC analysis kicks in
  #   - how to take the average? period by period, or over the whole? does it matter?
  #   - max payment and min payment (how to estimate order statistics?)
  #   - plot different paths to show range in payment experiences.