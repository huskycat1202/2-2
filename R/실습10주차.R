game <- function(){
  prev <-0
  won <-5000 #B
  while(won>0 && won<10000){
    now <- sample(1:6,1)
    if((prev+now)%%2==0 && prev!=0){
      won <- won+1000
    }
    else{
      if(now!=4 && now!=5){
        won <- won-500
      }
    }
    prev <- now
  }
  if(won>=10000) won <- 1
  if(won<=0) won <- 0
  return (won) # A:0, B:1
}

repgame <- function(n){
  cnt <- 0
  for(rep in 1:n){
    cnt <- cnt+game()
  }
  print(1-cnt/n)
  print(cnt/n)
}

repgame(100000)