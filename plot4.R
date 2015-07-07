#####plot4.R

###This code assumes that the data has already been cut down to the desired
###range of dates. Shell code to perform that operation is included in
###README.md

pwr <- read.table("shortened_power.txt", header = TRUE, sep = ";")

par(mfrow = c(2, 2))

plot(pwr$Global_active_power, type = "l",
     xaxt = 'n', ylab = "Global Active Power (kilowatts)", xlab = "")
axis(1, at=c(0, 1441, 2881), labels = c("Thu", "Fri", "Sat"))

plot(pwr$Voltage, type = "l",
     xaxt = 'n', ylab = "Voltage", xlab = "datetime")
axis(1, at=c(0, 1441, 2881), labels = c("Thu", "Fri", "Sat"))

plot(pwr$Sub_metering_1, type = "l",
     xaxt = 'n', ylab = "Energy sub metering", xlab = "")
lines(pwr$Sub_metering_2, col = "red")
lines(pwr$Sub_metering_3, col = "blue")
axis(1, at=c(0, 1441, 2881), labels = c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1), lwd = c(2.5, 2.5, 2.5), col = c("black", "red", "blue"))

plot(pwr$Global_reactive_power, type = "l",
     xaxt = 'n', ylab = "Global_reactive_power", xlab = "datetime")
axis(1, at=c(0, 1441, 2881), labels = c("Thu", "Fri", "Sat"))

png(filename = "plot4.png", width = 480, height = 480)
