library("cmdstanr")

# Run from command line: Rscript run.R
# If running from RStudio remember to set the working directory
# >Session>Set Working Directory>To Source File Location
source("data/SIR_data.R")
model <- cmdstan_model("stan/Simple_SIR.stan")
stan_data <- list(n_days=N_t, stoi=stoi, t=t, y0=y0, B=B)
fit <- model$sample(data=stan_data, output_dir="output")
print(fit)







