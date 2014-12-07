## R script for plotting Plot2 for EDA Course Project 1
##
## Data loading and preparation common to all plots performed in preplot.R

source("preplot.R")

# create plot
plot(sub_data$datetime, sub_data$Global_active_power, 
     type="l",                                  # line plot
     xlab="",                                   # omit x axis label
     ylab="Global Active Power (kilowatts)",    # set y axis label
     cex.lab=0.75,                              # adjust label size
     cex.axis=0.75                              # adjust axis font size
     )

dev.copy(png, file="plot2.png")                 # save png image               

dev.off()                                       # close png device