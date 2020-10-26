a <- c(95,75,85,90,77,97,67,99,88,82)
b <- c(100,65,70,70,80,60,88,99,75,90)
scoreA <- matrix(a, nrow = 2, byrow = TRUE)
scoreB <- matrix(b, nrow = 2, byrow = TRUE)
rownames(scoreA) <- c("MID", "FINAL")
colnames(scoreA) <- c("KOR", "ENG", "MAT", "SOC", "SCI")
rownames(scoreB) <- c("MID", "FINAL")
colnames(scoreB) <- c("KOR", "ENG", "MAT", "SOC", "SCI")
scoreA
scoreB
A <- sum(scoreA["FINAL",])
B <- sum(scoreB["FINAL",])
A
B
ans <- ifelse(A>B, "A", "B")

colnames(scoreA)[col(scoreA)[which(scoreA==max(scoreA))]]
colnames(scoreB)[col(scoreB)[which(scoreB==max(scoreB))]]