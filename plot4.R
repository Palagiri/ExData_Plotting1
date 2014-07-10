#This R script is for plotting the second plot4.R script to submit to the course
#Reading the file from the location
compleTb = read.csv(file="data/household_power_consumption.txt", sep=";",as.is=TRUE) 

# subsetting the data 
hhDt1 = compleTb[(compleTb$Date =="1/2/2007" | compleTb$Date == "2/2/2007"),]
colnames(hhDt1)
hhDt1$Date[1:10]
hhDt1$x = strptime(paste(hhDt1$Date, hhDt1$Time), "%d/%m/%Y  %H:%M:%S")
head(hhDt1$x)


png(filename="ExData_Plotting1/plot4.png")
par (mfrow=c(2,2))
with(hhDt1, plot(x, Global_active_power, type = "l", ylab="Global Active Power (kilowatts )", xlab=""))
with(hhDt1, plot(x, Voltage, type = "l", ylab="Voltage", xlab="date time"))

with ( hhDt1, plot (x, Sub_metering_1, type = "l", ylab="Energy Sub Metering", xlab=""))
with (hhDt1, points (x,Sub_metering_2, type = "l", col = "red"))
with (hhDt1, points (x,Sub_metering_3, type = "l", col = "blue"))
legend ("topright", col=c("black", "red", "blue"),
        pch= "-", legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

with(hhDt1, plot(x, Global_reactive_power, type = "l", xlab="date time"))
dev.off()github
