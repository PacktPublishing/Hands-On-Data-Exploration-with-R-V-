stats <- read.csv('mtcars.csv')
ncol(stats)
nrow(stats)
head(stats)
tail(stats)
str(stats)
summary(stats)
levels(stats$gear)

#Contigency Table
table(stats$gear, stats$cyl)

mytable <- with(stats, table(gear,cyl))
mytable

#frequency Table
margin.table(mytable,1)
margin.table(mytable,2)

#Histogram
qplot(data=stats, x=mpg)

#Scatter Plot
qplot(data=stats, x=hp, y=disp, size=I(3), color=cyl, shape=I(19),
      alpha=I(0.6), main="Horse Power vs Displacement")

#Box and Whisker Plot
qplot(gear, mpg, data=stats, geom=c('boxplot', 'jitter'), 
      fill=gear, main='Box Plot')

#Violin Chart
qplot(cyl, wt, data=stats, geom=c('violin'), trim=FALSE)


#Exploring Multiple Variables

#Continous
qplot(mpg, data=stats, geom='density')

#Discrete and Continuous
qplot(data=stats, x=am, y=mpg)


#Continuous and Continuous
qplot(wt, mpg, data=stats, 
      geom=c('point','smooth'), method='lm', formula=y~x, color=cyl)

#Multiple Variables
qplot(mpg,cyl, data=stats, geom='density', fill=gear, alpha=I(.5))


#Relationships and correlations
qplot(hp,mpg, data=stats, shape=am, color=am, 
      facets=gear~cyl, size=I(3))

qplot(cyl, mpg, data=stats, geom=c('boxplot','jitter'), fill=gear
      ,main='Box Plot')

















