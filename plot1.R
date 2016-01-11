dataFile <- "./data/household_power_consumption.txt"

##read datafile into a table
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#data$Date <- as.Date(data$Date, format="%d/%m/%Y")

## we only need two days of data for plotting
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSetData$Global_active_power)

##set image width & height
png("plot1.png", width=480, height=480)

##draw the histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()