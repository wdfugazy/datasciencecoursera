# get data
setwd("C:/Users/WFugazy/Documents/DataScience/datasciencecoursera")
dat <- read.csv("household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")


# convert variables into proper formats
dat$Date <- as.Date(dat$Date, "%d/%m/%Y")


# sub data for analysis

dat_sub <- dat[(dat$Date <= "2007-02-02") & (dat$Date >= "2007-02-01"), ]

# create histogram (Plot 1)
hist(dat_sub[,"Global_active_power"], main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")

dev.copy(png, file = "plot1.png")

dev.off()