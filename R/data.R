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



#' The Complete History Of The NBA
#' 2017-18 NBA Predictions
#'
#' The raw data behind the story
#' "The Complete History Of The NBA"
#' \url{https://projects.fivethirtyeight.com/complete-history-of-the-nba/}
#' and our "2017-18 NBA Predictions"
#' \url{https://projects.fivethirtyeight.com/2018-nba-predictions/}
#'
#' @format A data frame with 69,465 rows representing games and 20 variables:
#' \describe{
#'  \item{date}{Date}
#'  \item{season}{Season year, 1947-2018}
#'  \item{neutral}{TRUE if the game was played on neutral territory, FALSE if not}
#'  \item{playoff}{TRUE if the game was a playoff game, FALSE if not}
#'  \item{team1}{The name of one participating team}
#'  \item{team2}{The name of the other participating team}
#'  \item{elo1_pre}{Team 1's Elo rating before the game}
#'  \item{elo2_pre}{Team 2's Elo rating before the game}
#'  \item{elo_prob1}{Team 1's probability of winning based on Elo rating}
#'  \item{elo_prob2}{Team 2's probability of winning based on Elo rating}
#'  \item{elo1_post}{Team 1's Elo rating after the game}
#'  \item{elo2_post}{Team 2's Elo rating after the game}
#'  \item{carmelo1_pre}{Team 1's CARMELO rating before the game}
#'  \item{carmelo2_pre}{Team 2's CARMELO rating before the game}
#'  \item{carmelo1_post}{Team 1's CARMELO rating after the game}
#'  \item{carmelo2_post}{Team 2's CARMELO rating after the game}
#'  \item{carmelo_prob1}{Team 1's probability winning based on CARMELO rating}
#'  \item{carmelo_prob2}{Team 2's probability of winning based on CARMELO rating}
#'  \item{score1}{Points scored by Team 1}
#'  \item{score2}{Points scored by Team 2}
#' }
#' @source See \url{https://projects.fivethirtyeight.com/nba-model/nba_elo.csv}
"nba_carmelo"



#' Match-by-match SPI ratings and forecasts back to 2016
#'
#' The raw data behind the stories "Club Soccer Predictions"
#' \url{https://projects.fivethirtyeight.com/soccer-predictions/} and "Global Club Soccer Rankings"
#' \url{https://projects.fivethirtyeight.com/global-club-soccer-rankings/}.
#'
#' @format The dataset is a data frame with 34,109 rows 
#' representing soccer matches and 13 variables:
#' \describe{
#'   \item{date}{The date that the match took place.}
#'   \item{league_id}{A numerical identifier of the league within which the match was played.}
#'   \item{league}{League name.}
#'   \item{team1}{One team that participated in the match.}
#'   \item{team2}{The other team that participated in the match.}
#'   \item{spi1}{The SPI score of team1.}
#'   \item{spi2}{The SPI score of team2.}
#'   \item{prob1}{The probability that team1 would have won the match.}
#'   \item{prob2}{The probability that team2 would have won the match.}
#'   \item{probtie}{The probability that the match would have resulted in a tie.}
#'   \item{proj_score1}{The predicted number of goals that team1 would have scored.}
#'   \item{proj_score2}{The predicted number of goals that team2 would have scored.}
#'   \item{importance1}{}
#'   \item{importance2}{}
#'   \item{score1}{The number of goals that team1 scored.}
#'   \item{score2}{The number of goals that team2 scored.}
#'   \item{xg1}{}
#'   \item{xg2}{}
#'   \item{nsxg1}{}
#'   \item{nsxg2}{}
#'   \item{adj_score1}{}
#'   \item{adj_score2}{}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/soccer-spi/README.md}
#' @seealso \code{\link[fivethirtyeight]{spi_global_rankings}}
"spi_matches"



#' The Complete History Of The NFL 2017 NFL Predictions
#'
#' The raw data behind the story
#' "The Complete History of the NFL"
#' \url{https://projects.fivethirtyeight.com/complete-history-of-the-nfl/}
#' And our "2017 NFL Predictions"
#' \url{https://projects.fivethirtyeight.com/2017-nfl-predictions/}
#'
#' @format The dataset is a data frame with 16,541 rows representing games and 14 variables:
#' \describe{
#'  \item{date}{Date}
#'  \item{season}{Season year, 1920-2018}
#'  \item{neutral}{TRUE if the game was played on neutral territory, FALSE if not}
#'  \item{playoff}{No description provided}
#'  \item{team1}{The name of one participating team}
#'  \item{team2}{The name of the other participating team}
#'  \item{elo1_pre}{Team 1's Elo rating before the game}
#'  \item{elo2_pre}{Team 2's Elo rating before the game}
#'  \item{elo_prob1}{Team 1's probability of winning based on Elo rating}
#'  \item{elo_prob2}{Team 2's probability of winning based on Elo rating}
#'  \item{elo1_post}{Team 1's Elo rating after the game}
#'  \item{elo2_post}{Team 2's Elo rating after the game}
#'  \item{score1}{Points scored by Team 1}
#'  \item{score2}{Points scored by Team 2}
#' }
#' @source See \url{https://projects.fivethirtyeight.com/nfl-api/nfl_elo.csv}
"nfl_elo"



#' 2018 House Forecast
#'
#' The raw data behind the story
#' 'Forecasting the race for the House'
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/house/}
#'
#' @format The dataset is a data frame with 302,859 rows representing
#' district-level results of the classic, lite, and deluxe house forecasts
#' since 2018/08/01 and 11 variables.
#' \describe{
#' \item{forecastdate}{date of the forecast}
#' \item{state}{state of the forecast}
#' \item{district}{district of the forecast}
#' \item{candidate}{name of the candidate}
#' \item{party}{party of the candidate}
#' \item{incumbent}{whether the candidate is incumbent}
#' \item{model}{the model of the forecast}
#' \item{win_probability}{the probability of the corresponding party winning}
#' \item{voteshare}{the voteshare of the corresponding party}
#' \item{p10_voteshare}{the top 10 percentile of the voteshare}
#' \item{p90_voteshare}{the top 00 percentile of the voteshare}
#' }
#' @note the original dataset included an empty column "special", which was removed.
#' @source FiveThirtyEight’s House, Senate And Governor Models
#' Methodology:
#' \url{https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/}
#' @seealso \code{\link[fivethirtyeight]{house_national_forecast}}
#' 
"house_district_forecast"



#' Comic Books Are Still Made By Men, For Men And About Men
#'
#' The raw data behind the story
#' "Comic Books Are Still Made By Men, For Men And About Men"
#' \url{https://fivethirtyeight.com/features/women-in-comic-books/}.
#' An analysis using this data was contributed by Jonathan Bouchet as a package vignette at
#' \url{https://fivethirtyeight-r.netlify.com/articles/comics_gender.html}.
#'
#' @format The dataset is a data frame with 23,272 rows 
#' representing characters and 16 variables:
#' \describe{
#'   \item{publisher}{Comic publisher: DC Comics or Marvel}
#'   \item{page_id}{The unique identifier for that characters page within the wikia}
#'   \item{name}{The name of the character}
#'   \item{urlslug}{The unique url within the wikia that takes you to the character}
#'   \item{id}{The identity status of the character (Secret Identity, Public identity, [on marvel only: No Dual Identity])}
#'   \item{align}{If the character is Good, Bad or Neutral}
#'   \item{eye}{Eye color of the character}
#'   \item{hair}{Hair color of the character}
#'   \item{sex}{Sex of the character (e.g. Male, Female, etc.)}
#'   \item{gsm}{If the character is a gender or sexual minority (e.g. Homosexual characters, bisexual characters)}
#'   \item{alive}{If the character is alive or deceased}
#'   \item{appearances}{The number of appearances of the character in comic books (as of Sep. 2, 2014. Number will become increasingly out of date as time goes on.)}
#'   \item{first_appearance}{The month and year of the character's first appearance in a comic book, if available}
#'   \item{month}{The month of the character's first appearance in a comic book, if available}
#'   \item{year}{The year of the character's first appearance in a comic book, if available}
#'   \item{date}{The date of the character's first appearance in a comic book, if available}
#' }
#' @source DC Wikia \url{https://dc.wikia.com/wiki/Main_Page} and Marvel Wikia
#' \url{https://marvel.wikia.com/Main_Page}. Characters were scraped on August 24,
#' 2014. Appearance counts were scraped on September 2, 2014. The
#' month and year of the first issue each character appeared in was pulled on
#' October 6, 2014.
"comic_characters"