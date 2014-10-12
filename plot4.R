#read data, cleaned and formatted from previous program - proj1.R
power.cons <-read.table("./power_consumption.txt",sep="|",header=TRUE)

# change DateTime class
power.cons$DateTime<-as.POSIXlt(power.cons$DateTime)

# open device
png(filename="./plot4.png",width=480,height=480,units="px")

# make 4 plots
par(mfrow=c(2,2))

# plot -- top left 
plot(power.cons$DateTime,power.cons$GlobalActivePower,ylab="Global Active Power",xlab="",type="l")

# plot -- top right
plot(power.cons$DateTime,power.cons$Voltage,xlab="Datetime",ylab="Voltage",type="l")

# plot -- bottom right
linecolor<-c("black","red","blue")
labels <-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
plot(power.cons$DateTime,power.cons$SubMetering1,type="l",col=linecolor[1],xlab='',ylab="Energy sub metering")
legend("topright",legend=labels,col=linecolor,lty="solid")
lines(power.cons$DateTime,power.cons$SubMetering2,col=linecolor[2])
lines(power.cons$DateTime,power.cons$SubMetering3,col=linecolor[3])

# plot -- bottom left
plot(power.cons$DateTime,power.cons$GlobalReactivePower,xlab="Datetime",ylab="Global_reactive_power",type="l")

# Turn off device
dev.off()
