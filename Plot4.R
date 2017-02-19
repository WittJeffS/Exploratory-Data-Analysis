source('R/ExploratoryDataAnalysis/LoadData.R')

png(filename='plot4.png',width=480,height=480,units='px')
par(mfrow=c(2,2))
plot(Data$Time,Data$Global_active_power,ylab='Global Active Power',xlab='',type='l')
plot(Data$Time,Data$Voltage,xlab='datetime',ylab='Voltage',type='l')

ncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(Data$Time,Data$Sub_metering_1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(Data$Time,Data$Sub_metering_2,col=lncol[2])
lines(Data$Time,Data$Sub_metering_3,col=lncol[3])

plot(Data$Time,Data$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')

dev.off()