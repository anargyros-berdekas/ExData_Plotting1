d <- "~/household_power_consumption.txt"
d2 <- read.table(d, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
d3 <- d2[d2$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(d3$Date, d3$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global_active_power <- as.numeric(d3$Global_active_power)
s1 <- as.numeric(d3$Sub_metering_1)
s2 <- as.numeric(d3$Sub_metering_2)
s3 <- as.numeric(d3$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(dt, s1, type="l", ylab="Energy Submetering", xlab="")
lines(dt, s2, type="l", col="red")
lines(dt, s3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
