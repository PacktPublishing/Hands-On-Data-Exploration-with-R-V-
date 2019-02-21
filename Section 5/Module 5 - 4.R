df <- read.csv('DemographicData.csv')
install.packages('ggplot2')
library(ggplot2)

qplot(data=df, x=Internet.users)
qplot(data=df, x=Income.Group, y=Birth.rate)
qplot(data=df, x=Income.Group, y=Birth.rate, size=I(3))
qplot(data=df, x=Income.Group, y=Birth.rate, size=I(3), 
      color=I("Blue"))

qplot(data=df, x=Income.Group, y=Birth.rate, geom="boxplot")

qplot(data=df, x=Internet.users, y=Birth.rate, 
      size=I(3), color=I("Red"))

qplot(data=df, x=Internet.users, y=Birth.rate, 
      size=I(3), color=Income.Group)


qplot(data=df, x=Internet.users, y=Birth.rate, 
      size=I(3), color=Income.Group, shape=I(19), alpha=I(0.6),
      main="Birth Rate vs Internet Users")