## R script for plotting Plot1 for EDA Course Project 1
##
## Data loading and preparation common to all plots performed in preplot.R

source("preplot.R")

# save plot as png 
png(filename="plot1.png", width=480, height=480) 

# create histogram
hist(sub_data$Global_active_power, 
     col="#FF2500",                             # set color
     main="Global Active Power",                # set title
     xlab="Global Active Power (kilowatts)",    # set x axis label
     )             

dev.off()                                       # close png device