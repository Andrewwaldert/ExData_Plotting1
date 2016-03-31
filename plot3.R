



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
