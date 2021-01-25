# Simple SIR Model

This example model is based on the case study at [https://mc-stan.org/users/documentation/case-studies/boarding_school_case_study.html](https://mc-stan.org/users/documentation/case-studies/boarding_school_case_study.html). The case study is an excellent introduction to both Stan and SIR (Susceptible, Infected, Resoved) compartment models. Its use here is to serve as an example of a well documented and validated SIR model and has more focus on Bayesian workflow and understandability to practitioners. The documents are not version locked so there may be drift in exact details. 

## Resources

* /README.md: This document
* /run.R: Compiles and runs the model with some simple reporting in the R language
* /model_overview.Rmd: Generates Bayesian_workflow_checklist.html and details workflow steps taken with this model. 
* /data: contains data files.
* /stan: contains stan files.
* /output: directory where Stan run output is stored
