png("plot3.png", width = 480, height = 480)

plot( x = powerdf$dateTime, y = powerdf$Sub_metering_1, type = "l", 
      xlab = "", ylab = "Energy Sub Metering")
      lines(powerdf$dateTime, powerdf$Sub_metering_2, col = "Red")
      lines(powerdf$dateTime, powerdf$Sub_metering_3, col = "blue")
      legend("topright"
             , col = c("black", "red","blue")
             , c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
             , lty = c(1,1), lwd = c(1,1))
    
dev.off()
