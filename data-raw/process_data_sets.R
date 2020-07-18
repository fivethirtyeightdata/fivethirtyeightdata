library(dplyr)
library(tidyr)
library(readr)
library(janitor)
library(lubridate)
library(stringr)

# Datasets originally cleaned and written by Maggie Shea

# twitter-ratio---------------------------------------------------------------------
senators <- read_csv("data-raw/twitter-ratio/senators.csv") %>%
  mutate(
    party = as.factor(party),
    state = as.factor(state),
    created_at = as.POSIXct(created_at, tz = "GMT", format = "%m/%d/%Y %H:%M"),
    text = gsub("[^\x01-\x7F]", "", text)
  ) %>%
  select(created_at, user, everything())
usethis::use_data(senators, overwrite = TRUE)


barack_obama <- read_csv("data-raw/twitter-ratio/BarackObama.csv") %>%
  mutate(
    created_at = as.POSIXct(created_at, tz = "GMT", format = "%m/%d/%Y %H:%M"),
    text =  gsub("[^\x01-\x7F]", "", text)
  )
real_donald_trump <- read_csv("data-raw/twitter-ratio/realDonaldTrump.csv") %>%
  mutate(
    created_at = as.POSIXct(created_at, tz = "GMT", format = "%m/%d/%Y %H:%M"),
    text =  gsub("[^\x01-\x7F]", "", text)
  )
twitter_presidents <- bind_rows(barack_obama, real_donald_trump) %>%
  select(created_at, user, everything())
usethis::use_data(twitter_presidents, overwrite=TRUE)


# nfl-elo---------------------------------------------------------------------
nfl_elo <- 
  "https://projects.fivethirtyeight.com/nfl-api/nfl_elo.csv" %>% 
  read_csv() %>%
  clean_names() %>%
  mutate(
    team1 = as.factor(team1),
    team2 = as.factor(team2),
    neutral = ifelse(neutral == 1, TRUE, FALSE)
  )
usethis::use_data(nfl_elo, overwrite = TRUE)


# nba-carmelo---------------------------------------------------------------------
nba_carmelo <- read_csv("https://projects.fivethirtyeight.com/nba-model/nba_elo.csv") %>%
  clean_names() %>%
  mutate(
    team1 = as.factor(team1),
    team2 = as.factor(team2),
    playoff = ifelse(playoff == "t", TRUE, FALSE),
    playoff = ifelse(is.na(playoff), FALSE, TRUE),
    neutral = ifelse(neutral == 1, TRUE, FALSE)
  ) %>%
  select(-c(raptor1_pre, raptor2_pre, raptor_prob1, raptor_prob2)) %>% 
  rename(c(carmelo1_post = carm_elo1_post,
           carmelo1_pre = carm_elo1_pre,
           carmelo2_post = carm_elo2_post,
           carmelo2_pre = carm_elo2_pre,
           carmelo_prob1 = carm_elo_prob1,
           carmelo_prob2 = carm_elo_prob2))
usethis::use_data(nba_carmelo, overwrite = TRUE)



# Datasets originally cleaned and written by Meredith Manley

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


# mlb-elo ---------------------------------------------------------------------------
mlb_elo <- read_csv("https://projects.fivethirtyeight.com/mlb-api/mlb_elo.csv") %>%
  mutate(
    playoff = as.factor(playoff),
    playoff = ifelse(playoff == "<NA>", NA, playoff),
    neutral = as.logical(neutral)
  ) %>% rename(c(pitcher1_rating = pitcher1_rgs,
                 pitcher2_rating = pitcher2_rgs))
usethis::use_data(mlb_elo, overwrite = TRUE)


# spi_matches---------------------------------------------------------------------
spi_matches <- read_csv("https://projects.fivethirtyeight.com/soccer-api/club/spi_matches.csv") 
usethis::use_data(spi_matches, overwrite = TRUE)



# Datasets originally cleaned and written by Jennifer Chunn

# goose ---------------------------------------------------------------
goose <-
  "data-raw/goose/goose_rawdata.csv" %>%
  read_csv(na = c("", "NA"))
usethis::use_data(goose, overwrite = TRUE)



# Datasets originally cleaned and written by Starry Zhou

# house-forecast-2018 ---------------------------------------------------------------
house_district_forecast <- 
  "https://projects.fivethirtyeight.com/congress-model-2018/house_district_forecast.csv" %>% 
  read_csv() %>%
  clean_names() %>%
  mutate(
    state = as.factor(state),
    district = as.factor(district),
    party = as.factor(party),
    model = as.factor(model)
  ) %>%
  select(-special)
usethis::use_data(house_district_forecast, overwrite = TRUE)



# Datasets originally cleaned and written by Albert Y. Kim

# comic-characters -------------------------------------------------------------
# Get DC characters:
comic_characters_dc <- 
  "data-raw/comic-characters/dc-wikia-data.csv" %>% 
  read_csv() %>% 
  clean_names() %>% 
  mutate(publisher = "DC")

# Get Marvel characters:
comic_characters_marvel <- 
  "data-raw/comic-characters/marvel-wikia-data.csv" %>% 
  read_csv() %>% 
  clean_names() %>% 
  mutate(publisher = "Marvel")

# Merge two dataset and perform further data wrangling:
comic_characters <-
  comic_characters_dc %>% 
  bind_rows(comic_characters_marvel) %>% 
  separate(first_appearance, c("year2", "month"), ", ", remove = FALSE) %>%
  mutate(
    # If month was missing, set as January and day as 01:
    month = ifelse(is.na(month), "01", month),
    day = "01",
    # Note some years missing:
    date = ymd(paste(year, month, day, sep = "-")),
    align = factor(
      align, 
      levels = c("Bad Characters", "Reformed Criminals", "Netural Characters", "Good Characters"),
      ordered = TRUE)
  ) %>%
  select(publisher, everything(), -c(year2, day)) 
usethis::use_data(comic_characters, overwrite = TRUE)



# Datasets originally cleaned and written by Kara Van Allen

# nba-elo---------------------------------------------------------------------
# reading in csv
nba_elo <- read_csv("https://projects.fivethirtyeight.com/nba-model/nba_elo.csv")
rownames(nba_elo) <- NULL

# tidying and taming data for nba_elo
nba_elo <- nba_elo %>%
  clean_names() %>%
  mutate_if(is.logical, as.numeric) %>%
  mutate(neutral = as.logical(neutral)) %>%
  mutate(playoff = as.logical(playoff))

# setting up .rda
usethis::use_data(nba_elo, overwrite = TRUE)



# Datasets originally cleaned and written by Jessica Keast

# nba-elo---------------------------------------------------------------------
nba_all_elo <- read_csv("data-raw/nba-elo/nbaallelo.csv")%>%
  arrange(game_id, `_iscopy`)%>%
  mutate_if(is.character,as.factor)%>%
  mutate(opp_win_equiv = lead(win_equiv), 
         opp_seasongame = lead(seasongame, 1),
         date_game = mdy(date_game), 
         is_playoffs = as.logical(is_playoffs),
         notes =  as.character(notes))%>%
  filter(`_iscopy` == 0)%>%
  select(-c(`_iscopy`, game_location))

usethis::use_data(nba_all_elo, overwrite = TRUE)



# Datasets originally cleaned and written by Danica Miguel

# Historical Raptor by Player
historical_raptor_by_player <- read_csv("data-raw/nba-raptor/historical_RAPTOR_by_player.csv") %>%
  mutate(
    era = "Historical",
    raptor_box_offense = NA,
    raptor_box_defense = NA,
    raptor_box_total = NA,
    raptor_onoff_offense = NA,
    raptor_onoff_defense = NA,
    raptor_onoff_total = NA
  ) 

# Modern Raptor by Player
modern_raptor_by_player <- read_csv("data-raw/nba-raptor/modern_RAPTOR_by_player.csv") %>%
  mutate(era = "Modern")

# Historical Raptor by Team
historical_raptor_by_team <- read_csv("data-raw/nba-raptor/historical_RAPTOR_by_team.csv") %>%
  mutate(
    season_type = as.factor(season_type),
    era = "Historical",
    raptor_box_offense = NA,
    raptor_box_defense = NA,
    raptor_box_total = NA,
    raptor_onoff_offense = NA,
    raptor_onoff_defense = NA,
    raptor_onoff_total = NA
  ) 

# Modern Raptor by Team
modern_raptor_by_team <-read_csv("data-raw/nba-raptor/modern_RAPTOR_by_team.csv") %>%
  mutate(
    season_type = as.factor(season_type),
    era = "Modern"
  )

# Combining Historical and Modern Raptor by Player Datasets
raptor_by_player <- bind_rows(historical_raptor_by_player, modern_raptor_by_player) %>%
  mutate(era = as.factor(era)) %>%
  select(
    era, player_name, player_id, season, poss, mp, 
    raptor_box_offense, raptor_box_defense, raptor_box_total, raptor_onoff_offense, 
    raptor_onoff_defense, raptor_onoff_total, raptor_offense, raptor_defense, 
    raptor_total, war_total, war_reg_season, war_playoffs, predator_offense, 
    predator_defense, predator_total, pace_impact
  )

# Combining Historical and Modern Raptor by Team Datasets
raptor_by_team <- bind_rows(historical_raptor_by_team, modern_raptor_by_team) %>%
  mutate(era = as.factor(era)) %>%
  select(
    era, player_name, player_id, season, season_type, team, poss, mp, 
    raptor_box_offense, raptor_box_defense, raptor_box_total, raptor_onoff_offense, 
    raptor_onoff_defense, raptor_onoff_total, raptor_offense, raptor_defense, 
    raptor_total, war_total, war_reg_season, war_playoffs, predator_offense, 
    predator_defense, predator_total, pace_impact
  )

usethis::use_data(raptor_by_player, overwrite = TRUE)
usethis::use_data(raptor_by_team, overwrite = TRUE)



# Datasets originally cleaned and written by Rana Gahwagy

# mlb-quasi-win-shares
quasi_winshares <- read_csv("data-raw/mlb-quasi-win-shares/quasi_winshares.csv") %>%
  clean_names() %>%
  mutate(
    team_id = as.factor(team_id),
    lg_id   = as.factor(lg_id),
    def_pos = as.factor(def_pos),
    franch_id   = as.factor(franch_id),
    prev_franch  = as.factor(prev_franch),
    next_franch = as.factor(next_franch),
    #defense positions as lgl (played or not)
    p = str_detect(def_pos, "P"),
    c = str_detect(def_pos, "C"),
    X1b = str_detect(def_pos, "1B"),
    X2b = str_detect(def_pos, "2B"),
    X3b = str_detect(def_pos, "3B"),
    ss = str_detect(def_pos, "SS"),
    lf = str_detect(def_pos, "LF"),
    cf = str_detect(def_pos, "CF"),
    rf = str_detect(def_pos, "RF"),
    #change null values
    prev_franch = replace(prev_franch, prev_franch == "NULL", NA), 
    next_franch = replace(next_franch, next_franch == "NULL", NA)
  ) %>%
  select(-def_pos)
usethis::use_data(quasi_winshares, overwrite = TRUE)



# Datasets originally cleaned and written by Irene Ryan

castle_solutions <- read_csv("data-raw/riddler-castles/castle-solutions.csv")

castle_solutions <- castle_solutions %>% #clean the names
  rename(strategy = `Why did you choose your troop deployment?`) %>%
  clean_names()

castle_solutions$user <- seq.int(nrow(castle_solutions)) #create user column

#gather the data to tidy form
castle_solutions <- gather(castle_solutions, key = "castle", value = "number_of_soldiers", 
                           contains("castle_"), -strategy, -user) %>%
  select(user, castle, number_of_soldiers, strategy) #reorder

#classes of variables: only adjusted the user column, the rest are the appropriate class
castle_solutions <- castle_solutions %>%
  mutate(user = as.character(user))

#-----------------------

castle_solutions_2 <- read_csv("data-raw/riddler-castles/castle-solutions-2.csv")

castle_solutions_2 <- castle_solutions_2 %>% #clean the names
  rename(strategy = `Why did you choose your troop deployment?`) %>%
  clean_names()


castle_solutions_2$user <- seq.int(nrow(castle_solutions_2)) #create user column

#gather the data to tidy form
castle_solutions_2 <- gather(castle_solutions_2, key = "castle", value = "number_of_soldiers", 
                             contains("castle_"), -strategy, -user) %>%
  select(user, castle, number_of_soldiers, strategy) #reorder

#classes of variables: only adjusted the user column, the rest are the appropriate class
castle_solutions_2 <- castle_solutions_2 %>%
  mutate(user = as.character(user))

#-------------------------

castle_solutions_3 <- read_csv("data-raw/riddler-castles/castle-solutions-3.csv")

castle_solutions_3 <- castle_solutions_3%>% #clean the names
  rename(strategy = `Why did you choose your troop deployment?`) %>%
  clean_names()

castle_solutions_3$user <- seq.int(nrow(castle_solutions_3)) #create user column

#gather the data to tidy form
castle_solutions_3 <- gather(castle_solutions_3, key = "castle", value = "number_of_soldiers", 
                             contains("castle_"), -strategy, -user) %>%
  select(user, castle, number_of_soldiers, strategy) #reorder

#classes of variables: only adjusted the user column, the rest are the appropriate class
castle_solutions_3 <- castle_solutions_3 %>%
  mutate(user = as.character(user))

#-----------------------

usethis::use_data(castle_solutions, overwrite = TRUE)
usethis::use_data(castle_solutions_2, overwrite = TRUE)
usethis::use_data(castle_solutions_3, overwrite = TRUE)
