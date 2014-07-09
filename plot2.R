#This R script is for plotting the second plot2.R script to submit to the course
#Reading the file from the location
compleTb = read.csv(file="data/household_power_consumption.txt", sep=";",as.is=TRUE) 

# subsetting the data 
hhDt1 = compleTb[(compleTb$Date =="1/2/2007" | compleTb$Date == "2/2/2007"),]
colnames(hhDt1)
hhDt1$Date[1:10]
hhDt1$x = strptime(paste(hhDt1$Date, hhDt1$Time), "%d/%m/%Y  %H:%M:%S")
head(hhDt1$x)


#Opening the png file for the plot
png(filename="ExData_Plotting1/plot2.png")
with ( hhDt1, plot (x, Global_active_power, type = "l", ylab="Global Active Power (kilowatts )", 
                    xlab=""))
dev.off()

