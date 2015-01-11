###### Load dataset into R ####################

######### Download the zip file in working area #########
setwd("./ExporatoryDataAnalysis")
url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file <- "household_power_consumption"
download.file(url, file, method = "curl")

# Extract the contents of zip file, gives "household_power_consumption.txt" file
unzip(file, exdir = "./")
dataFile <- "household_power_consumption.txt"

#Load the dataset into data frame
data <- read.table(dataFile, header=TRUE, sep=";")

# Subset the data for the two dates of interest
dataSubset <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

# Convert columns (3-9) to numeric
for(i in c(3:9)) {dataSubset[,i] <- as.numeric(as.character(dataSubset[,i]))}

# Create Date Time variable
# Convert Date Time variable to proper format
datetime <- strptime(paste(dataSubset$Date, dataSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")






        
