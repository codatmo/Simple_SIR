library("cmdstanr")
library("rstan")

# Run from command line: Rscript run.R
# If running from RStudio remember to set the working directory
# >Session>Set Working Directory>To Source File Location
source("data/SIR_data.R")
model <- cmdstan_model("stan/Simple_SIR.stan")
stan_data <- list(N_t=N_t, stoi=stoi, t=t, y0=y0, B=B)

# generate data for SIR model
# data {
#   int<lower=0> N_t;
#   real t[N_t];
#   vector[4] y0;
#   int stoi[N_t];
#   real B[N_t];
# }


fit <- model$sample(data=stan_data, output_dir="output")
print(fit)






system(paste("stan/Simple_SIR sample data",
            "file=data/SIR_data.R > output/out1"))

cat(paste(readLines('output/out1'), "\n", sep=""), sep="")

fit <- stan(model_code = )
expose_stan_functions()

