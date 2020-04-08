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
print(mode)


##Standard Deviation
sd(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

#Question 1B: Create a 10 Bin Histogram
hist(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., freq = F, breaks = 10, main = "Histogram of Minimum Arctic Sea Ice Extent")

#Question 1C: Create a box plot of a variable
boxplot(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., names = c("Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km."), col = c("red"))


#Question 1D: Chose one way to graph and explain why
plot(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., main = "Minimum Sea Ice Extent per Year", xlab = "Number of Years since 1980",
     ylab = "Minimum Arctic Sea Ice Extent (Millions of Squared km)", pch = 21, bg = c("blue"))
##Why we used scatter plot. A pie chart would not make sense because we are not looking at the overall total of sea ice coverage but rather
##Instances that happen. At the same time we are not using bar graph because it would be a little easier to see the overall trend with a
##scatter plot

#Question 2A: Scatter plot

summary(lm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.~Temperature.Anomalies.based.on.20th.century.averages...C.,))
##The intercept will be 7.7128 and the slope will be -3.1813
##So the trendline is [[y = -3.1813x + 7.7128]]
plot(Temperature.Anomalies.based.on.20th.century.averages...C., Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., 
     main="Mnimum Sea Ice Extent vs Temperature Anomaly",
     xlab="Temperature Anomaly based on 20th Century Average (C)", 
     ylab="Minimum Sea Ice Coverage (Millions of Squared km)", pch = 21, bg = c("Purple"))
abline(lm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.~Temperature.Anomalies.based.on.20th.century.averages...C.,))


#Question 2C: R (Correlation Coefficient)
plot(Temperature.Anomalies.based.on.20th.century.averages...C., Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
R = cor(Temperature.Anomalies.based.on.20th.century.averages...C., Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
RSquared = R*R

plot(Temperature.Anomalies.based.on.20th.century.averages...C.)

#Question 2E
qqnorm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)#creates a plot with theoretical quantiles vs your actual data points
qqline(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)#overlays a perfect distribution curve


