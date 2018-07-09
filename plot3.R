# get data
setwd("C:/Users/WFugazy/Documents/DataScience/datasciencecoursera")
dat <- read.csv("household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")


# convert variables into proper formats
dat$Date <- as.Date(dat$Date, "%d/%m/%Y")
dat$DateTime <- as.POSIXct(paste(dat$Date,dat$Time), "%d/%m/%Y %H:%M:%S")

# sub data for analysis
dat_sub <- dat[(dat$Date <= "2007-02-02") & (dat$Date >= "2007-02-01"), ]

# open png graphics device and add plot

png("plot3.png", width = 480, height = 480)


plot(dat_sub$DateTime, dat_sub$Sub_metering_1, 
     type = "l",
     xlab = " ",
     ylab = "Energy Sub-Metering")
lines(dat_sub$DateTime, dat_sub$Sub_metering_2, col = "Red")
lines(dat_sub$DateTime, dat_sub$Sub_metering_3, col = "Blue")

legend("topright", col = c("Black", "Red", "Blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 1)

dev.copy(png, file = "plot3.png")

dev.off()

