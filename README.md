
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fivethirtyeightdata

`fivethirtyeightdata` is an add-on R data package to the
[`fivethirtyeight`](fivethirtyeight-r.netlify.com/) package that
contains user-contributed `vignettes/` and 19 datasets that could not be
included in `fivethirtyeight` due to CRAN package size restrictions:

| Item                         | Title                                                                           |
| :--------------------------- | :------------------------------------------------------------------------------ |
| `castle_solutions`           | Riddler Nation - Castles Puzzle                                                 |
| `castle_solutions_2`         | Riddler Nation - Castles Puzzle 2                                               |
| `castle_solutions_3`         | Riddler Nation - Castles Puzzle Final                                           |
| `comic_characters`           | Comic Books Are Still Made By Men, For Men And About Men                        |
| `goose`                      | The Save Ruined Relief Pitching. The Goose Egg Can Fix It.                      |
| `house_district_forecast`    | 2018 House Forecast                                                             |
| `mayweather_mcgregor_tweets` | Mayweather Vs McGregor Tweets                                                   |
| `mlb_elo`                    | MLB Elo                                                                         |
| `nba_all_elo`                | The Complete History Of The NBA                                                 |
| `nba_carmelo`                | The Complete History Of The NBA 2017-18 NBA Predictions                         |
| `nba_elo`                    | NBA Elo Ratings                                                                 |
| `nfl_elo`                    | The Complete History Of The NFL 2017 NFL Predictions                            |
| `quasi_winshares`            | The Twins’ Magical Run Will Likely Go Through The Yankees. (Because Of Course.) |
| `raptor_by_player`           | NBA Raptor                                                                      |
| `raptor_by_team`             | NBA Raptor                                                                      |
| `ratings`                    | An Inconvenient Sequel                                                          |
| `senators`                   | Senator Dataset                                                                 |
| `spi_matches`                | Match-by-match SPI ratings and forecasts back to 2016                           |
| `twitter_presidents`         | The Worst Tweeter in Politics Isn’t Trump                                       |

The released version of this package is accessed using a
[drat](https://github.com/fivethirtyeightdata/drat) repository made
using the `drat` package.

## Installation

You can run the following to get the latest released version of
`fivethirtyeightdata`:

``` r
install.packages(fivethirtyeightdata,
  repos = "https://fivethirtyeightdata.github.io/drat/",
  type = "source"
)
```

You can install the developmental version from
[GitHub](https://github.com/fivethirtyeightdata/fivethirtyeightdata)
with:

``` r
# install.packages("devtools")
devtools::install_github("fivethirtyeightdata/fivethirtyeightdata")
```

## Usage

To load the `senators` dataset for example run:

``` r
library(fivethirtyeight)
library(fivethirtyeightdata)
senators
```
