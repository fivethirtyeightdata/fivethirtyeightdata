#' Senator Dataset
#' @format A data frame with 288,615 rows representing tweets and 10 variables:
#' \describe{
#' \item{created_at}{The date and time the tweet was posted}
#' \item{user}{The user posting the tweet}
#' \item{text}{The text of the tweet}
#' \item{url}{The link to the tweet}
#' \item{replies}{The number of replies to the tweet}
#' \item{retweets}{The number of retweets}
#' \item{favorites}{The number of favorites}
#' \item{bioguide_id}{The poster's member ID from the "Biographical Directory of the United States Congress"}
#' \item{party}{The poster's political party affiliation}
#' \item{state}{The state the poster represents in Congress}
#' }
#' @details Data collected on Oct 19 and 20
#' @source Twitter
"senators"



#' An Inconvenient Sequel
#'
#' The raw data behind the story
#' "Al Gore's New Movie Exposes The Big Flaw In Online Movie Ratings"
#' \url{https://fivethirtyeight.com/features/al-gores-new-movie-exposes-the-big-flaw-in-online-movie-ratings/}.
#'
#' @format  A data frame with 80,053 rows representing movie ratings and 27 variables:
#' \describe{
#'   \item{timestamp}{The date at which the rating was recorded.}
#'   \item{respondents}{The number of respondents in a category associated with a given timestamp.}
#'   \item{category}{The subgroups of respondents differentiated by demographics like gender, age, and nationality.}
#'   \item{link}{The website associated with a given category's responses.}
#'   \item{average}{The average rating reported by a given category.}
#'   \item{mean}{The mean rating reported by a given category.}
#'   \item{median}{The median rating reported by a given category.}
#'   \item{votes_1}{The count of votes denoting a rating of one that respondents gave.}
#'   \item{votes_2}{The count of votes denoting a rating of two that respondents gave.}
#'   \item{votes_3}{The count of votes denoting a rating of three that respondents gave.}
#'   \item{votes_4}{The count of votes denoting a rating of four that respondents gave.}
#'   \item{votes_5}{The count of votes denoting a rating of five that respondents gave.}
#'   \item{votes_6}{The count of votes denoting a rating of six that respondents gave.}
#'   \item{votes_7}{The count of votes denoting a rating of seven that respondents gave.}
#'   \item{votes_8}{The count of votes denoting a rating of eight that respondents gave.}
#'   \item{votes_9}{The count of votes denoting a rating of nine that respondents gave.}
#'   \item{votes_10}{The count of votes denoting a rating of ten that respondents gave.}
#'   \item{pct_1}{The percentage of votes denoting a rating of one that respondents gave.}
#'   \item{pct_2}{The percentage of votes denoting a rating of two that respondents gave.}
#'   \item{pct_3}{The percentage of votes denoting a rating of three that respondents gave.}
#'   \item{pct_4}{The percentage of votes denoting a rating of four that respondents gave.}
#'   \item{pct_5}{The percentage of votes denoting a rating of five that respondents gave.}
#'   \item{pct_6}{The percentage of votes denoting a rating of six that respondents gave.}
#'   \item{pct_7}{The percentage of votes denoting a rating of seven that respondents gave.}
#'   \item{pct_8}{The percentage of votes denoting a rating of eight that respondents gave.}
#'   \item{pct_9}{The percentage of votes denoting a rating of nine that respondents gave.}
#'   \item{pct_10}{The percentage of votes denoting a rating of ten that respondents gave.}
#' }
#' @source IMBD \url{https://www.imdb.com/title/tt6322922/ratings} and
#' see \url{https://github.com/fivethirtyeightdata/data/tree/master/inconvenient-sequel}
"ratings"



#' Mayweather Vs McGregor Tweets
#'
#' The raw data behind the story
#' "The Mayweather-McGregor Fight As Told Through Emojis"
#' \url{https://fivethirtyeight.com/?post_type=fte_features&p=161615}.
#'
#' @format A data frame with 12,118 rows representing tweets and 7 variables:
#' \describe{
#'   \item{created_at}{Time and date at which the tweet associated with the Mayweather vs. McGregor fight was sent.}
#'   \item{emojis}{Whether or not emojis were used in the tweet about the fight.}
#'   \item{id}{A numerical identifier for each individual tweet about the fight.}
#'   \item{link}{The link to the tweet about the fight on Twitter.}
#'   \item{retweeted}{Whether or not the tweet about the fight was retweeted.}
#'   \item{screen_name}{The screen name under which the tweet about the fight was posted.}
#'   \item{text}{The text contained in the tweet about the fight.}
#' }
#' @source This data contains 12,118 tweets that contain one or more emojis and
#' match one or more of the following hashtags: #MayMac, #MayweatherMcGregor,
#' #MayweatherVMcGregor, #MayweatherVsMcGregor, #McGregor and #Mayweather.
#' Data was collected on August 27, 2017 between 12:05 a.m. and 1:15 a.m. EDT
#' using the Twitter streaming API. \url{https://github.com/fivethirtyeightdata/data/tree/master/mayweather-mcgregor}
"mayweather_mcgregor_tweets"



#' The Save Ruined Relief Pitching. The Goose Egg Can Fix It.
#'
#' The raw data behind the story
#' "The Save Ruined Relief Pitching. The Goose Egg Can Fix It."
#' \url{https://fivethirtyeight.com/features/goose-egg-new-save-stat-relief-pitchers/}.
#'
#' @format A data frame with 30,962 rows representing pitchers and 12 variables:
#' \describe{
#'   \item{name}{Pitcher name}
#'   \item{year}{Start year of season}
#'   \item{team}{Retrosheet team code}
#'   \item{league}{NL or AL}
#'   \item{goose_eggs}{Goose eggs}
#'   \item{broken_eggs}{Broken eggs}
#'   \item{mehs}{Mehs}
#'   \item{league_average_gpct}{League-average goose percentage}
#'   \item{ppf}{Pitcher park factor}
#'   \item{replacement_gpct}{Replacement-level goose percentage}
#'   \item{gwar}{Goose Wins Above Replacement}
#'   \item{key_retro}{Retrosheet unique player identifier}
#' }
#' @source Retrosheet \url{https://www.retrosheet.org/}
"goose"



#' MLB Elo
#'
#' The raw data behind the stories:
#' "The Complete History Of MLB" \url{https://projects.fivethirtyeight.com/complete-history-of-mlb/}
#' and "MLB Predictions" \url{https://projects.fivethirtyeight.com/2017-mlb-predictions/}.
#'
#' @format A data frame with 220,010 rows representing Elo ratings and 26 variables:
#' \describe{
#'   \item{date}{The date of the game.}
#'   \item{season}{The season within which the game was played.}
#'   \item{neutral}{No description provided.}
#'   \item{playoff}{No description provided.}
#'   \item{team1}{One team that participated in the game.}
#'   \item{team2}{The other team that participated in the match.}
#'   \item{elo1_pre}{The Elo rating for team1 prior to the game.}
#'   \item{elo2_pre}{The Elo rating for team2 prior to the game.}
#'   \item{elo_prob1}{No description provided.}
#'   \item{elo_prob2}{No description provided.}
#'   \item{elo1_post}{The Elo rating for team1 after the game.}
#'   \item{elo2_post}{The Elo rating for team2 after the game.}
#'   \item{rating1_pre}{No description provided.}
#'   \item{rating2_pre}{No description provided.}
#'   \item{pitcher1}{An identifier of the pitcher}
#'   \item{pitcher2}{No description provided.}
#'   \item{pitcher1_rating}{No description provided.}
#'   \item{pitcher2_rating}{No description provided.}
#'   \item{pitcher1_adj}{No description provided.}
#'   \item{pitcher2_adj}{No description provided.}
#'   \item{rating_prob1}{No description provided.}
#'   \item{rating_prob2}{No description provided.}
#'   \item{rating1_post}{No description provided.}
#'   \item{rating2_post}{No description provided.}
#'   \item{score1}{The number of runs scored by team1.}
#'   \item{score2}{The number of runs scored by team2.}
#' }
#' @source See \url{https://github.com/fivethirtyeightdata/data/blob/master/mlb-elo/README.md}
"mlb_elo"

