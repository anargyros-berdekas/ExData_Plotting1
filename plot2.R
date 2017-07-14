d <- "~/household_power_consumption.txt"
d2 <- read.table(d, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
d3 <- d2[d2$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(d3$Date, d3$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global_active_power <- as.numeric(d3$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dt, global_active_power, type="l", xlab="", ylab="global active power (kw)")
