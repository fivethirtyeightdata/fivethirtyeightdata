library(dplyr)
library(tidyr)
library(readr)

# twitter-ratio---------------------------------------------------------------------
senators <- read_csv("data-raw/twitter-ratio/senators.csv") %>%
  mutate(
    party = as.factor(party),
    state = as.factor(state),
    created_at = as.POSIXct(created_at, tz = "GMT", format = "%m/%d/%Y %H:%M"),
    text =  gsub("[^\x01-\x7F]", "", text)
  ) %>%
  select(created_at, user, everything())
usethis::use_data(senators, overwrite = TRUE)

