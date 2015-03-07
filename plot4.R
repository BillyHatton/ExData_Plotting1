#Clean the data and create date-time variable to plot by date
Data = read.csv("CleanPowerData.csv")
Date.Time = paste(Data$Date,Data$Time)
Date.Time = strptime(Date.Time, "%Y-%m-%d %H:%M:%S")
Data = cbind(Data,Date.Time)

par(mfrow = c(2,2))
plot(Data$Date.Time,Data$Global_active_power,type = "l",ylab = "Global Active Power",xlab = "")

plot(Data$Date.Time,Data$Voltage,type = "l",xlab = "datetime",ylab = "Voltage")

plot(Data$Date.Time,Data$Sub_metering_1,type = "l", xlab = "", ylab = "Energy sub metering")
lines(Data$Date.Time,Data$Sub_metering_2, col ="red")
lines(Data$Date.Time,Data$Sub_metering_3, col ="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),cex=.3)

plot(Data$Date.Time,Data$Global_reactive_power,xlab = "datetime",ylab = "Global_reactive_power",type = "l")

dev.copy(png,"plot4.png")
dev.off()
