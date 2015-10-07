# Exploratory Data Analysis (exdata-033) Course Project 1
# Histogram of Global_active_power values

plot1 <- function() {
        
        # Load in data subset
        source("subsetdata.R")
        dataSubset <- subsetdata()
        
        # Define png device
        png(filename = "plot1.png", height=480, width=480)
        
        hist(dataSubset$Global_active_power,              # Data for histogram
             main = "Global Active Power",                # Main title
             xlab = "Global Active Power (kilowatts)",    # x-axis label
             ylab = "Frequency",                          # y-axis label
             col = "red")                                 # Histogtam column fill color
        
        # Close device
        dev.off()        
        
}