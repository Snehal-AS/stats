# Load required libraries
library(ggplot2)
library(dplyr)
library(readr)
library(scales)

# Load the dataset
df <- read.csv("treatmentfacility.csv")

# View first few rows and summary statistics
head(df)
summary(df)

# Optional: Check the structure of the dataset
str(df)

# Plot 1: Employee Turnover Before and After Reengineering
ggplot(df, aes(x = Reengineer, y = Employee.Turnover, fill = Reengineer)) +
  geom_boxplot() +
  labs(
    title = "Employee Turnover Before and After Reengineering",
    x = "Reengineering Status",
    y = "Employee Turnover"
  ) +
  theme_minimal()

# Plot 2: TRFF (%) Before and After Reengineering
ggplot(df, aes(x = Reengineer, y = TRFF..., fill = Reengineer)) +
  geom_boxplot() +
  labs(
    title = "TRFF (%) Before and After Reengineering",
    x = "Reengineering Status",
    y = "TRFF (%)"
  ) +
  theme_minimal()
