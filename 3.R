library(ggplot2)
library(readr) 
library(dplyr) 

df <- read.csv("pricequotes.csv") 

print(summary(df)) 
boxplot (df$Barry.Price, df$Mary.Price,
        names = c("barry","mary"),
        col = c("skyblue","lightgreen"),
        main = "boxplot of price quotes",
        ylab = "price")

