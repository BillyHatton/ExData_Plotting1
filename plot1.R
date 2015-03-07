#Clean the data and create date-time variable to plot by date
Data = read.csv("CleanPowerData.csv")
Date.Time = paste(Data$Date,Data$Time)
Date.Time = strptime(Date.Time, "%Y-%m-%d %H:%M:%S")
Data = cbind(Data,Date.Time)

#Create a histogram
hist(Data$Global_active_power, col = "red",xlab = "Global Active Power (kilowatts)",ylab = "Frequency", main = "Global Active Power")
dev.copy(png,"plot1.png")
dev.off()