## R script for plotting Plot3 for EDA Course Project 1
##
## Data loading and preparation common to all plots performed in preplot.R

source("preplot.R")

# create plot
plot(sub_data$datetime, sub_data$Sub_metering_1,# setup plot 
     type="l",                                  # line plot
     xlab="",                                   # omit x axis label
     ylab="Energy sub metering",                # set y axis label
     cex.lab=0.75,                              # adjust label size
     cex.axis=0.75,                             # adjust axis font size
)

points(sub_data$datetime, sub_data$Sub_metering_2, col="#F8001F", type="l")

points(sub_data$datetime, sub_data$Sub_metering_3, col="#0432FF", type="l")

legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       cex=0.75,
       col=c("black", "#F8001F", "#0432FF"), 
       text.width=strwidth(legend),
       xjust=0
       )

dev.copy(png, file="plot3.png")                 # save png image               

dev.off()                                       # close png device