data(mtcars) 
head(mtcars) 
correlation <- cor(mtcars$mpg, mtcars$hp) 
print(paste("correlation between mpg and hp is:", round(correlation,2))) 
library(ggplot2) 
ggplot(data = mtcars, aes(x = hp, y = mpg)) +   geom_point(shape = 4, color = "blue", size = 3) +           geom_smooth(method = "lm", se = FALSE) +                    labs( 
  title = "MPG vs HorsePower",     x = "HorsePower (HP)", 
  y = "Miles per Gallon (mpg)" 
) + 
  theme_minimal()
