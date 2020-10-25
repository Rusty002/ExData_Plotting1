# Subsetting the required data only
datafile <- "household_power_consumption.txt"
data <- read.delim(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
mydata <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

# Plot 3

day <- strptime(paste(mydata$Date, mydata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
meter1 <- as.numeric(mydata$Sub_metering_1)
meter2 <- as.numeric(mydata$Sub_metering_2)
meter3 <- as.numeric(mydata$Sub_metering_3)
png("plot3.png", width = 480, height = 480)
plot(day, meter1, type="l", xlab = "", ylab = "Energy sub Metering")
lines(day, meter2, type = "l", col = "red")
lines(day, meter3, type = "l", col = "blue")
legend("topright", c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.off()