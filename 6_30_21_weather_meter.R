library(lubridate)
library(ggplot2)
datw <- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\weather\\Meter\\meter_weather_data.csv", 
                 na.strings = "#N/A")
#make a histogram for precipitation
hist(datw$Precip, xlab= "Precipitation (mm)", 
     ylab= "Frequency", col= "grey75", border="white")
#changed format of date using lubridate
datw$Date <- mdy_hm(datw$Date)
#make a line plot for air temperature
plot(datw$Date, datw$AirTemp, type = "l")
help("asp")     
