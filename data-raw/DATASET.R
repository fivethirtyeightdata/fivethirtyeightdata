## code to prepare `DATASET` dataset goes here
library(dplyr)
library(tidyr)
library(readr)
url <- "https://raw.githubusercontent.com/fivethirtyeight/data/master/twitter-ratio/senators.csv"
all_senators <- read_csv(url) %>%
  mutate(
    party = as.factor(party),
    state = as.factor(state),
    created_at = as.POSIXct(created_at, tz = "GMT", format = "%m/%d/%Y %H:%M"),
    text =  gsub("[^\x01-\x7F]", "", text)
  ) %>%
  select(created_at, user, everything())
usethis::use_data(all_senators, overwrite = TRUE)
