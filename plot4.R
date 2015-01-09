#Load Data if required
source("W1_LoadPrepareData.R")
#Set graphics device, with height, width and background color props set.
png("plot4.png", width=480, height=480, bg="transparent")

#Setup plot with 2x2 format
par(mfrow=c(2,2))

##First plot (1,1) - same as Plot2.png
#Begin by plotting the graph as type n so it does not get populated, set axis labels
plot(PowerData$DateTime, PowerData$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type="n")
#Add line to graph
lines(PowerData$DateTime, PowerData$Global_active_power)

##Second plot (1,2) - similar to Plot2.png
#Begin by plotting the graph as type n so it does not get populated, set axis labels
plot(PowerData$DateTime, PowerData$Voltage, xlab = "datetime", ylab="Voltage", type="n")
#Add line to graph
lines(PowerData$DateTime, PowerData$Voltage)

##Third plot (2,1)
#Begin by plotting the graph as type n so it does not get populated, set axis labels
plot(PowerData$DateTime, PowerData$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
#Add line to graph
lines(PowerData$DateTime, PowerData$Sub_metering_1, col="black")
lines(PowerData$DateTime, PowerData$Sub_metering_2, col="red")
lines(PowerData$DateTime, PowerData$Sub_metering_3, col="blue")

#Add legend to top right, setup labels, line type and colours
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col =c("black", "red", "blue"), bty="n")

##Final plot (2,2) - similar to Plot2.png
#Begin by plotting the graph as type n so it does not get populated, set axis labels
plot(PowerData$DateTime, PowerData$Global_reactive_power, xlab = "datetime", ylab="Global_reactive_power", type="n")
#Add line to graph
lines(PowerData$DateTime, PowerData$Global_reactive_power)


#close graphics device
dev.off()