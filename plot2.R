#####plot2.R

###This code assumes that the data has already been cut down to the desired
###range of dates. Shell code to perform that operation is included in
###README.md

pwr <- read.table("shortened_power.txt", header = TRUE, sep = ";")

plot <- {
          plot(pwr$Global_active_power, type = "l",
                xaxt = 'n', ylab = "Global Active Power (kilowatts)", xlab = "")
          axis(1, at=c(0, 1441, 2881), labels = c("Thu", "Fri", "Sat"))
}

png(filename = "plot2.png", width = 480, height = 480)


