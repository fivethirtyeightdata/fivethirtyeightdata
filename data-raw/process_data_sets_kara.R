library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

#reading in csv
nba_elo <- read_csv("https://projects.fivethirtyeight.com/nba-model/nba_elo.csv")
rownames(nba_elo) <- NULL

#tidying and taming data for nba_elo
nba_elo <- nba_elo %>%
  clean_names() %>%
  mutate_if(is.logical, as.numeric) %>%
  mutate(neutral = as.logical(neutral)) %>%
  mutate(playoff = as.logical(playoff))

#setting up .rda
usethis::use_data(nba_elo, overwrite = TRUE)
