## R script for plotting Plot2 for EDA Course Project 1
##
## Data loading and preparation common to all plots performed in preplot.R

source("preplot.R")

# save plot as png 
png(filename="plot2.png", width=480, height=480) 

# create plot
plot(sub_data$datetime, sub_data$Global_active_power, 
     type="l",                                  # line plot
     xlab="",                                   # omit x axis label
     ylab="Global Active Power (kilowatts)",    # set y axis label
     )

dev.off()                                       # close png device