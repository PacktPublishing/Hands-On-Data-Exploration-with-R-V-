dat <- read.csv('DemographicData.csv')

## SUMMARY BY IN DOBY:
install.packages('doBy')
library(doBy)
summary(dat)
summaryBy(Birth.rate ~ Income.Group, data=dat, FUN=c(mean, sd))

## DDPLY IN PLYR
install.packages('plyr')
library(plyr)
ddply(dat, .(Income.Group), "nrow")
ddply(dat, .(Income.Group), summarise, avg=mean(Birth.rate))


## Filter in R 
filter<-dat$Internet.users <2

dat[filter,]

dat[dat$Birth.rate>40,]

dat[dat$Birth.rate>40 | dat$Internet.users <2,]
dat[dat$Birth.rate>40 & dat$Internet.users <2,]
dat[dat$Income.Group=="High income",]


## AGGREGATE FUNCTION FROM BASE R
aggregate(Birth.rate ~ Country.Name, data=dat, FUN=mean)
aggregate(Birth.rate ~ Country.Name + Income.Group, data=dat, FUN=mean)
aggregate(Birth.rate ~ Income.Group, data=dat, FUN=mean)

## AGGREGATE Function in R
df=read.csv('Salary.csv')
aggregate(x = df, by = list(range, experience), FUN = "mean")

range<-c("Average","Average","High","Average","Average","Low","Low","Average","Low","Low","Average","Low","Low","Average","Average","High","Average","Low","High","Average","High","Average","Average","High")
experience <- c("High","Very high","High","Very high","Very high","Very high","Very high","Very high","Average","Average","Very high","Average","Average","Very high","Average","Very high","Average","Average","Less","High","High","Less","High","Average")




## DPLYR PACKAGE
library(datasets)
library(dplyr)
head(airquality)
airquality=read.csv('airquality.csv')
filter(airquality, Temp > 70)

filter(airquality, Temp > 80 & Month > 5)

mutate(airquality, TempInC = (Temp - 32) * 5 / 9)

summarise(airquality, mean(Temp, na.rm = TRUE))

summarise(group_by(airquality, Month), mean(Temp, na.rm = TRUE))

sample_n(airquality, size = 10)
sample_frac(airquality, size = 0.1)

count(airquality, Month)


arrange(airquality, desc(Month), Day)


filteredData <- filter(airquality, Month != 5)
groupedData <- group_by(filteredData, Month)
summarise(groupedData, mean(Temp, na.rm = TRUE))


airquality %>% 
  filter(Month != 5) %>% 
  group_by(Month) %>% 
  summarise(mean(Temp, na.rm = TRUE))



