setwd("~/R-Code/Scatterplot info")

projectData <- read.table("Sea Ice and Temperature Data.txt", sep = ",", header = TRUE) #reads table data
attach(projectData)

plot(Temperature.Anomalies.based.on.20th.century.averages...C., Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

summary(lm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.~Temperature.Anomalies.based.on.20th.century.averages...C.,))
abline(lm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.~Temperature.Anomalies.based.on.20th.century.averages...C.,))

(lm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.~Temperature.Anomalies.based.on.20th.century.averages...C.,))

plot(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., Temperature.Anomalies.based.on.20th.century.averages...C., main="Sea Ice vs Temperature",
xlab="Temperature (C)", ylab="Amount of Sea Ice",)
