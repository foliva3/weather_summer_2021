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
ggplot(data = datw, aes(Date, AirTemp, group = 1))+
  geom_line()
help("ggplot")
tablet <- datw[16450:18127,]
#make a line plot for air temperature in June
ggplot(data = tablet, aes(Date, AirTemp, group = 1))+
  geom_line()
