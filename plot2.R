#Load Data
source("W1_LoadPrepareData.R")
#Set graphics device, with height, width and background color props set.
png("plot2.png", width=480, height=480, bg="transparent")

#Begin by plotting the graph as type n so it does not get populated, set axis labels
plot(PowerData$DateTime, PowerData$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type="n")
#Add line to graph
lines(PowerData$DateTime, PowerData$Global_active_power)

#close graphics device
dev.off()