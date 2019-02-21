attach(mtcars)
plot(wt, mpg, main= "scatter plot", xlab="Car weight",
     ylab="Miles per gallon", pch=18)


plot(10:20,10:20,type="l")

plot(10:20,10:20,type="l", lty=2)

plot(10:20,10:20, type="l", lty=2, lwd=3)

plot(10:20,10:20, type = "l",lty=2, lwd=3, col="red")

plot(10:20, 10:20, type="l", lty=2, lwd=3, col="red", 
     xlab="weight", ylab="height")