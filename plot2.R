#read data, cleaned and formatted from previous program - proj1.R
power.cons <-read.table("./power_consumption.txt",sep="|",header=TRUE)

# change DateTime class
power.cons$DateTime <- as.POSIXlt(power.cons$DateTime)

# open device
png(filename="./plot2.png",width=480,height=480,units="px")

# plot data, line plot
plot(power.cons$DateTime,power.cons$GlobalActivePower,xlab="",ylab="Global Active Power (kilowatts)", type="l")

# Turn off device
dev.off()

