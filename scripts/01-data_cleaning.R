#### Preamble ####
# Purpose: Cleans data from the 2021 CTNS downloaded from https://www150.statcan.gc.ca/n1/pub/13-25-0001/132500012022001-eng.htm
# Author: Emily Kim
# Data: 27 March 2023
# Contact: emilyuna.kim@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to be able to access and download 2021 CTNS data from https://www150.statcan.gc.ca/n1/pub/13-25-0001/132500012022001-eng.htm
# Any other information needed? Need to be able to access the 2021 CTNS Codebook to understand how values were re-labelled.


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(here)
library(labelled)

#### Load raw data ####
raw_ctns_2021 <- read.csv(here::here("./inputs/data/raw_ctns_2021.csv"))

#### Data Cleaning ####

#### Clean Names ####
cleaned_ctns_2021 <- 
  clean_names(raw_ctns_2021)

#### Select Relevant Columns ####
cleaned_ctns_2021 <-
  cleaned_ctns_2021 |>
  select(agegroup, gender, prov_c, can_10ar, can_25ar, can_17r)

#### Removing NA Rows from Data ####
cleaned_ctns_2021 <- na.omit(cleaned_ctns_2021)

#### Removing Label to be Able to Make Data More Meaningful ####
unlabelled(cleaned_ctns_2021)

#### Re-coding Age Group of Respondent to be More Meaningful ####
cleaned_ctns_2021 <- cleaned_ctns_2021 |>
  mutate(
    agegroup =
      recode(
        agegroup,
        "01" = "15 to 19 years old",
        "02" = "20 to 24 years old",
        "03" = "25 to 34 years old",
        "04" = "35 to 44 years old",
        "05" = "45 to 54 years old",
        "06" = "55 to 64 years old",
        "07" = "65 years old and older"
      )
  )

#### Re-coding Respondent's Gender to be More Meaningful ####
cleaned_ctns_2021 <- cleaned_ctns_2021 |>
  mutate(
    gender =
      recode(
        gender,
        "1" = "Male",
        "2" = "Female",
        "9" = "Not stated",
      )
  )

#### Re-coding Respondent's Province of Residence to be More Meaningful ####
cleaned_ctns_2021 <- cleaned_ctns_2021 |>
  mutate(
    prov_c =
      recode(
        prov_c,
        "10" = "Newfoundland and Labrador",
        "11" = "Prince Edward Island",
        "12" = "Nova Scotia",
        "13" = "New Brunswick",
        "24" = "Quebec",
        "35" = "Ontario",
        "46" = "Manitoba",
        "47" = "Saskatchewan",
        "48" = "Alberta",
        "59" = "British Columbia"
      )
  )

#### Re-coding Respondent's Frequency of Smoking Cannabis - In the Past 30 Days to be More Meaningful ####
cleaned_ctns_2021 <- cleaned_ctns_2021 |>
  mutate(
    can_10ar =
      recode(
        can_10ar,
        "1" = "Daily",
        "2" = "Less than daily, but at least once a week",
        "3" = "Less than once a week, but at least once in the past month",
        "4" = "Not at all",
        "6" = "Valid skip",
        "9" = "Not stated",
      )
  )

#### Re-coding Respondent's Frequency of Vaping Cannabis - In the Past 30 Days to be More Meaningful ####
cleaned_ctns_2021 <- cleaned_ctns_2021 |>
  mutate(
    can_25ar =
      recode(
        can_25ar,
        "1" = "Daily",
        "2" = "Less than daily, but at least once a week",
        "3" = "Less than once a week, but at least once in the past month",
        "4" = "Not at all",
        "6" = "Valid skip",
        "9" = "Not stated",
      )
  )

#### Re-coding Respondent's Frequency of Consuming Edibles - In the Past 30 Days to be More Meaningful ####
cleaned_ctns_2021 <- cleaned_ctns_2021 |>
  mutate(
    can_17r =
      recode(
        can_17r,
        "1" = "At least once in the past 30 days",
        "2" = "Not at all",
        "6" = "Valid skip",
        "9" = "Not stated",
      )
  )


#### Save Data ####
write_csv(cleaned_ctns_2021, here::here("inputs/data/cleaned_ctns_2021.csv"))
