#TidyR
#The tidyr package centers on two functions: gather and spread
population<-read.csv('Country-Population.csv')
popl1<-population[2:214,]
read.csv()
install.packages("tidyr") # if not already installed
df<-read.csv('Book1.csv')
library(dplyr)
df %>% group_by(User) %>% filter(duplicated(User) | n()==1)
df[!duplicated(df), ]
df %>% group_by(User) %>% distinct()
#Look at row 1. It shows four years of population i.e. 2015, 2016, 2017 
#and 2018 for country Aruba. The numbers are the values. Which values go
#with which Year? We have to look at the column headers to find out. 
#We can think of the column headers as the "keys" to knowing which value 
#goes with which year. The value 101597 is keyed to 2015. 
#That's a key-value pair. The 4 key-value pairs in row 1 are unique to Aruba.

library(tidyr)
popl <- gather(data = population, key = year, value = count, Y2016, Y2015, Y2017, 27962207)


gather(population, year, count, -Country.Name)
gather(population, year, count, Y2015:Y2018)

popl1<-spread(data = popl, key = year, value = count)



library(dplyr)
#If you're fluent with tidyr and dplyr, this is a fast and easy way to work with data. 
#For comparison, here is the same thing carried out with the base R aggregate function:
population %>% 
  gather(year,count,Y2015:Y2018)%>% 
  group_by(year) %>% 
  summarise(min = min(count), max = max(count))

popl <- gather(population, year, count, Y2015, Y2016, Y2017, Y2018)
aggregate(count ~ year, data = popl, function(x)c(min=min(x),max=max(x)))
