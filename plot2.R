# Exploratory Data Analysis (exdata-033) Course Project 1
# Line graph of Global_active_power values over time

plot2 <- function() {
        
        # Load in data subset
        source("subsetdata.R")
        dataSubset <- subsetdata()
        
        # Define png device
        png(filename = "plot2.png", height=480, width=480)
        
        # Combine date and time
        datetime <- as.POSIXct(paste(as.character(dataSubset$Date), dataSubset$Time))
        
        plot(datetime, dataSubset$Global_active_power,     # x and y data 
             ylab = "Global Active Power (kilowatts)",     # y-axis label
             xlab = "",                                    # No x-axis label
             type="l")                                     # Line graph                               # Histogtam column fill color
        
        # Close device
        dev.off()        
        
}