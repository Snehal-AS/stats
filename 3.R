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
cat(sd(df$Mary.Price))
cat(sd(df$Barry.Price))


n1 = length(df$Mary.Price)
n2 = length(df$Barry.Price)

cat((sd(df$Mary.Price))/sqrt(n1))
cat((sd(df$Barry.Price))/sqrt(n2))
