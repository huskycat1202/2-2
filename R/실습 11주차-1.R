library(MASS)
summary(cats)
cat <- MASS::cats
barplot(c(summary(cats$Sex)),main="Histogram of Cat's Sex", xlab="Sex", ylab="Number", names=c("M", "F"))