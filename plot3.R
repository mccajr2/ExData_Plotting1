# Exploratory Data Analysis (exdata-033) Course Project 1
# Line graph of submetering values over time 

plot3 <- function() {
        
        # Load in data subset
        source("subsetdata.R")
        dataSubset <- subsetdata()
        
        # Define png device
        png(filename = "plot3.png", height=480, width=480)
        
        # Combine date and time
        datetime <- as.POSIXct(paste(as.character(dataSubset$Date), dataSubset$Time))        
        
        # Submetering over time
        plot(datetime, dataSubset$Sub_metering_1,       # Plot based on Sub_metering_1 (largest y values)
             type="n",                                  # Don't display points
             ylab = "Energy sub metering",              # y-axis label
             xlab="")                                   # No x-axis label
        lines(datetime, dataSubset$Sub_metering_1,      # s_m_1 x and y data
              col = "black")                            # Black line
        lines(datetime, dataSubset$Sub_metering_2,      # s_m_2 x and y data 
              col = "red" )                             # Red line
        lines(datetime, dataSubset$Sub_metering_3,      # s_m_3 x and y data
              col = "blue" )                            # Blue line
        legend("topright",                              # Legend
               bty = "o", lwd=1, 
               col = c("black", "red", "blue"), 
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        # Close device
        dev.off()        
        
}