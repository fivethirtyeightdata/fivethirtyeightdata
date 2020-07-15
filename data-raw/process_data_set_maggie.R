# twitter-ratio---------------------------------------------------------------------
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