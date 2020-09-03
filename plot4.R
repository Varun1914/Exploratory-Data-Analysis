# Script Name: Plot2.R
# Author Name: Varun1914
# Course: Exploratory Data Analysis

library(grDevices)
library(lubridate)

pwdata$Date.Time <- paste(pwdata$Date, pwdata$Time, sep = " ")
pwdata$Date.Time <- parse_date_time(pwdata$Date.Time, orders = "dmY HMS")

png(filename = "plot4.png")

par(mfrow = c(2,2))

# Plot 1
plot(x = pwdata$Date.Time, y = pwdata$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")

# Plot 2
plot(x = pwdata$Date.Time, y = pwdata$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# Plot 3
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

# plot 4
plot(x = pwdata$Date.Time, y = pwdata$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_Reactive_Power")

dev.off()
