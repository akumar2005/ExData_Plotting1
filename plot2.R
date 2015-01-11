## Script for Plot 2
## Uses information about the dataset and variables from script LoadData.R
## source("LoadData.R") will load the dataset and variables in R
## source("plot2.R") will save the png file in the working area

png("plot2.png", width=480, height=480)
plot(datetime, dataSubset$global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()