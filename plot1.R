filename <- "~/Desktop/WorkDirectory/household_power_consumption.txt"
data <- read.table(filename, sep =";", header = TRUE, na.strings = "?")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dim(subSetData) # 2880, 9
png(filename="plot1.png", width=480, height=480)
> hist(subSetData$Global_active_power, main="Global Active Power",
       +      xlab="Global Active Power (kilowatts)", col="red")
dev.off()
