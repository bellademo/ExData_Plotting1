install.packages("data.table")
library(data.table)

filename<- "exdata_data_household_power_consumption.zip" 
if(!file.exists(filename)) {
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileURL, filename, method = "curl")
}

if (!file.exists("household_power_consumption.txt")) {
  unzip(filename)
}

powerdf <- data.table::fread(input = "household_power_consumption.txt"
                             , na.strings = "?")

as.Date(powerdf$Date, "%d/%m/%Y")

powerdf <- powerdf[(Date == "1/2/2007") | (Date == "2/2/2007")]


