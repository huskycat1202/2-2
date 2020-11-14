summary(Nile)
Nile

plot(1871:1970, Nile, type="l")
lines(1871:1970,rep(1000,1970-1871+1),lty="dotted", col="red")