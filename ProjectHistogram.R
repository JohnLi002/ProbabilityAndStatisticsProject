setwd("~/R-code/Github/ProbabilityAndStatisticsProject")

projectData <- read.table("Sea Ice and Temperature Data.txt", sep = ",", header = TRUE) #reads table data
attach(projectData)

hist(projectData$Temperature, freq = F, breaks = 10)
summary(projectData$Temperature.Anomalies.based.on.20th.century.averages...C.)

hist(projectData$Minimum, freq = F, breaks = 10)
summary(projectData$Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)