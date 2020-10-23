#! /usr/bin/env Rscript

#load packages
library(tidyverse)
library(ggplot2)

# read data
EU_summary <- read.csv("data/EU_summary.csv")

#makes figure
png("figures/fig1.png")

#Makes table arranging TF, TI, and TT by year
EU_summary %>%
  pivot_longer(!Survey_Year, names_to = "Stage", values_to = "Prevalence") %>%
  ggplot(aes(Survey_Year, Prevalence, color = Stage)) + 
  geom_point() +
  geom_line() +
  ggtitle("TF, TI, and TT Prevalence") +
  ylab("Prevalence") +
  theme(legend.position = "right")

dev.off()