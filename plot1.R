png("plot1.png", width = 480, height = 480)

powerdf$Global_active_power <- as.numeric(powerdf$Global_active_power)

hist(powerdf$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     col = "Red")

dev.off()
