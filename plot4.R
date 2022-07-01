png("plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

#Plot 1
plot(x = powerdf$dateTime, y = powerdf$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (killowatts)" )

#Plot2
plot(powerdf$dateTime, powerdf$Voltage, type = "l", xlab = "dateTime",
     ylab = "Voltage")

#Plot3
plot( x = powerdf$dateTime, y = powerdf$Sub_metering_1, type = "l", 
      xlab = "", ylab = "Energy Sub Metering")
lines(powerdf$dateTime, powerdf$Sub_metering_2, col = "Red")
lines(powerdf$dateTime, powerdf$Sub_metering_3, col = "blue")
legend("topright"
       , col = c("black", "red","blue")
       , c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       , lty = c(1,1), bty = "n", cex = 0.5)

#Plot4
plot(powerdf$dateTime, powerdf$Global_reactive_power, type = "l",
     xlab = "dateTime", ylab = "Global_reactive_power")
dev.off()
