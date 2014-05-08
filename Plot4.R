install.packages("sqldf")
require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
Data <- read.csv.sql("./household_power_consumption.txt",sql=mySql, sep=";")

##Plot 4 

png("plot4.png", width=480, height=480)
par(mfcol=c(2,2))
Data_2<-strptime(paste(Data$Date,Data$Time), format="%d/%m/%Y %H:%M:%S")

plot(Data_2,Data$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l")

plot(Data_2,Data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
points(Data_2,Data$Sub_metering_2,type="l",col="red")
points(Data_2,Data$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),col=c("black","red","blue"),bty="n")

plot(Data_2,Data$Voltage, type="l", xlab="datetime",ylab="Voltage")

plot(Data_2,Data$Global_reactive_power, type="l", xlab="datetime",ylab="Global_reactive_power")
dev.off()


