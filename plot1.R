## Script for Plot 1
## Uses information about the dataset and variables from the script LoadData.R
## source("LoadData.R") will load the dataset and variables in R
## source("plot1.R") will save the png file in the working area

png("plot1.png", width=480, height=480)
hist(dataSubset$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()
