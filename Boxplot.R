setwd("~/R-Code")

projectData = read.table("Sea Ice and Temperature Data.txt", sep = ",", header = T) #reads our data into the global environment
attach(projectData) 

boxplot(Temperature.Anomalies.based.on.20th.century.averages...C., names = c("Temperature.Anomalies.based.on.20th.century.averages...C."))
boxplot(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., names = c("Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km."))
