data <- read.csv('Employee_Utilization.csv')

data$Utilization = 1-data$Percent.Idle

data_stats_emp1 <- data[data$Employee=='Employee 1',]

data_under_99<-length(which(data_stats_emp1$Utilization<0.99))

list_emp1 <- list("Employee 1", data_stats_emp1, data_under_99)
is.list(list_emp1)


names(list_emp1) <- c("Employee","DataFrame","Less Than 99")
list_emp1

rm(list_emp1)
list_emp1 <- list(Employee="Employee 1", Dataframe = data_stats_emp1, lowthreshold=data_under_99)
list_emp1


list_emp1[1]
list_emp1[[1]]
typeof(list_emp1$Employee)


list_emp1[[2]][3]
list_emp1$Dataframe[3]


list_emp1[4]<-"New Info"
list_emp1

list_emp1[[4]]<-NULL
list_emp1
