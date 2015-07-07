#####plot2.R

###This code assumes that the data has already been cut down to the desired
###range of dates. Shell code to perform that operation is included in
###README.md

library(lubridate)
library(tidyr)
library(dplyr)

pwr <- read.table("shortened_power.txt", header = TRUE, sep = ";")
power <- tbl_df(pwr)

### The following code uses dplyr and tidyr functions to merge Date and Time
power <- power %>%
          unite(Date_Time, Date, Time, sep = " ") %>%
          mutate(Date_Time = fast_strptime(Date_Time, "%d/%m/%Y %H:%M:%S"))

power %>%
  select(Date_Time, Global_active_power) %>%
  plot(Global_active_power ~ Date_Time, .)

