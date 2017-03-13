plot4<-function()
{
  par(mfrow=c(2,2))
  ##plot1
 plot(plotdata$timestamp,plotdata$Global_active_power,type="l",xlab="",ylab="Global Active Power")
  ##plot2
plot(plotdata$timestamp,plotdata$Voltage,type = "l",xlab="datetime",ylab = "Voltage")
  ##plot3
plot(plotdata$timestamp,plotdata$Sub_metering_1,type="l",
     xlab="", ylab = "Energy sub metering")
lines(plotdata$timestamp,plotdata$Sub_metering_2,col="red")
lines(plotdata$timestamp,plotdata$Sub_metering_3,col="blue")
##legend("topright",col=c("black","red","blue"),c("Sub_metering_1  ","Sub_metering_2  ","Sub_metering_3  "),lty=c(1,1), bty = "n",cex = .5)
##plot4
 plot(plotdata$timestamp,plotdata$Global_reactive_power,type = "l",xlab = "datetime",ylab="Global_reactive_power")
 dev.copy(png,file="plot4.png",width=480,height=480)
 cat("Plot4 was save to the plot4.png\n")
 graphics.off()
  
  }