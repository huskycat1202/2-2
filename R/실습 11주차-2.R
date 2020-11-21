library(MASS)
summary(cats)
cat <- MASS::cats


plot(cat$Bwt, cat$Hwt, main="Heart Weight (g) by Body Weight(kg) of Cats",
     xlab="Body Weigh (kg)", ylab="Heart Weight (g)", 
     xlim=c(as.integer(min(summary(cat$Bwt))),as.integer(max(summary(cat$Bwt)))+1),
     ylim=c(as.integer(min(summary(cat$Hwt))),as.integer(max(summary(cat$Hwt)))+1),
     type="p", pch="#", col="red")