install.packages('datasets')
library(datasets)

attach(mtcars)

#Simple Histogram
hist(mtcars$disp)

#Simple Dotplot
dotchart(mtcars$disp, labels = row.names(mtcars))

#Simple Bar plot
counts <- table(mtcars$cyl)
barplot(counts)


#Simple Pie Chart
population <- c(10,12,4,15,9)
country <- c("US","UK","India","Germany","France")
pie(population,labels = country)



#Boxplot 
boxplot(mpg~gear, data=mtcars)



#Violin plots
install.packages('vioplot')
library(vioplot)

x1 <- mtcars$mpg[mtcars$gear==3]
x2 <- mtcars$mpg[mtcars$gear==4]
x3 <- mtcars$mpg[mtcars$gear==5]

vioplot(x1,x2,x3,col = "white")


#Scatter plot
plot(wt,mpg)



