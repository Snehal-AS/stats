data(mtcars) 
library(ggplot2) 
ggplot(data = mtcars, aes(sample = mpg)) +   stat_qq() +   stat_qq_line() +   labs(title = "Q-Q plot for MPG",        x = "Theoretical Quantiles",        y = "MPG (sample)") + 
  theme_minimal() 

