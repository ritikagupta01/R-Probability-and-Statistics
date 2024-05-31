#sample dataset
y=sample(10:30,200,replace = T)

#class interval

#seq(a,b,c) generates a sequence from a to b by common difference c.
a=seq(10,30,2)
#cut(x,y) divides the range of x into intervals corresponding to y.
y1=cut(y,a)


#frequency table
f=table(y1)
f

#cumulative frequency
cf=cumsum(f)
cf

s=c(0,cf)
s
plot(a,s,xlab="temp",ylab="cumulative freq",col="black",pch=19)
lines(a,s,col="darkgray",lwd=2)




