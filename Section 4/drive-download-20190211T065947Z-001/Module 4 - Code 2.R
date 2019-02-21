Texas <- read.csv("Texas.csv")
Texas <- read.csv("Texas.csv", row.names = 1)

California <- read.csv("California.csv", row.names = 1)
NewYork <- read.csv("NewYork.csv", row.names = 1)

is.data.frame(California)

Texas <- as.matrix(Texas)
California<-as.matrix(California)
NewYork<-as.matrix(NewYork)

salary <- list(Texas=Texas, California=California, NewYork=NewYork)
salary

apply(Texas,1,mean)
apply(Texas,1,min)
apply(Texas,2,mean)

?lapply

t(Texas)

lapply(salary,t)

lapply(salary,rowMeans)

salary$Texas[1,1]

salary[[1]][1,1]


lapply(salary,"[",1,1)

lapply(salary, "[",1,)
lapply(salary,"[",,3)

lapply(salary, function(x) x[1,])
lapply(salary, function(x) x[2,])
lapply(salary, function(x) x[,12])



lapply(salary, function(x) x[1,]-x[2,])

lapply(salary, function(x) round((x[1,]-x[2,])/x[2,],2))

lapply(salary, "[", 1,7)
sapply(salary, "[", 1,7)


lapply(salary, "[",1,10:12)
sapply(salary,"[",1,10:12)

lapply(salary, rowMeans)
sapply(salary, rowMeans)

round(sapply(salary, rowMeans),2)

lapply(salary, function(x) round((x[1,]-x[2,])/x[2,],2))

sapply(salary, function(x) round((x[1,]-x[2,])/x[2,],2))


