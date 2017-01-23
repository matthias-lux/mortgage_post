# simulation of the model

length_sim <- 250*30
no_sim <- 5
seed0 <- 15
burn_in <- 500

sim1 <- ugarchsim(modelfit, n.start = burn_in, n.sim = length_sim, m.sim = no_sim, startMethod = 'sample', rseed = seed0)
s1 <- sim1@simulation$seriesSim
