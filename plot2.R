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

Opening Quartz
> quarts()
