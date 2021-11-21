library(tseries)
library(forecast)
data_1 <- read_csv("C:\\Users\\asus\\Desktop\\College\\3rd semester\\Time series-Akhileshwar\\AirPassengers.csv")
data(AirPassengers)
AirPassengers
class(AirPassengers)
end(AirPassengers)
sum(is.na(AirPassengers)) ##check missing values
frequency(AirPassengers)
summary(AirPassengers)

# Test Stationarity
adf.test(AirPassengers, alternative ="stationary", k=12)

plot(AirPassengers,main="Air Passenger numbers from 1949 to 1961") #show sparkine
# how they vary with time


plot(AirPassengers)+abline(reg=lm(AirPassengers~time(AirPassengers))) 

#Remove unequal variance using log of time series 
plot(log(AirPassengers))

plot(diff(log(AirPassengers))) 

# Now, we can see mean and variance both are stationary

# Find trend
plot(aggregate(AirPassengers,FUN = mean))

# to find seasonality
boxplot(AirPassengers~cycle(AirPassengers))
