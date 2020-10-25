# Subsetting the required data only
datafile <- "household_power_consumption.txt"
data <- read.delim(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
mydata <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

# Plot 2
day <- strptime(paste(mydata$Date, mydata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
plot(day, as.numeric(mydata$Global_active_power), type="l", ylab = "Global Active Power(kilowatts)", xlab = "")
dev.off()
