plot2<-function(){
  plot(plotdata$timestamp,plotdata$Global_active_power,type="l",xlab="",
       ylab="Global Active Power (kilowatts)", col="black")
  
  dev.copy(png,file="plot2.png", width=480,height=480)
  dev.off()
  cat("Plot2 was save to the plot2.png\n")
  graphics.off()
}