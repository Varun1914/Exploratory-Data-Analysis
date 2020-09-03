# Script Name: Plot2.R
# Author Name: Varun1914
# Course: Exploratory Data Analysis

library(grDevices)
library(lubridate)

pwdata$Date.Time <- paste(pwdata$Date, pwdata$Time, sep = " ")
pwdata$Date.Time <- parse_date_time(pwdata$Date.Time, orders = "dmY HMS")

png(filename = "plot2.png")

plot(pwdata$Date.Time, pwdata$Global_active_power,
     type = "l",
     ylab = "Global Active Power(kilowatts",
     xlab = "")

dev.off()
