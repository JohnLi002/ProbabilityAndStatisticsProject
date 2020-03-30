setwd("~/R-code/Github/ProbabilityAndStatisticsProject")

projectData <- read.table("Sea Ice and Temperature Data.txt", sep = ",", header = TRUE) #reads table data
attach(projectData)

#Question 1A: Find the mean, median, mode, variance, and standard deviation
Summary(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

#Question 1B: Create a 10 Bin Histogram
hist(projectData$Minimum, freq = F, breaks = 10)
summary(projectData$Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

#Question 1C: Create a box plot of a variable
boxplot(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., names = c("Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km."))

#Question 1D: Chose one way to graph and explain why
plot(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

