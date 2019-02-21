dat = read.csv('DemographicData.csv')

aggregate(Birth.rate ~ Country.Name, data=dat, FUN = mean)
aggregate(Birth.rate ~ Country.Name + Income.Group, data=dat, FUN=mean)

aggregate(Birth.rate ~ Income.Group, data=dat, FUN=mean)

df = read.csv('Salary.csv')

range<-c("Average","Average","High","Average","Average","Low","Low","Average","Low","Low","Average","Low","Low","Average","Average","High","Average","Low","High","Average","High","Average","Average","High")
experience <- c("High","Very high","High","Very high","Very high","Very high","Very high","Very high","Average","Average","Very high","Average","Average","Very high","Average","Very high","Average","Average","Less","High","High","Less","High","Average")

aggregate(x=df, by=list(range, experience), FUN='mean')
