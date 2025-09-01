sales <- c(2,4,6,9,12,34,45)
tv <- c(1,2,4,7,9,11,15)
data <- data.frame(sales,tv)
model <- lm(sales~tv, data=data)
summary(model)

plot(data$tv, data$sales,
main="sales vs tv advertising budget",
xlab= "tv advertising budget",
ylab= "sales unit",
pch=16, col="blue")
abline(model,col="red", cwd=2)
