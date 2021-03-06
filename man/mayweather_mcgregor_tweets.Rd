% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{mayweather_mcgregor_tweets}
\alias{mayweather_mcgregor_tweets}
\title{Mayweather Vs McGregor Tweets}
\format{
A data frame with 12,118 rows representing tweets and 7 variables:
\describe{
\item{created_at}{Time and date at which the tweet associated with the Mayweather vs. McGregor fight was sent.}
\item{emojis}{Whether or not emojis were used in the tweet about the fight.}
\item{id}{A numerical identifier for each individual tweet about the fight.}
\item{link}{The link to the tweet about the fight on Twitter.}
\item{retweeted}{Whether or not the tweet about the fight was retweeted.}
\item{screen_name}{The screen name under which the tweet about the fight was posted.}
\item{text}{The text contained in the tweet about the fight.}
}
}
\source{
This data contains 12,118 tweets that contain one or more emojis and
match one or more of the following hashtags: #MayMac, #MayweatherMcGregor,
#MayweatherVMcGregor, #MayweatherVsMcGregor, #McGregor and #Mayweather.
Data was collected on August 27, 2017 between 12:05 a.m. and 1:15 a.m. EDT
using the Twitter streaming API. \url{https://github.com/fivethirtyeightdata/data/tree/master/mayweather-mcgregor}
}
\usage{
mayweather_mcgregor_tweets
}
\description{
The raw data behind the story
"The Mayweather-McGregor Fight As Told Through Emojis"
\url{https://fivethirtyeight.com/?post_type=fte_features&p=161615}.
}
\keyword{datasets}
