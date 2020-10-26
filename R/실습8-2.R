library(MASS)
data2 <- data.frame(District=Insurance$District, Holders=Insurance$Holders, Group=Insurance$Group)
Check <- sapply(data2$Holders,function(x) {x<500})
data2 <-cbind(data2,Check)

data1 <- data.frame(Insurance)
result <- merge(data1,data2)

tail(result,10)
tapply(result$Claims, result$District, sum)
tapply(result$Check, result$District, function(x) {table(x)["TRUE"]})