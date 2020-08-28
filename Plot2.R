# Plot2.R -----------------------------------------------------------------
hpc=read.csv2("E:/Exploratory/household_power_consumption.txt")
datetime<-as.POSIXlt(paste(hpc$Date,hpc$Time),format = "%d/%m/%Y %H:%M:%S")
hpc<-data.frame(hpc,datetime)
hpc<-subset(hpc,datetime>="2007-02-01 00:00:00"&datetime<="2007-02-02 23:59:00")
plot(hpc$datetime,hpc$Global_active_power,ylab = "Global Active Power (kilowatts)",xlab = "",type = "l")
