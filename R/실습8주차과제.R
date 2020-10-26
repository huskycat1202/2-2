medi <- data.frame(MEDICINE=rep(c("M1","M2","M3"),times=1,each=5),
                   SUBJECT=rep(c("S1","S2","S3", "S4", "S5"),times=3,eaach=1), 
                   EFFECT=c(0.62,0.77,0.33,0.27,0.84,0.15,0.13,0.29,0.18,0.62,0.72,0.13,0.09,0.57,0.44), 
                   PROBLEM=c(0.11,0.05,0.16,0.89,0.77,0.13,0.77,0.22,0.10,0.21,0.33,0.31,0.42,0.55,0.66))

#약물 별 평균 효과 발생률
tapply(medi$EFFECT,medi$MEDICINE,function(x) {mean(x)})
#약물 별 평균 문제 발생률
tapply(medi$PROBLEM,medi$MEDICINE,function(x) {mean(x)})
#평균 문제 발생률이 높은 약물부터 순서대로 출력
sort(tapply(medi$PROBLEM,medi$MEDICINE,function(x) {mean(x)}),T)