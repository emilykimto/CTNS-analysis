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
# [...UPDATE THIS...]

#### Clean data ####
# [...UPDATE THIS...]
raw_data <- read_csv("inputs/data/raw_data.csv")




#### Save data ####
# [...UPDATE THIS...]
# change cleaned_data to whatever name you end up with at the end of cleaning
write_csv(cleaned_data, "outputs/data/cleaned_data.csv")

