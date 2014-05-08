install.packages("sqldf")
require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
Data <- read.csv.sql("./household_power_consumption.txt",sql=mySql, sep=";")

##Plot 3
png("plot3.png", width=480, height=480)
plot(Data_2,Data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
points(Data_2,Data$Sub_metering_2,type="l",col="red")
points(Data_2,Data$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),col=c("black","red","blue"))
dev.off()

