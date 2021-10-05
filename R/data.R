# Datasets documented by Maggie Shea

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


#' The Worst Tweeter in Politics Isn't Trump
#'
#' The raw data behind:
#' "The Worst Tweeter in Politics Isn't Trump"
#' \url{https://fivethirtyeight.com/features/the-worst-tweeter-in-politics-isnt-trump/}
#'
#' Presidents Dataset:
#' @format A data frame with 6439 rows describing individual tweets and 8 variables:
#' \describe{
#' \item{created_at}{The date and time the tweet was posted}
#' \item{user}{The user posting the tweet}
#' \item{text}{The text of the tweet}
#' \item{url}{The link to the tweet}
#' \item{replies}{The number of replies to the tweet}
#' \item{retweets}{The number of retweets}
#' \item{favorites}{The number of favorites}
#' }
#' @details Data on President Obama's tweets collected on Oct 20, President Trump's tweets collected on Oct 23.
#' @source Twitter \url{https://twitter.com/BarackObama} and \url{https://twitter.com/realDonaldTrump}
"twitter_presidents"



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



# Datasets documented by Meredith Manley

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



# Datasets originally documented by Jennifer Chunn

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



# Datasets originally documented by Starry Zhou

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



# Datasets originally documented by Albert Y. Kim

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
#'   \item{id}{The identity status of the character (Secret Identity, Public identity, (on marvel only: No Dual Identity)}
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



# Datasets originally documented by Kara Van Allen

#' @name nba_elo
#' @rdname nba_elo
#' 
#' @title NBA Elo Ratings
#' 
#' @description  The raw data behind all nba predictions, including the story
#' "The Complete History of the NBA"
#' \url{https://projects.fivethirtyeight.com/complete-history-of-the-nba}
#' 
NULL

#' @rdname nba_elo
#' 
#' @format 2 data frames about NBA Elo prediction ratings 
#' 
#' @section nba_elo:
#' A data frame with 69465 rows representing every game in the NBA, and 24 variables:
#' \describe{
#'   \item{date}{Date}
#'   \item{season}{the season in which the game was played}
#'   \item{neutral}{True if the game was played on neutral territory, False if not}
#'   \item{playoff}{True if the game was played in a playoff, False if not}
#'   \item{team1}{name of first team}
#'   \item{team2}{name of second team}
#'   \item{elo1_pre}{Team 1 Elo rating before game}
#'   \item{elo2_pre}{Team 2 Elo rating before game}
#'   \item{elo_prob1}{Team 1's probability of winning based on Elo rating}
#'   \item{elo_prob2}{Team 2's probability of winning based on Elo rating}
#'   \item{elo1_post}{Team 1 Elo rating after the game}
#'   \item{elo2_post}{Team 2 Elo rating after the game}
#'   \item{score1}{the score of team 1}
#'   \item{score2}{the score of team 2}
#'   }
#'   
"nba_elo"



# Datasets originally documented by Jessica Keast

#' The Complete History Of The NBA
#' 
#' This directory contains the data behind the interactive 
#' "The Complete History Of The NBA"
#' \url{https://fivethirtyeight.com/interactives/the-complete-history-of-every-nba-team-by-elo}.
#' 
#' @format A data frame with 63157 rows representing basketball games and 23 variables:
#' \describe{
#' \item{gameorder}{Play order of game in NBA history}
#' \item{game_id}{Unique ID for each game}
#' \item{lg_id}{Which league the game was played in}
#' \item{year_id}{Season id, named based on year in which the season ended}
#' \item{date_game}{Game date}
#' \item{seasongame}{Number of games home team has played in season}
#' \item{is_playoffs}{Flag for playoff games}
#' \item{team_id}{Three letter code for home team name, from Basketball Reference}
#' \item{fran_id}{Home team franchise id. Multiple team_ids can fall under the same fran_id due to name changes or moves. Interactive is grouped by fran_id.}
#' \item{pts}{Points scored by home team}
#' \item{elo_i}{Home team elo entering the game}
#' \item{elo_n}{Home team elo following the game}
#' \item{win_equiv}{Equivalent number of wins in a 82-game season for a team of elo_n quality}
#' \item{opp_id}{Team id of opponent}
#' \item{opp_fran}{Franchise id of opponent}
#' \item{opp_pts}{Points scored by opponent}
#' \item{opp_elo_i}{Opponent elo entering the game}
#' \item{opp_elo_n}{Opponent elo following the game}
#' \item{opp_win_equiv}{Opponent equivalent number of wins in a 82-game season for a team of elo_n quality}
#' \item{opp_seasongame}{Number of games opponent has played in season}
#' \item{game_result}{Win or loss for team in the team_id column}
#' \item{forecast}{Elo-based chances of winning for the team in the team_id column, based on elo ratings and game location}
#' \item{notes}{Additional information}}
#' 
#' @source Basketball Reference: \url{https://www.basketball-reference.com/}.
"nba_all_elo"



# Datasets originally documented by Danica Miguel

#' @name nba_raptor
#' @rdname nba_raptor
#' 
#' @title NBA Raptor
#' 
#' @description The raw data behind the story 
#' "Introducing RAPTOR, Our New Metric For The Modern NBA"
#' \url{https://fivethirtyeight.com/features/introducing-raptor-our-new-metric-for-the-modern-nba}.
#' 
NULL


#' @rdname nba_raptor
#' 
#' @format 2 dataframes about Raptor players and teams by era
#' 
#' @section raptor_by_player:
#' A dataframe with 20492 rows representing every player broken out by season and era and 22 variables:
#' \describe{
#'  \item{era}{Historical (since the 1976 ABA-NBA merger) or Modern (since 2014)}
#'  \item{player_name}{Player Name}
#'  \item{player_id}{Player ID as found on \url{https://www.basketball-reference.com/}}
#'  \item{season}{Season}
#'  \item{poss}{Possessions played}
#'  \item{mp}{Minutes played}
#'  \item{raptor_box_offense}{Points above average per 100 possessions added by player on offense, based only on box score estimate
#'       (Values are missing when era is historical)}
#'  \item{raptor_box_defense}{Points above average per 100 possessions added by player on defense, based only on box score estimate
#'       (Values are missing when era is historical)}
#'  \item{raptor_box_total}{Points above average per 100 possessions added by player, based only on box score estimate
#'       (Values are missing when era is historical)}
#'  \item{raptor_onoff_offense}{Points above average per 100 possessions added by player on offense, based only on plus-minus data
#'       (Values are missing when era is historical)}
#'  \item{raptor_onoff_defense}{Points above average per 100 possessions added by player on defense, based only on plus-minus data
#'       (Values are missing when era is historical)}
#'  \item{raptor_onoff_total}{Points above average per 100 possessions added by player, based only on plus-minus data
#'       (Values are missing when era is historical)}
#'  \item{raptor_offense}{Points above average per 100 possessions added by player on offense, using both box and on-off components}
#'  \item{raptor_defense}{Points above average per 100 possessions added by player on defense, using both box and on-off components}
#'  \item{raptor_total}{Points above average per 100 possessions added by player on both offense and defense, using both box and on-off components}
#'  \item{war_total}{Wins Above Replacement between regular season and playoffs}
#'  \item{war_reg_season}{Wins Above Replacement for regular season}
#'  \item{war_playoffs}{Wins Above Replacement for playoffs}
#'  \item{predator_offense}{Predictive points above average per 100 possessions added by player on offense}
#'  \item{predator_defense}{Predictive points above average per 100 possessions added by player on defense}
#'  \item{predator_total}{Predictive points above average per 100 possessions added by player on both offense and defense}
#'  \item{pace_impact}{Player impact on team possessions per 48 minutes}
#' }
"raptor_by_player"


#' @rdname nba_raptor
#' @section raptor_by_team:
#' A dataframe with 32055 rows representing every team broken out by team, season, season_type, and era and 24 variables:
#' \describe{
#'  \item{era}{Historical (since the 1976 ABA-NBA merger) or Modern (since 2014)}
#'  \item{player_name}{Player name}
#'  \item{player_id}{Player ID as found on \url{https://www.basketball-reference.com/}}
#'  \item{season}{Season}
#'  \item{season_type}{Regular season (RS) or playoff (PO)}
#'  \item{team}{Basketball-Reference ID of team}
#'  \item{poss}{Possessions played}
#'  \item{mp}{Minutes played}
#'  \item{raptor_box_offense}{Points above average per 100 possessions added by player on offense, based only on box score estimate
#'       (Values are missing when era is historical)}
#'  \item{raptor_box_defense}{Points above average per 100 possessions added by player on defense, based only on box score estimate
#'       (Values are missing when era is historical)}
#'  \item{raptor_box_total}{Points above average per 100 possessions added by player, based only on box score estimate
#'       (Values are missing when era is historical)}
#'  \item{raptor_onoff_offense}{Points above average per 100 possessions added by player on offense, based only on plus-minus data
#'       (Values are missing when era is historical)}
#'  \item{raptor_onoff_defense}{Points above average per 100 possessions added by player on defense, based only on plus-minus data
#'       (Values are missing when era is historical)}
#'  \item{raptor_onoff_total}{Points above average per 100 possessions added by player, based only on plus-minus data
#'       (Values are missing when era is historical)}
#'  \item{raptor_offense}{Points above average per 100 possessions added by player on offense, using both box and on-off components}
#'  \item{raptor_defense}{Points above average per 100 possessions added by player on defense, using both box and on-off components}
#'  \item{raptor_total}{Points above average per 100 possessions added by player on both offense and defense, using both box and on-off components}
#'  \item{war_total}{Wins Above Replacement between regular season and playoffs}
#'  \item{war_reg_season}{Wins Above Replacement for regular season}
#'  \item{war_playoffs}{Wins Above Replacement for playoffs}
#'  \item{predator_offense}{Predictive points above average per 100 possessions added by player on offense}
#'  \item{predator_defense}{Predictive points above average per 100 possessions added by player on defense}
#'  \item{predator_total}{Predictive points above average per 100 possessions added by player on both offense and defense}
#'  \item{pace_impact}{Player impact on team possessions per 48 minutes}
#' }
"raptor_by_team"



# Datasets originally documented by Rana Gahwagy

#' The Twins’ Magical Run Will Likely Go Through The Yankees. (Because Of Course.)
#' 
#' The raw data behind the story 
#' "The Twins’ Magical Run Will Likely Go Through The Yankees. (Because Of Course.)"
#' \url{https://fivethirtyeight.com/features/the-yankees-always-have-the-twins-number-will-this-postseason-be-different/}
#' 
#' @format A data frame contains 98,796 rows representing Quasi-Win Shares(QWS), prorated to 162 team games, for every player from 1901 as of Sept. 27, 2019 and,  and 16 variables:
#' \describe{
#'   \item{name_common}{Player name}
#'   \item{age}{Player's age on June 30 of season}
#'   \item{player_id}{Player's \url{https://www.baseball-reference.com/} ID}
#'   \item{year_id}{Season}
#'   \item{team_id}{Baseball-Reference ID of team}
#'   \item{lg_id}{League of team}
#'   \item{pct_pt}{Share of total team playing time (measured by plate appearances and leverage-weighted innings) for player}
#'   \item{war162}{Wins Above Replacement per 162 team games, averaging B-R and FG WAR}
#'   \item{quasi_ws}{Quasi Win Shares. Three times total wins created per 162 games; generated by adding WAR162 to wins BELOW replacement (determined by playing time) and rounding to nearest whole number}
#'   \item{stint_id}{Order of team stints for player within season}
#'   \item{franch_id}{Lahman DB franchise ID for team}
#'   \item{prev_franch}{Previous franchise played for (NA if player debuted for team)}
#'   \item{year_acq}{First season for player with that franchise}
#'   \item{year_left}{Last season for player with that franchise}
#'   \item{next_franch}{Next franchise played for (NA if player retired with or is currently on team)}
#'   \item{p}{If played as a Pitcher}
#'   \item{c}{If played as a Catcher}
#'   \item{X1b}{If played as a First Base}
#'   \item{X2b}{If played as a Second Base}
#'   \item{X3b}{If played as a Third Base}
#'   \item{ss}{If played as a Shortstop}
#'   \item{lf}{If played as a Left Field}
#'   \item{cf}{If played as a Center Field}
#'   \item{rf}{If played as a Right Field}
#'   }
#' @source What’s The Best Way To Build a Major League Baseball Team? \url{https://fivethirtyeight.com/features/whats-the-best-way-to-build-a-major-league-baseball-team/}
"quasi_winshares"



# Datasets originally documented by Irene Ryan

#' Riddler Nation - Castles Puzzle

#' @description This contains the data behind the submissions for three rounds of the castles strategy puzzles: 
#'
#' Can You Rule Riddler Nation? \url{https://fivethirtyeight.com/features/can-you-rule-riddler-nation/}
#'
#' The Battle For Riddler Nation, Round 2 \url{https://fivethirtyeight.com/features/the-battle-for-riddler-nation-round-2/}
#'
#' Are You The Best Warlord? \url{https://fivethirtyeight.com/features/are-you-the-best-warlord/}
#' 
#'
#' Readers were asked to submit a strategy for the following “Colonel Blotto”-style game: 
#'
#'  
#' In a distant, war-torn land, there are 10 castles. There are two warlords: you and your archenemy. Each castle has its own strategic value for a would-be conqueror. Specifically, the castles are worth 1, 2, 3, …, 9, and 10 victory points. You and your enemy each have 100 soldiers to distribute, any way you like, to fight at any of the 10 castles. Whoever sends more soldiers to a given castle conquers that castle and wins its victory points. If you each send the same number of troops, you split the points. You don’t know what distribution of forces your enemy has chosen until the battles begin. Whoever wins the most points wins the war. 
#'
#' Submit a plan distributing your 100 soldiers among the 10 castles. Once I receive all your battle plans, I’ll adjudicate all the possible one-on-one matchups. Whoever wins the most wars wins the battle royale and is crowned king or queen of Riddler Nation!

#' @format A data frame with 13870 rows representing users, and 3 variables:
#' \describe{
#'   \item{user}{ID for the user who submitted the response}
#'   \item{castle}{which castle the user chose}
#'   \item{number_of_soldiers}{the number of soldiers they assigned to the castle}
#'   \item{strategy}{their reasoning/strategy for the number of soldiers}
#'   }

"castle_solutions"




#' Riddler Nation - Castles Puzzle 2

#' @description This contains the data behind the submissions for three rounds of the castles strategy puzzles: 
#'
#' The Battle For Riddler Nation, Round 2 \url{https://fivethirtyeight.com/features/the-battle-for-riddler-nation-round-2/} 
#'
#' Readers were asked to submit a strategy for the following “Colonel Blotto”-style game: 
#'
#'  
#' In a distant, war-torn land, there are 10 castles. There are two warlords: you and your archenemy. Each castle has its own strategic value for a would-be conqueror. Specifically, the castles are worth 1, 2, 3, …, 9, and 10 victory points. You and your enemy each have 100 soldiers to distribute, any way you like, to fight at any of the 10 castles. Whoever sends more soldiers to a given castle conquers that castle and wins its victory points. If you each send the same number of troops, you split the points. You don’t know what distribution of forces your enemy has chosen until the battles begin. Whoever wins the most points wins the war. 
#'
#' Submit a plan distributing your 100 soldiers among the 10 castles. Once I receive all your battle plans, I’ll adjudicate all the possible one-on-one matchups. Whoever wins the most wars wins the battle royale and is crowned king or queen of Riddler Nation!

#' @format A data frame with 9320 rows representing users, and 3 variables:
#' \describe{
#'   \item{user}{ID for the user who submitted the response}
#'   \item{castle}{which castle the user chose}
#'   \item{number_of_soldiers}{the number of soldiers they assigned to the castle}
#'   \item{strategy}{their reasoning/strategy for the number of soldiers}
#'   }
#'   
"castle_solutions_2"




#' Riddler Nation - Castles Puzzle Final

#' @description This contains the data behind the submissions for three rounds of the castles strategy puzzles: 

#' Are You The Best Warlord? \url{https://fivethirtyeight.com/features/are-you-the-best-warlord/}
#' 
#'
#' Readers were asked to submit a strategy for the following “Colonel Blotto”-style game: 
#'
#'  
#' In a distant, war-torn land, there are 10 castles. There are two warlords: you and your archenemy. Each castle has its own strategic value for a would-be conqueror. Specifically, the castles are worth 1, 2, 3, …, 9, and 10 victory points. You and your enemy each have 100 soldiers to distribute, any way you like, to fight at any of the 10 castles. Whoever sends more soldiers to a given castle conquers that castle and wins its victory points. If you each send the same number of troops, you split the points. You don’t know what distribution of forces your enemy has chosen until the battles begin. Whoever wins the most points wins the war. 
#'
#' Submit a plan distributing your 100 soldiers among the 10 castles. Once I receive all your battle plans, I’ll adjudicate all the possible one-on-one matchups. Whoever wins the most wars wins the battle royale and is crowned king or queen of Riddler Nation!

#' @format A data frame with 14660 rows representing users, and 3 variables:
#' \describe{
#'   \item{user}{ID for the user who submitted the response}
#'   \item{castle}{which castle the user chose}
#'   \item{number_of_soldiers}{the number of soldiers they assigned to the castle}
#'   \item{strategy}{their reasoning/strategy for the number of soldiers}
#'   }
#'   
"castle_solutions_3"


