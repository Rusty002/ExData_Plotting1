# Subsetting the required data only
datafile <- "household_power_consumption.txt"
data <- read.delim(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
mydata <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

# Plot 1

png("Plot1.png", width = 480, height = 480)
hist(as.numeric(mydata$Global_active_power), col = "red", xlab = "Global Active Power(killowatts)", main = "Global Active Power")
dev.off()