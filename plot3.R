## Reading in the data 
> household_power_consumption <- read.csv("~/Desktop/household_power_consumption.txt", sep=";")

## Viewing the Data 
>   View(household_power_consumption)

## Changing "?" to NA
> household_power_consumption[household_power_consumption == "?"] <- NA

## Selecting the appropriate Data
> household_power_consumption$Date <- as.Date(household_power_consumption$Date, format = "%d/%m/%Y")
> Usable_Data <- household_power_consumption[household_power_consumption$Date >= as.Date("2007-02-01") & household_power_consumption$Date <= as.Date("2007-02-02"),]

## Checking the head of the data 
> head(Usable_Data)

            Date     Time Global_active_power Global_reactive_power
66637 2007-02-01 00:00:00               0.326                 0.128
66638 2007-02-01 00:01:00               0.326                 0.130
66639 2007-02-01 00:02:00               0.324                 0.132
66640 2007-02-01 00:03:00               0.324                 0.134
66641 2007-02-01 00:04:00               0.322                 0.130
66642 2007-02-01 00:05:00               0.320                 0.126
      Voltage Global_intensity Sub_metering_1 Sub_metering_2
66637 243.150            1.400          0.000          0.000
66638 243.320            1.400          0.000          0.000
66639 243.510            1.400          0.000          0.000
66640 243.900            1.400          0.000          0.000
66641 243.160            1.400          0.000          0.000
66642 242.290            1.400          0.000          0.000
      Sub_metering_3
66637              0
66638              0
66639              0
66640              0
66641              0
66642              0


## Creating a new posix date 
> Usable_Data$posix <- as.POSIXct(strptime(paste(Usable_Data$Date, Usable_Data$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S"))

## Checking the Class of Usable_Data$Global_active_power
> class(Usable_Data$Global_active_power)
[1] "factor"

##as.numeric
> Usable_Data$Global_active_power <- as.numeric(Usable_Data$Global_active_power)

## Open Quartz
> quartz()

## Save to png file 
> png(file = "plot3.png", width = 480, height = 480, units = "px")

## make the plot line 1
> with(Usable_Data, plot(posix, Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering"))

## make the plot line 2
> with(Usable_Data, points(posix, type = "l", Sub_metering_2, col = "red"))

## make the plot line 3
> with(Usable_Data, points(posix, type = "l", Sub_metering_3, col = "blue"))

## edit the legend of the plot 
> legend("topright", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
