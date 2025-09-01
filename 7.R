library(readr)
library(dplyr)

data <- read.csv("fishstory.csv")
summary(data)

t_test_result <- t.test(data$X1980.Price,data$X1970.Price,paired = TRUE)
print(t_test_result)

mean_diff <- mean(data$X1980.Price-data$X1970.Price,na.rm=TRUE)
cat("Mean difference in price (1980-1970):",mean_diff,"\n")

cat("95% Confidence Interval:",t_test_result$conf.int,"\n")
