library(stats)

# Read the CSV file containing the data
data <- read.csv("medicalmalpractice.csv")

# Print summary statistics for the claim payment amounts
cat("Claim Payment Amounts:\n")
print(summary(data$Amount))
cat("Mean:", mean(data$Amount), "\nSD:", sd(data$Amount), "\n\n")

# Plot a histogram of the log-transformed claim amounts to visualize skewed distribution
hist(log10(data$Amount),
     main = "Histogram of Claim Amounts (Log Scale)",
     xlab = "Log Amount ($)", col = "lightblue", breaks = 20)

# Identify the top 3 most common specialties in the dataset
top3 <- names(sort(table(data$Specialty), decreasing = TRUE))[1:3]

# Create a boxplot to compare claim amounts for the top 3 specialties
boxplot(Amount ~ Specialty,
        data = subset(data, Specialty %in% top3),
        log = "y",
        main = "Claim Amounts by Top 3 Specialties",
        xlab = "Specialty", ylab = "Amount ($)", col = "lightgreen")

# Create a frequency table of specialties
spec_table <- table(data$Specialty)
total <- length(data$Specialty)

# Calculate and print the percentage of claims involving specific specialties
cat("Percentage of Claims:\n")
cat("Anesthesiology:", round(100 * spec_table["Anesthesiology"]/total, 2), "%\n")
cat("Dermatology:", round(100 * spec_table["Dermatology"]/total, 2), "%\n")
cat("Orthopedic Surgery:", round(100 * spec_table["Orthopedic Surgery"]/total, 2), "%\n\n")

# Perform Pearson correlation test between patient age and payment amount
cor_result <- cor.test(data$Age, data$Amount)

# Print the correlation result
cat("Age vs. Amount Correlation:\n")
cat("Correlation:", round(cor_result$estimate, 3), "\nP-value:", 
    cor_result$p.value,"\n")

