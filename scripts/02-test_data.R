#### Preamble ####
# Purpose: Test the simulated data of the 2021 Canadian Tobacco and Nicotine Survey (CTNS). The real data can be downloaded from https://www150.statcan.gc.ca/n1/pub/13-25-0001/132500012022001-eng.htm
# Author: Emily Kim
# Data: 17 April 2023
# Contact: emilyuna.kim@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to be able to load in simulated data

#### Workspace setup ####
library(here)

#### Load in Simulated Data ####
simulated_ctns_2021 <- read.csv(here::here("./inputs/simulated_ctns_2021.csv"))

#### Testing Simulated Data ####

#### Test 1 ####
simulated_ctns_2021$"age_group" |>
  unique()|>
  length() == 7

#### Test 2 ####
simulated_ctns_2021$"frequency_smoked_cannabis" |>
  class() == "character"

#### Test 3 ####
simulated_ctns_2021$"gender" |>
  unique()