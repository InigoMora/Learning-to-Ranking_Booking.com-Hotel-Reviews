#training_set_VU_DM
setwd("~/Documents/Vrije Universiteit/Period 5/Data Mining/Assignments/assignment_02")
data=read.csv(file="training_set_VU_DM.csv",header=TRUE)
data <- as.data.frame(data)

head(data)

summary(data)
