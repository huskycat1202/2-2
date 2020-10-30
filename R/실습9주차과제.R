memo <<- data.frame(alice=0,bob=0)

game <- function(n){
  for (i in 1: n){
    for(j in 1: 25){
      a <- sample(1:50, 1, replace = F)
      b <- sample(1:50, 1, replace = F)
      if(a%%2==1) memo$alice=memo$alice-1
      else memo$alice=memo$alice+2
      if(b%%2==1) memo$bob=memo$bob+1
    }
  }
  print(paste("Alice의 평균점수:", memo$alice/10 ))
}

startgame <- function(){
  n <-readline("게임 몇번 할래요?")
  game(n)  
}
startgame()