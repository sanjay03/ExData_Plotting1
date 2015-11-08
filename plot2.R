setwd("C:/Users/sanjay/Desktop/COURSERA/Exploratory Data Analysis - Project 1/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")

subdata <- filter(data,as.Date(data$Date,'%d/%m/%Y')=="2007-02-01" | as.Date(data$Date,'%d/%m/%Y')=="2007-02-02" )

datetime <- strptime(paste(subdata$Date,subdata$Time,sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)

plot(datetime,subdata$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab="")

dev.off()