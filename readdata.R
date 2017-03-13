##Loading the Plot function files

source("Plot1.R" )
source("Plot2.R")
source("Plot3.R")
source("Plot4.R")
## Saving the url to the data
myurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
## Checking to see if we downloaded data before
if(file.exists("household_power_consumption.txt")){
  myfile<-tempfile()
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",myfile)
  thisfile<-unzip(myfile)
  unlink(myfile)
  
}
##reading file into a table
mypower<-read.table(thisfile,header = T,sep = ";")
##converting the variables into the proper claases
mypower$Date<-as.Date(mypower$Date,format="%d/%m/%Y")
plotdata<-mypower[(mypower$Date=="2007-02-01")|(mypower$Date=="2007-02-02"),]
plotdata$Global_active_power<-as.numeric(as.character(plotdata$Global_active_power))
plotdata$Global_reactive_power<-as.numeric(as.character(plotdata$Global_reactive_power))
plotdata$Voltage<-as.numeric(as.character(plotdata$Voltage))
plotdata$Sub_metering_1<-as.numeric(as.character(plotdata$Sub_metering_1))
plotdata$Sub_metering_2<-as.numeric(as.character(plotdata$Sub_metering_2))
plotdata$Sub_metering_3<-as.numeric(as.character(plotdata$Sub_metering_3))
mytimestamp<-paste(plotdata$Date,plotdata$Time)
plotdata<-transform(plotdata,timestamp=as.POSIXct(mytimestamp,""))
## removing mypower object
rm(mypower)
plot1()
plot2()
plot3()
plot4()