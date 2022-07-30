# data-raw/meteo.df.R
# Data import and processing pipeline

#library(readr)
library(readxl)
library(tidyverse)
library(here)
library(janitor)
library(lubridate)

dat.fullpath <-"data-raw/73123.xlsx"
e73123_pp_raw <- as.data.frame(read_excel(dat.fullpath,
                                     sheet = 1, col_names = FALSE,
                                     skip = 3)) #|>

rm(dat.fullpath)
usethis::use_data(e73123_pp_raw, internal = TRUE, overwrite = TRUE)
write_csv(e73123_pp_raw, here::here("inst", "extdata", "e73123_pp_raw.csv"))
