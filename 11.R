library(forecast)
library(ggplot2)
library(readr)
# Read the dataset
data <- read.csv("AusAntidiabeticDrug.csv")
# View column names to verify
print(names(data))  # Expecting "ds" and "y"
# Convert 'ds' to Date type
data$ds <- as.Date(data$ds)
# Create time series object
ts_data <- ts(data$y, start = c(1991, 1), frequency = 12)
# Fit Holt-Winters model
model <- HoltWinters(ts_data)
# Forecast next 24 months
forecast_data <- forecast(model, h = 24)
# Plot the forecast
plot(forecast_data,
     main = "Monthly Antidiabetic Drug Sales Forecast",
     xlab = "Time", ylab = "Sales ($ Millions)",
     col.main = "darkblue", col.lab = "black")
