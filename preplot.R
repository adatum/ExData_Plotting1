## R script for preparing data for plotting for EDA Course Project 1
##
## Assumes that file "household_power_consumption.txt" exists in current directory
## and is structured by 9 columns as follows:
##
# Date: format dd/mm/yyyy
# Time: format hh:mm:ss
# Global_active_power: in kilowatt
# Global_reactive_power: in kilowatt
# Voltage: in volt
# Global_intensity: in ampere
# Sub_metering_1: in watt-hour of active energy
# Sub_metering_2: in watt-hour of active energy
# Sub_metering_3: in watt-hour of active energy

file <- "household_power_consumption.txt"               # data filename
classes <- c(rep("character", 2), rep("numeric", 7))    # specify column classes

# read data file
data <- read.table(file, header=T, colClasses=classes, sep=";", na.strings="?", nrows=2075259)

# combine date and time columns into new column and remove old columns
data <- cbind.data.frame(paste(data$Date, data$Time), data, stringsAsFactors=F)
colnames(data)[1] <- "datetime"
data <- data[, !names(data) %in% c("Date", "Time")]

# convert datetime column from character to date objects
data$datetime <- strptime(data$datetime, format="%d/%m/%Y %H:%M:%S")

# subset desired date range of 2007/02/01 to 2007/02/02
start_date <- strptime("2007/02/01", format="%Y/%m/%d")
end_date <- strptime("2007/02/03", format="%Y/%m/%d")
sub_data <- subset(data, data$datetime >= start_date & data$datetime < end_date)