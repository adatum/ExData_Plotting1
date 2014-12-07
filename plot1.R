## R script for plotting Plot1 for EDA Course Project 1
##
## Data loading and preparation common to all plots performed in preplot.R

source("preplot.R")

# create histogram
hist(sub_data$Global_active_power, 
     col="#FF2500",                             # set color
     main="Global Active Power",                # set title
     xlab="Global Active Power (kilowatts)",    # set x axis label
     cex.main=0.9,                              # adjust title font size
     cex.axis=0.75,                             # adjust axis font size
     cex.lab=0.75,                              # adjust label font size
     )

dev.copy(png, file="plot1.png")                 # save png image as plot1.png               

dev.off()                                       # close png device