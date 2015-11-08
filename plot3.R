setwd("C:/Users/sanjay/Desktop/COURSERA/Exploratory Data Analysis - Project 1/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")

subdata <- filter(data,as.Date(data$Date,'%d/%m/%Y')=="2007-02-01" | as.Date(data$Date,'%d/%m/%Y')=="2007-02-02" )

datetime <- strptime(paste(subdata$Date,subdata$Time,sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)
plot(datetime,subdata$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")

lines(datetime,subdata$Sub_metering_2, type="l", col="red")
lines(datetime,subdata$Sub_metering_3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

