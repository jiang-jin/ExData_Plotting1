filename <- "~/Desktop/WorkDirectory/household_power_consumption.txt"
data <- read.table(filename, sep =";", header = TRUE, na.strings = "?")

data$Date <- as.Date(data$Date, format="%d/%m/%y")
data$Time <- strptime(data$Time, format="%H:%M:%S")

subset <- Date == "1/2/2007" | Date == "2/2/2007"
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
