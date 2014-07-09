#This script plots the histogram of the Global Active Power data downloaded from 
#Reading the file from the location
compleTb = read.csv(file="data/household_power_consumption.csv", sep=";",as.is=TRUE) 
colnames(compleTb)
compleTb[1:2,]                   
#Converting the Date variable into 
compleTb$Date = as.Date(compleTb$Date, format="%d/%m/%Y")
head(compleTb$Date)
#subsettng the data
hhDt1 = compleTb[(compleTb$Date =="2007-02-01" | compleTb$Date == "2007-02-02"),]
head(hhDt1)
nrow(hhDt1)
#Converting the data into numeric values
hhDt1$Global_active_power = as.numeric(hhDt1$Global_active_power)

#Opening a png dev to write to
png(filename="ExData_Plotting1/plot1.png")
with (hhDt1, hist (Global_active_power, col="red", main="Global Active Power", 
                   xlab="Global Active Power (kilowatts)"))
dev.off()
