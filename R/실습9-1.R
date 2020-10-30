data <- data.frame(name=c(), total=c(), win=c(), tie=c(), lose=c(), win_rate=c())

game <- function(game_count){
  print("가위바위보 게임입니다.")
  print("전체 전적은 다음과 같습니다.")
  print(data)
  username <<- readline("당신의 이름을 입력해주세요.")
  
  newdata <- data.frame(name=username)
  userdata <- c(0,0,0)
  
  rps <- function(a,b){
    if(a==b){
      userdata[2] <<-userdata[2]+1
      print("비김")
    }
    else if(a=="가위" && b=="바위" || a=="바위" && b=="보" || a=="보" && b=="가위"){
      userdata[1] <<-userdata[1]+1
      print("승리")
    }
    else{
      userdata[3] <<-userdata[3]+1
      print("패배")
    }
  }
  
  for (i in 1: game_count){
    com <- sample(x=c("가위", "바위", "보"), 1, replace = T)
    user <- readline("가위 바위 보!")
    rps(com,user)
  }
  print(paste("전적:", userdata[1], "승", userdata[2], "무", userdata[3], "패"))
  newdata$total <- game_count
  newdata$win <- userdata[1]
  newdata$tie <- userdata[2]
  newdata$lose <- userdata[3]
  
  if(as.character(username) %in% data$name){
    past_total <- tapply(data$total, data$name, sum)[username]
    past_win <- tapply(data$win, data$name, sum)[username]
    newdata$win_rate <- (past_win+userdata[1])/(past_total+game_count)
  }
  else newdata$win_rate <- as.integer(userdata[1])/as.integer(game_count)
  data <<- rbind(data, newdata)
}
startgame <- function(){
  n <-readline("게임 몇번 할래요?")
  game(n)  
}

startgame()

