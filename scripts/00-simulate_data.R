#### Preamble ####
# Purpose: Simulates relevant data from the 2021 Canadian Tobacco and Nicotine Survey which can be downloaded from https://www150.statcan.gc.ca/n1/pub/13-25-0001/132500012022001-eng.htm
# Author: Emily Kim
# Data: 17 April 2023
# Contact: emilyuna.kim@mail.utoronto.ca
# License: MIT
# Pre-requisites: To understand data need to know where to find the 2021 Canadian Tobacco and Nicotine Survey data

#### Workspace setup ####
library(tibble)
library(readr)
library(here)

#### Simulate data ####

set.seed(853)

simulated_ctns_2021 <-
  tibble(
    "age_group" = sample(
      x = c(
        "15 to 19 years old",
        "20 to 24 years old",
        "25 to 34 years old",
        "35 to 44 years old",
        "45 to 54 years old",
        "55 to 64 years old",
        "65 years old and older"
      ),
      size = 10000,
      replace = TRUE
    ),
    "gender" = sample(
      x = c(
        "Male",
        "Female",
        "Not stated"
      ),
      size = 10000,
      replace = TRUE
    ),
    "province_of_residence" = sample(
      x = c(
        "Newfoundland and Labrador",
        "Prince Edward Island",
        "Nova Scotia",
        "New Brunswick",
        "Quebec",
        "Ontario",
        "Manitoba",
        "Saskatchewan",
        "Alberta",
        "British Columbia"
      ),
      size = 10000,
      replace = TRUE
    ),
    "frequency_smoked_cannabis" = sample(
      x = c(
        "Daily",
        "Less than daily, but at least once a week",
        "Less than once a week, but at least once",
        "In the past month",
        "Not at all"
      ),
      size = 10000,
      replace = TRUE
    ),
    "frequency_vaped_cannabis" = sample(
      x = c(
        "Daily",
        "Less than daily, but at least once a week",
        "Less than once a week, but at least once",
        "In the past month",
        "Not at all"
      ),
      size = 10000,
      replace = TRUE
    ),
    "frequency_consumed_edibles" = sample(
      x = c(
        "At least once in the past 30 days",
        "Not at all"
      ),
      size = 10000,
      replace = TRUE
    ),
    
  )

#### Save Simulated Data ####
write_csv(simulated_ctns_2021, here::here("inputs/simulated_ctns_2021.csv")) #download to inputs/data

