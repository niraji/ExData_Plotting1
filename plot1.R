# read data, cleaned and formatted from previous program - proj1.R
power.cons <-read.table("./power_consumption.txt",sep="|",header=TRUE)

# change DateTime class
power.cons$DateTime <- as.POSIXlt(power.cons$DateTime)

# open device
png(filename="./plot1.png",width=480,height=480,units="px")

# plot data, histogram 
hist(power.cons$GlobalActivePower,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")

# Turn off device
dev.off()
