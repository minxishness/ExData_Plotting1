dat<-read.table("household_power_consumption.txt",skip=66636, nrows=2880, sep=";", na.strings = "?", stringsAsFactors=F)

colnames(dat)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

dat$DateTime = paste(dat$Date, dat$Time)
dat$DateTime = as.POSIXlt(dat$DateTime,format="%d/%m/%Y %H:%M:%S")

png("plot2.png",width=480,height=480,units="px")

plot(dat$DateTime, dat$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l")

dev.off()