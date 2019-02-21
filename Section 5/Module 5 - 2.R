with(mtcars, plot(mpg,wt))
title(main="mpg vs weight")


with(mtcars, plot(mpg, wt, main = "mpg vs wt"))
with(subset(mtcars, gear==5), points(mpg,wt,col="blue"))


with(mtcars, plot(mpg, wt, main="mpg vs wt"))
with(subset(mtcars, gear==5), points(mpg, wt,col="blue"))
with(subset(mtcars, gear!=5), points(mpg, wt,col="red"))
legend("topright", pch=1, col=c("blue","red"), legend=c("5 Gears", "Other Gears"))


with(mtcars, plot(mpg, wt,main="mpg vs wt", pch=21))
abline(h=3, v=25, col="red")


par(mfrow=c(1,3), mar=c(2,2,2,1), oma=c(0,0,2,0))
with(mtcars, {
  plot(mpg, wt,main="mpg vs wt")
  plot(disp, wt, main = "disp vs wt")
  plot(mpg, disp, main="mpg vs disp")
  mtext("mpg vs disp vs wt", outer=TRUE)
})



