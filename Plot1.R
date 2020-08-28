# Plot1.R -----------------------------------------------------------------
hpc=read.csv2("E:/Exploratory/household_power_consumption.txt")
hpc = data %>% select(Date,Time,Global_active_power,Global_reactive_power,Voltage,Global_intensity,Sub_metering_1,Sub_metering_2,Sub_metering_3) %>%  filter(Date==as.Date("01/02/2007") | Date==as.Date("02/02/2007"))
Global_active_power=as.numeric(Global_active_power)
hist(Global_active_power,col="red")