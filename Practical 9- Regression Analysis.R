# Regression Analysis

attach(trees) 
summary(trees)

model=lm(Girth ~ Volume) 
model

coefficients(model)

plot(Girth,Height,main = "Regression model Girth vs Volume",col='blue',
     lwd=2,xlab="volume",ylab="girth")

#regression line between girth and height
abline(lm(Height~Girth),lwd=2)
