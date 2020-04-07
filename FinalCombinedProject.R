setwd("~/R-code/Github/ProbabilityAndStatisticsProject")

projectData <- read.table("Sea Ice and Temperature Data.txt", sep = ",", header = TRUE) #reads table data
attach(projectData)

#Question 1A: Find the mean, median, mode, variance, and standard deviation
summary(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
sd(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

##To find the mode
getmode <-function(v){
  uniqv <-unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}
mode <- getmode(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
print(result)


##Standard Deviation
sd(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

#Question 1B: Create a 10 Bin Histogram
hist(projectData$Minimum, freq = F, breaks = 10)

#Question 1C: Create a box plot of a variable
boxplot(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., names = c("Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km."))

#Question 1D: Chose one way to graph and explain why
plot(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
##Why we used scatter plot. A pie chart would not make sense because we are not looking at the overall total of sea ice coverage but rather
##Instances that happen. At the same time we are not using bar graph because it would be a little easier to see the overall trend with a
##scatter plot

#Question 2A: Scatter plot

summary(lm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.~Temperature.Anomalies.based.on.20th.century.averages...C.,))
##The intercept will be 7.7128 and the slope will be -3.1813
##So the trendline is
plot(Temperature.Anomalies.based.on.20th.century.averages...C., Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., main="Sea Ice vs Temperature",
     xlab="Temperature (C)", ylab="Amount of Sea Ice",)
abline(lm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.~Temperature.Anomalies.based.on.20th.century.averages...C.,))


#Question 2C: R (Correlation Coefficient)
plot(Temperature.Anomalies.based.on.20th.century.averages...C., Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
R = cor(Temperature.Anomalies.based.on.20th.century.averages...C., Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
RSquared = R*R

plot(Temperature.Anomalies.based.on.20th.century.averages...C.)

#Question 2E
qqnorm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)#creates a plot with theoretical quantiles vs your actual data points
qqline(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)#overlays a perfect distribution curve


