e <- read.csv(file.choose())
e
plot(e,ylim=c(1,100),col="red")
cor(e$Hours,e$Scores)
r <- lm(Scores~Hours,data=e)
r
abline(r,col="green")
result <- predict(r,list(Hours=9.5))
result
result1 <- predict(r,data.frame(Hours=c(1,4.5,9.9,24)))
result1
