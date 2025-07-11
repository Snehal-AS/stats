smip_scores <- c(70, 46, 94, 34, 20, 86, 18, 12, 56, 64)
dbms_scores <- c(60, 66, 90, 46, 16, 98, 24, 8, 32, 54)

# Perform Spearman Rank Correlation test
cor_result <- cor.test(smip_scores, dbms_scores, method = "spearman")

# Print result
cat("Spearman Rank Correlation Coefficient:", round(cor_result$estimate, 4), "\n")
cat("P-value:", round(cor_result$p.value, 4), "\n")
