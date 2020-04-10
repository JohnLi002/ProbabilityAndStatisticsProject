setwd("~/R-code/Github/ProbabilityAndStatisticsProject")

projectData <- read.table("Sea Ice and Temperature Data.txt", sep = ",", header = TRUE) #reads table data
attach(projectData)

#Question 1A: Find the mean, median, mode, variance, and standard deviation
summary(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

##Variance
var(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

##Standard Deviation
sd(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

##To find the mode
getmode <-function(v){
  uniqv <-unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}
mode <- getmode(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
print(mode)

#Question 1B: Create a 10 Bin Histogram
hist(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., freq = F, breaks = 10, main = "Histogram of Minimum Arctic Sea Ice Extent", xlab = "Minimum Arctic Sea Ice Extent (Millions of Squared km)")

#Question 1C: Create a box plot of a variable
boxplot(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., names = c("Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km."), col = c("red"))


#Question 1D: Chose one way to graph and explain why
plot(Year, Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km., main = "Minimum Sea Ice Extent per Year", xlab = "Years",
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

#Question 2B
abline(lm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.~Temperature.Anomalies.based.on.20th.century.averages...C.,))


#Question 2C: R (Correlation Coefficient)
R = cor(Temperature.Anomalies.based.on.20th.century.averages...C., Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)

#Question 2D: R Squared (Coefficient of Determination)
RSquared = R*R

#Question 2E
qqnorm(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)#creates a plot with theoretical quantiles vs your actual data points
qqline(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)#overlays a perfect distribution curve


#Questions 3a: Minimum Arctic Sea Ice (Dependent Variable = Y)
n_Y = nrow(projectData)
bar_Y = mean(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
std_dev_Y = sd(Minimum.Arctic.Sea.Ice.Extent..Millions.of.squared.km.)
population_std_dev_Y = sqrt(((std_dev_Y)*(std_dev_Y)*(n_Y-1))/n_Y)
z_critical_value_Y = qnorm(1-(.05/2))#Critical Value 95% alpha =0.05

#Margin of Error
z_margin_of_error_Y = (z_critical_value_Y*(population_std_dev_Y/sqrt(n_Y)))

#Confidence Interval
right_bound_z_Y = bar_Y + z_margin_of_error_Y
left_bound_z_Y = bar_Y - z_margin_of_error_Y
cat("The 95% Confidence Interval for the true population mean Sea Ice is: (", left_bound_z_Y,",", right_bound_z_Y,")")



#Questions 3b: Temperature Anomaly (Independent Variable = X)
n_X = nrow(projectData)#sets sample size
bar_X = mean(Temperature.Anomalies.based.on.20th.century.averages...C.)#Finds the mean
std_dev_X = sd(Temperature.Anomalies.based.on.20th.century.averages...C.)#Finds standard diviation
population_std_dev_X = sqrt(((std_dev_X)*(std_dev_X)*(n_X-1))/n_X)#Finds the population SD [needed for z]
z_critical_value_X = qnorm(1-(.05/2)) #Finds critical value for 95% (alpha = 0.05) --> 1-(alpha/2)

#Margin of Error
z_margin_of_error_X = (z_critical_value_X*(population_std_dev_X/sqrt(n_X)))#Finds the margin of error for 95% CI

#Confidence Interval
right_bound_z_X = bar_X + z_margin_of_error_X
left_bound_z_X = bar_X - z_margin_of_error_X
cat("We are 95% confident for the true population mean temperature anomilies of the artic is: (",left_bound_z_X,",",right_bound_z_X,")")


#EXTRA
##Graphing
plot(Year, Temperature.Anomalies.based.on.20th.century.averages...C., main = "Minimum Sea Ice Extent per Year", xlab = "Year",
     ylab = "Temperature Anomaly based on 20th Century Average (C)", pch = 21, bg = c("blue"))



