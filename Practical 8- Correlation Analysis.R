#Correlation Analysis

attach(trees)  #calling the pre-existing dataset trees
summary(trees)

#correlation coefficient of girth and height
cor(Girth,Height)

#correlation coefficient of volume and height
cor(Volume,Height)

#correlation coefficient of girth and volume
cor(Girth,Volume)

#scatter plot of height vs girth
plot(Girth,Height,main="scatter plot")



