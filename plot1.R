#Load Data
source("W1_LoadPrepareData.R")
#Set graphics device
png("plot1.png", width=480, height=480, bg="transparent")
#Create histogram of this data with labels, title and colours applied.
hist(PowerData$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col="red")
#close graphics device
dev.off()
