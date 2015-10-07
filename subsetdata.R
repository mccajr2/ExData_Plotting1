# Read and return subset of data for Exploratory Data Analysis (exdata-033)
# Course Project 1

subsetdata <- function() {
        
        # Ensure Date column is read in as Date object
        setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y"))
        
        # Read file contents
        csvoutput <- read.csv("household_power_consumption.txt", colClasses = c("myDate","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), sep=";", na.strings = c("?"))
        
        # Eliminate NAs
        csvoutput <- na.omit(csvoutput)
        
        # Subset on pertinent dates and return data
        pertinentDates <- as.Date(c("2007-02-01","2007-02-02"))
        dataSubset <- subset(csvoutput, Date %in% pertinentDates)
        dataSubset
}
        