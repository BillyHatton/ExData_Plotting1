#Clean the data and create date-time variable to plot by date
Data = read.csv("CleanPowerData.csv")
Date.Time = paste(Data$Date,Data$Time)
Date.Time = strptime(Date.Time, "%Y-%m-%d %H:%M:%S")
Data = cbind(Data,Date.Time)

#Create the plot shown in instructions
plot(Data$Date.Time,Data$Global_active_power,type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")
dev.copy(png,"plot2.png")
dev.off()