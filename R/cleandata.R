#! /usr/bin/env Rscript

library(tidyverse)

EU_raw <- read.csv("raw_data/EU.dummy.csv")

EU_summary <- EU_raw %>%
  rename(TT = TT_15plus)  %>%
  filter(survey_year <= 2020) %>%
  group_by(survey_year) %>%
  summarise(TF = round(mean(TF),2), TI = round(mean(TI),2), TT = round(mean(TT),2)) %>%
  rename(Survey_Year = survey_year)

write.csv(EU_summary, "data/EU_summary.csv", row.names=FALSE)