1
dpois(x=100,lambda=0.03)

2
s<-dbinom(x=16,size=30,prob=0.32)
r<-dbinom(x=16,size=30,prob=0.76)
p<-dbinom(x=16,size=30,prob=0.66)

x<-max(s, r, p)
if(x==s)"가위"
if(x==r)"바위"
if(x==p)"보"