# Exploratory Data Analysis (exdata-033) Course Project 1
# Four separate plots in a matrix 

plot4 <- function() {
        
        # Load in data subset
        source("subsetdata.R")
        dataSubset <- subsetdata()
        
        # Define png device
        png(filename = "plot4.png", height=480, width=480)
        
        # Create matrix for four plots
        par(mfrow = c(2,2))
        
        # Combine date and time
        datetime <- as.POSIXct(paste(as.character(dataSubset$Date), dataSubset$Time))
        
        # Upper left - Global active power over time
        plot(datetime, dataSubset$Global_active_power,  # x and y data
             ylab = "Global Active Power",              # y-axis label
             xlab = "",                                 # No x-axis label
             type="l")                                  # line graph
        
        # Upper right - Voltage over time
        plot(datetime, dataSubset$Voltage,              # x and y data
             ylab = "Voltage",                          # y-axis label (allow x-axis to default) 
             type="l")                                  # line graph
        
        # Lower left - Submetering over time
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
               bty = "n", lwd=1, 
               col = c("black", "red", "blue"), 
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        # Lower right Global_reactive_power over time
        plot(datetime, dataSubset$Global_reactive_power, 
             ylab = "Global_reactive_power", 
             type="l")
        
        # Close device
        dev.off()        
        
}