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
#line plot for precipitation in June
ggplot(data = tablet, aes(Date, Precip, group = 1))+
  geom_line()
#line plot for precipitation in June with date labeled
#converted date to POSIXct
Datet <- as.POSIXct(tablet$Date, format = "%m/%d/%Y %H:%M")
ggplot(data = tablet, aes(Datet, Precip, group = 1))+
  geom_line()+
  scale_x_datetime(date_breaks = "1 day", 
                   date_labels = "%m/%d")
