###########################
# File: bairoch-1988-tidy.R
# Description: Create a tidy Bairoch dataset
# Date: 2015-12-02
# Author: Jake Russ
# Notes: 
# To do:
############################

library(tidyr)
library(readr)

# Import original data
original <- read_csv(file      = "bairoch-1988.csv", 
                     col_types = list("800"  = col_integer(),
                                      "900"  = col_integer()))

# Tidy the dataframe
tidy_df <- original %>%
  gather(year, population, -country, -city, convert = TRUE)

# Output the tidy df
write_csv(tidy_df, "bairoch-1988-tidy.csv")
