#####plot1.R

###This code assumes that the data has already been cut down to the desired
###range of dates. Shell code to perform that operation is included in
###README.md

pwr <- read.table("shortened_power.txt", header = TRUE, sep = ";")

hist(pwr$Global_active_power, col = "red", main = "Global Active Power",
                              xlab = "Global Active Power (kilowatts)")


