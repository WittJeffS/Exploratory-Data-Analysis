source('R/ExploratoryDataAnalysis/LoadData.R')
png(filename='plot2.png', width=480, height=480, units='px')
plot(Data$Time,Data$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type= "l")
dev.off()
