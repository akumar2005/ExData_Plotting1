## Script for Plot 4
## Uses information about the dataset and variables from script LoadData.R
## source("LoadData.R") will load the dataset and variables in R
## source("plot4.R") will save the png file in the working area

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
plot(datetime,dataSubset$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(datetime, dataSubset$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, dataSubset$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, dataSubset$Sub_metering_2, type="l", col="red")
lines(datetime, dataSubset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime, dataSubset$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()