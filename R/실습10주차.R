choose_student <- function(club_data, size){
  pick <- sample(club_data$students, size)
  club_data$count_ab <- length(intersect(pick, 1:2))
  if(club_data$count_ab == 2){
    club_data$count_same <- club_data$count_same +1
  }
  club_data$students <- setdiff(club_data$students, pick)
  return(club_data)
}

simulation <- function(n){
  club_data <- list()
  club_data$count_same <- 0
  for(rep in 1:n){
    club_data$students=c(1:30)
    club_data$count_ab <- 0
    
    club_data <- choose_student(club_data, 10)
    if (club_data$count_ab > 0) {
      next
    }
    
    club_data <- choose_student(club_data, 7)
    if (club_data$count_ab > 0) {
      next
    }
    
    club_data <- choose_student(club_data, 5)
  }
  return(club_data$count_same/n)
}

simulation(100000)