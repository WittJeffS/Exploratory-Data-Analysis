if (!file.exists('source data')) {
  dir.create('source data')
}
if (!file.exists('source data/power_consumption.txt')) {
  file.url<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
  download.file(file.url,destfile='source data/power_consumption.zip')
  unzip('source data/power_consumption.zip',exdir='source data',overwrite=TRUE)
}
library(dplyr)

Data <- read.table('source data/household_power_consumption.txt', sep=';', header=TRUE, na.strings='?') %>%
  mutate(Date = as.Date(Date, '%d/%m/%Y')) %>%
  mutate(Time = as.POSIXct(strptime(paste(Date, ' ', Time), '%Y-%m-%d %H:%M:%S'))) %>%
  filter(Time >= strftime('2007-02-01 00:00:00'), Time < strftime('2007-02-03 00:00:00')) %>%
  mutate(Sub_metering_1 = as.numeric(Sub_metering_1))
  mutate(Sub_metering_2 = as.numeric(Sub_metering_2))
  mutate(Sub_metering_3 = as.numeric(Sub_metering_3))
  mutate(Global_active_power = as.numeric(Global_active_power))
tbl_df