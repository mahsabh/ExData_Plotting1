install.packages("sqldf")
require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
Data <- read.csv.sql("./household_power_consumption.txt",sql=mySql, sep=";")


##Plot 1
png("plot1.png", width=480, height=480)
hist(Data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()


