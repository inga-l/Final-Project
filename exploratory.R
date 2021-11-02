library(pacman)
p_load(tidyverse, here, ggplot2)

setwd("~/Desktop/M1/EPIB607/Final Project/Datasets")

weather <- read.csv("weatherAUS.csv")

sapply(weather, class)

str(weather)
weather$Date <- as.Date.character(weather$Date)

weather %>% 
  ggplot(aes(x = Rainfall, y = Location)) +
  geom_col()
str(weather)

netflix <- read.csv("netflix_titles.csv")
str(netflix)
head(netflix)

airbnb <- read.csv("AB_NYC_2019.csv")
str(airbnb)

ggplot(airbnb, aes(x = minimum_nights)) + 
  geom_bar()+
  xlim(0, 100)

placement <- read.csv("Placement_Data_Full_class.csv")

head(placement)
