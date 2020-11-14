summary(survey)
m <- table(as.integer(survey$Age),survey$Smoke)
hist(c(16,73), c(0,100), breaks=4, labels = TRUE)
barplot(m, beside=T,col=rainbow(length(table(as.integer(survey$Age)))))