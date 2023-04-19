# Consistent Demographic Patterns in Cannabis Use Across Canada May Positively Correlate to High Frequency Use

## Overview

This repository contains all files necessary to conduct an analysis of the selected demographic variables of age, gender, and region in relation to different methods of cannabis usage derived from the 2021 Canadian Tobacco and Nicotine Survey (CTNS).  The aim of this analysis is to determine a correlation between demographic identifiers, namely gender, and the use of cannabis in smoking, vaping, and edible intake methods.

## Requirements

This analysis requires RStudio and Quarto. To complete this project you will need to install both of these. We recommend using RStudio on your local computer or Posit Cloud as your IDE.

Following the download of your environment, you will need to download the packages associated with this project. These are:

-   `tidyverse`
-   `ggplot2`
-   `RColorBrewer`
-   `kableExtra`
-   `knitr`
-   `dplyr`
-   `here`
-   `labelled`
-   `janitor`
-   `readr`
-   `tibble`

## Downloading Data

As the data for this project comes from the Canadian Tobacco and Nicotine Survey (CTNS), we do not have permission to store the data within our repository. To access this data, you will need to download the data physically from [Statistics Canada website](https://www150.statcan.gc.ca/n1/pub/13-25-0001/132500012022001-eng.htm).

## Cleaning Data

To help us use and understand the data, within the scripts folder, you will find the script, 01-data_cleaning.R. This script handles all of our data cleaning.

## Analyzing Data

For this project, data analysis occurs within the paper.qmd file which is located at

`outputs/paper.qmd`

This is a Quarto document and can be used to generate the paper.pdf file which is located at

`outputs/paper.pdf`

Raw references used within the .qmd file are available at

`outputs/references.bib`

## Simulating Data

Simulated data for this project is located at

`scripts/00-simulate_data.R`

## Testing data

Three tests for this project are located at

`scripts/02-test_data.R`