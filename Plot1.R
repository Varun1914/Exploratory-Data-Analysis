# Script Name: Plot1.R
# Author Name: Varun1914
# Course: Exploratory Data Analysis

library(grDevices)
# Histogram plotting
png(file = "plot1.png", bg = "transparent")

hist(x = pwdata$Global_active_power,
     col = 2,
     main = "Global Active Power",
     xlab = "Global Active Power(kilowatts)",
     )

dev.off()
