setwd("~/Prob and Sats/R code")
myFinalData = read.table("FinalProjectData.txt",sep = ",",header = TRUE)#reads our data into the code
attach(myFinalData)#allows me to call variables by name
summary(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)#finds the summary statistics
summary(Temperature.Anomalies.based.on.20th.century.averages...C.)#finds the summary statistics
qqnorm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)#creates a plot with theoretical quantiles vs your actual data points
qqline(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)#overlays a perfect distribution curve
qqnorm(Temperature.Anomalies.based.on.20th.century.averages...C.)#creates a plot with theoretical quantiles vs your actual data points
qqline(Temperature.Anomalies.based.on.20th.century.averages...C.)#overlays a perfect distribution curve