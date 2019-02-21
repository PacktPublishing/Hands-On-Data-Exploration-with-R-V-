df = read.csv('airquality.csv')
#install.packages('dplyr')
library('dplyr')

filter(df, Temp>70)

filter(df, Temp>80 & Month>6)
mutate(df, TempinC = (Temp-32)*5/9)

summarise(df, mean(Temp, na.rm=TRUE))

summarise(group_by(df, Month), mean(Temp, na.rm=TRUE))

sample_n(df, size = 10)

sample_frac(df, size = 0.1)


count(df, Month)
arrange(df, desc(Month), Day)


filterdata <- filter(df, Month !=6)
groupdata <- group_by(filterdata, Month)
summarise(groupdata, mean(Temp, na.rm=TRUE))

df %>%
  filter(Month !=6) %>%
  group_by(Month) %>%
  summarise(mean(Temp, na.rm=TRUE))

