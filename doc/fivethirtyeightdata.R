## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(fivethirtyeightdata)

## ----echo=FALSE---------------------------------------------------------------
library(magrittr)
data(package = "fivethirtyeightdata")$result[, c("Item", "Title")] %>%
  tibble::as_tibble()

