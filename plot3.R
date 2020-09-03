# Script Name: Plot2.R
# Author Name: Varun1914
# Course: Exploratory Data Analysis

library(grDevices)
library(lubridate)

pwdata$Date.Time <- paste(pwdata$Date, pwdata$Time, sep = " ")
pwdata$Date.Time <- parse_date_time(pwdata$Date.Time, orders = "dmY HMS")

png(filename = "plot3.png")
plot(x = pwdata$Date.Time, y = pwdata$Sub_metering_1,
     type = "l",
     col = "black",
     ylab = "Energy Sub metering",
     xlab = "")
points(x = pwdata$Date.Time, y = pwdata$Sub_metering_2,
       type = "l",
       col = "red")
points(x = pwdata$Date.Time, y = pwdata$Sub_metering_3,
       type = "l",
       col = "blue")
legend("topright",
       lty = 1,
       col = c("black", "red","blue"),
       bty = "n",
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
