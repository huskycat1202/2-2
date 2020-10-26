library(MASS)
x <- Cars93$Price
length(x)
sum(x)/length(x)
sum(x)
length(which(x>15.0))

a <- c(25, 17, 15, 23)
m <- matrix(a, nrow = 2, byrow = TRUE)
rownames(m) <- c("smoke", "non-smoke")
colnames(m) <- c("drink", "non-drink")
m2 <- rbind(m, colSums(m))
m2 <- cbind(m2, rowSums(m2))
rownames(m2)[3] <- "sum"
colnames(m2)[3] <- "sum"
m2