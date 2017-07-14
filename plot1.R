d <- "~/household_power_consumption.txt"
d2 <- read.table(d, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
d3 <- d2[d2$Date %in% c("1/2/2007","2/2/2007") ,]
global_active_power <- as.numeric(d3$Global_active_power)
png("plot1.png", width=480, height=480)
hist(global_active_power, col="red", main="global active power", xlab="global active power (kw)")