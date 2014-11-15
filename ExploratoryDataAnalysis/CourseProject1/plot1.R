
setwd('E:/MOOCs/Coursera/Data Science - Specialization/Exploratory Data Analysis/Course Project 1')

filename <- 'household_power_consumption.txt'

colNames <- c("date", "time", "global_active_power", "global_reactive_power", "voltage", "global_intensity", "sub_metering1", "sub_metering2", "sub_metering3")
colClasses = c("character", "character", rep("numeric",7) )

df <- read.table(filename, header=TRUE, sep=";", col.names=colNames, colClasses=colClasses, na.strings="?")

df$date <- as.Date(df$date, format="%d/%m/%Y")
df <-  df[df$date >= as.Date("2007-02-01") & df$date<=as.Date("2007-02-02"),]

png(filename="plot1.png", width=480, height=480, units="px")
hist(df$global_active_power, col="red",  xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
