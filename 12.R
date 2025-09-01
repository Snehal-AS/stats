data("iris")    
head(iris) 

anova_result <- aov(Sepal.Length ~ Species, data = iris) 
summary(anova_result) 

setosa <- subset(iris, Species == "setosa")$Sepal.Length 
versicolor <- subset(iris, Species == "versicolor")$Sepal.Length 

mann_whitney_result <- wilcox.test(setosa, versicolor) 
mann_whitney_result 

kruskal_result <- kruskal.test(Sepal.Length ~ Species, data = iris) 
kruskal_result
