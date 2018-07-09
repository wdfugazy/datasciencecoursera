# get data
setwd("C:/Users/WFugazy/Documents/DataScience/datasciencecoursera")
dat <- read.csv("household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")


# convert variables into proper formats
dat$Date <- as.Date(dat$Date, "%d/%m/%Y")
dat$DateTime <- as.POSIXct(paste(dat$Date,dat$Time), "%d/%m/%Y %H:%M:%S")

# sub data for analysis
dat_sub <- dat[(dat$Date <= "2007-02-02") & (dat$Date >= "2007-02-01"), ]

# make plot 2
plot(x = dat_sub$DateTime,
     y = dat_sub$Global_active_power,
     type = "l", 
     ylab = "Global Active Power (kilowatts)",
     xlab = "")

dev.copy(png, file = "plot2.png")

dev.off()
