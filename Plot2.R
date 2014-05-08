install.packages("sqldf")
require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
Data <- read.csv.sql("./household_power_consumption.txt",sql=mySql, sep=";")

##Plot 2
Data_2<-strptime(paste(Data$Date,Data$Time), format="%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(Data_2,Data$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.off()
