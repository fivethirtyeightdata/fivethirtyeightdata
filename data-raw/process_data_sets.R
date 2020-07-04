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



# inconvenient-sequel ----------------------------------------------------------
ratings <- read_csv("data-raw/inconvenient-sequel/ratings.csv") %>%
  mutate(category = as.factor(category)) %>% 
  rename(
    votes_1 = `1_votes`, votes_2 = `2_votes`, votes_3 = `3_votes`, 
    votes_4 = `4_votes`, votes_5 = `5_votes`, votes_6 = `6_votes`,
    votes_7 = `7_votes`, votes_8 = `8_votes`, votes_9 = `9_votes`,
    votes_10 = `10_votes`,
    pct_1 = `1_pct`, pct_2 = `2_pct`, pct_3 = `3_pct`, pct_4 = `4_pct`,
    pct_5 = `5_pct`, pct_6 = `6_pct`, pct_7 = `7_pct`, pct_8 = `8_pct`,
    pct_9 = `9_pct`, pct_10 = `10_pct`
  )
usethis::use_data(ratings, overwrite = TRUE)



# mayweather-mcgregor ---------------------------------------------------------------
mayweather_mcgregor_tweets <- read_csv("data-raw/mayweather-mcgregor/tweets.csv") %>%
  mutate(
    emojis = as.logical(emojis),
    retweeted = as.logical(retweeted),
    id = as.character(id)
  )
usethis::use_data(mayweather_mcgregor_tweets, overwrite = TRUE)

