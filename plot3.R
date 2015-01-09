#Load Data
source("W1_LoadPrepareData.R")
#Set graphics device, with height, width and background color props set.
png("plot3.png", width=480, height=480, bg="transparent")

#Begin by plotting the graph as type n so it does not get populated, set axis labels
plot(PowerData$DateTime, PowerData$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
#Add line to graph
lines(PowerData$DateTime, PowerData$Sub_metering_1, col="black")
lines(PowerData$DateTime, PowerData$Sub_metering_2, col="red")
lines(PowerData$DateTime, PowerData$Sub_metering_3, col="blue")

#Add legend to top right, setup labels, line type and colours
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col =c("black", "red", "blue"))

#close graphics device
dev.off()