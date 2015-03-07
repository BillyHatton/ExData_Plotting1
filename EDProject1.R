setwd("C:/Users/C16William.Hatton/Documents/Math 378/R Stuff/Exploratory Data")
AllData = read.table("household_power_consumption.txt",header = TRUE, sep = ";")

DesiredData = subset(AllData, Date == "1/2/2007" | Date == "2/2/2007")
Date.Time = paste(DesiredData$Date,DesiredData$Time)
Date.Time = strptime(Date.Time, "%d/%m/%Y %H:%M:%S")
Date.Time = as.Date(DesiredData$Date)
CSVData = cbind(DesiredData,Date.Time)

write.csv(DesiredData,file = "CleanPowerData.csv",row.names = FALSE)
