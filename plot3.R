## R script for plotting Plot3 for EDA Course Project 1
##
## Data loading and preparation common to all plots performed in preplot.R

source("preplot.R")

# save plot as png 
png(filename="plot3.png", width=480, height=480) 

# create plot
plot(sub_data$datetime, sub_data$Sub_metering_1,# setup plot with first dataset
     type="l",                                  # line plot
     xlab="",                                   # omit x axis label
     ylab="Energy sub metering",                # set y axis label
)

# plot second dataset
points(sub_data$datetime, sub_data$Sub_metering_2, col="#F8001F", type="l")

# plot third dataset
points(sub_data$datetime, sub_data$Sub_metering_3, col="#0432FF", type="l")

# create legend for plot
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       col=c("black", "#F8001F", "#0432FF")
       )

dev.off()                                       # close png device