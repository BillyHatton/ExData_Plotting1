#Clean the data and create date-time variable to plot by date
Data = read.csv("CleanPowerData.csv")
Date.Time = paste(Data$Date,Data$Time)
Date.Time = strptime(Date.Time, "%Y-%m-%d %H:%M:%S")
Data = cbind(Data,Date.Time)

plot(Data$Date.Time,Data$Sub_metering_1,type = "l", xlab = "", ylab = "Energy sub metering")
lines(Data$Date.Time,Data$Sub_metering_2, col ="red")
lines(Data$Date.Time,Data$Sub_metering_3, col ="blue")
legend("topright",c("Sub_metering_1     ","Sub_metering_2    ","Sub_metering_3    "),lty = c(1,1,1), col = c("black","red","blue"),cex = .8)

dev.copy(png,"plot3.png")
dev.off()
