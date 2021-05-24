data()
airquality<-datasets::airquality
View(airquality)
##top 10 records
head(airquality,10)
tail(airquality,10)

##columns
airquality[,c(1,2)]
df<-airquality[,-6]
summary(airquality[1,])
#display only selected column
airquality$Wind

## summary of temp###
summary(airquality$Ozone)
summary(airquality)
summary(airquality$Temp)


####visualization using plots###
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type ="p")
plot(airquality)

####points and lines
plot(airquality$Wind, type = "b")#p=point, l = line, b = both
plot(airquality$Wind, xlab = 'No. of instances',
     ylab = 'ozone concentration', main = 'ozone levels in NY city'
     , col = 'blue', type = "b")

###bar chart horizontal bar = false
barplot(airquality$Ozone, main = 'ozone concentration in air',
        ylab = 'ozone levels', col='blue', horiz =F, axes =T)

barplot(airquality$Ozone, main = 'ozone concentration in air',
        ylab = 'ozone levels', col='yellow', horiz =T, axes =T)


### histogram
hist(airquality$Temp)
hist(airquality$Ozone)
hist(airquality$Temp,
     main = "solar radiation values in air",
     xlab = 'solar rad.', col = 'green' )

###box plot
boxplot(airquality$Temp, main ="Boxplot")
boxplot(airquality[,1:4],main ="Multiple", col = "pink")
boxplot(airquality[,1:5],main ="Multiple", col = "violet")
