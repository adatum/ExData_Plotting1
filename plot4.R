## R script for plotting Plot4 for EDA Course Project 1
##
## Data loading and preparation common to all plots performed in preplot.R

source("preplot.R")

save_par <- par()                               # save parameters

# set up multiple plots in 2x2 format
par(mfcol=c(2,2))

# create plot 1/4
plot(sub_data$datetime, sub_data$Global_active_power, 
     type="l",                                  # line plot
     xlab="",                                   # omit x axis label
     ylab="Global Active Power (kilowatts)",    # set y axis label
     cex.lab=0.75,                              # adjust label size
     cex.axis=0.75                              # adjust axis font size
)

# create plot 2/4

plot(sub_data$datetime, sub_data$Sub_metering_1,# setup plot 
     type="l",                                  # line plot
     xlab="",                                   # omit x axis label
     ylab="Energy sub metering",                # set y axis label
     cex.lab=0.75,                              # adjust label size
     cex.axis=0.75,                             # adjust axis font size
)
points(sub_data$datetime, sub_data$Sub_metering_2, col="#FF2500", type="l")
points(sub_data$datetime, sub_data$Sub_metering_3, col="#0432FF", type="l")
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       cex=0.75,
       col=c("black", "#FF2500", "#0432FF"), 
       bty ="n"
)

# create plot 3/4
plot(sub_data$datetime, sub_data$Voltage, 
     type="l",                                  # line plot
     xlab="datetime",                           # omit x axis label
     ylab="Voltage",                            # set y axis label
     cex.lab=0.75,                              # adjust label size
     cex.axis=0.75                              # adjust axis font size
)


# create plot 4/4
plot(sub_data$datetime, sub_data$Global_reactive_power, 
     type="l",                                  # line plot
     xlab="datetime",                           # omit x axis label
     ylab="Global_reactive_power",              # set y axis label
     cex.lab=0.75,                              # adjust label size
     cex.axis=0.75                              # adjust axis font size
)


dev.copy(png, file="plot4.png")                 # save png image               

dev.off()                                       # close png device

par(save_par)                                   # restore original parameters