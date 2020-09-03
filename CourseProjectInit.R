# Script Name: CourseProjectInit.R
# Author Name: Varun1914
# Course: Exploratory Data Analysis

# Download files
filename = "CourseProject.zip"
if(!file.exists(filename))
{
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl,
                  destfile = filename,
                  method = "curl")

}

# Unzip Files
unzip(filename)

# Gather Information
power_data <- read.table(file = "household_power_consumption.txt",
                         header = TRUE,
                         sep = ";",
                         na.strings = "?")

# 2007-02-01 and 2007-02-02
pwdata <- subset(power_data, power_data$Date == "1/2/2007" | power_data$Date == "2/2/2007")

