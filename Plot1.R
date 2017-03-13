plot1<-function(){
  hist(plotdata$Global_active_power,col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  dev.copy(png,file="plot1.png", width=480,height=480)
  dev.off()
  cat("Plot1 was save to the plot1.png\n")
  graphics.off()
}