#Load data if PowerData doesn't already exists. Takes about 1.5 minutes to load data so saves time for assignment to check! :)
if(!exists("PowerData"))
{
        #Read data - seperator is semi colon, headers are on first line, NAs are denoted by ? 
        PowerData <- read.table ("household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?", stringsAsFactors = FALSE)
        #Add a datetime stamp by concatenating the date and time fields into a new field and coverting to time format
        PowerData$DateTime = strptime( apply( PowerData[ , c("Date","Time") ], 1, paste, collapse=" "), "%d/%m/%Y %H:%M:%S")        
        #Set start date and end dates we are interested in
        StartDate <- as.POSIXct('2007-02-01 00:00:00')
        EndDate <- as.POSIXct('2007-02-02 23:59:59')
        #Subset based on these dates
        PowerData <- subset (PowerData, PowerData$DateTime >= StartDate & PowerData$DateTime <= EndDate)
}