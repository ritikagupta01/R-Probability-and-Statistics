#NAME: RITIKA GUPTA
#ROLL NO.:
#COURSE: MSC MATHEMATICS



#Question 1. Create a set of first 5 prime numbers
P=c(2,3,5,7,11)
P

#Question 2. create a set of 10 random numbers from 50 to 100
R=sample(50:100,10)
R

#Question 3. calculate mean, median, mode of data
V=sample(1:100,15)
V
mean(V)
V1=sort(V) #sorting data in ascending order
V1
median(V1)
hist(V1,col = "lightblue",xlab = "range",ylab = "frequency",
     main = "Dataset: 15 numbers from 1 to 100")


#Question 4. Statistical inferences of data in excel
library(readxl)
data= read_excel("marks_data.xlsx")
View(data)

#mean, median of data in excel
mean1=mean(data$'Marks 1')
median1=median(sort(data$'Marks 1'))
mean2=mean(data$'Marks 2')
median2=median(sort(data$'Marks 2'))  

print(paste("Mean of first row = ",mean1))
print(paste("Median of first row = ",median1))
print(paste("Mean of second row = ",mean2))
print(paste("Median of second row = ",median2))

#standard deviation and variation
sd1=sd(data$`Marks 1`)
sd2=sd(data$`Marks 2`)
var1=var(data$`Marks 1`)
var2=var(data$`Marks 2`)

print(paste("Standard deviation of 1st row = ",sd1))
print(paste("Variance of 1st row = ",var1))
print(paste("Standard deviation of 2nd row = ",sd2))
print(paste("Variance of 2nd row = ",var2))

#kurtosis and skewness 
library(moments)
k1=kurtosis(data$`Marks 1`)
k2=kurtosis(data$`Marks 2`)
s1=skewness(data$`Marks 1`)
s2=skewness(data$`Marks 2`)

print(paste("Kurtosis of 1st row = ",k1))
print(paste("Skewness of 1st row = ",s1))
print(paste("Kurtosis of 2nd row = ",k2))
print(paste("Skewness of 2nd row = ",s2))





#sample() takes a sample of the specified size from the elements of x using either 
#with or without replacement.
#Argument replace=TRUE when size is greater than length of dataset.

#c() command is a function which combines its arguments to form a vector.

#sort() arranges data given in the argument in an ascending order

#mean() function calculates the arithmetic mean of the data given in its argument.

#median() function calculates the sample median of the data given in its argument.

#hist() function computes a histogram of the given data values.
#xlab, ylab arguments produce axes labels, 'main' argument produces title, and 
#col argument is used to give colour to fill the bars of the histogram.

#read_excel() is used to import excel data in R progam

#sd() function calculates standard deviation of data in its argument

#var() function calculates variance of data in its argument

#kurtosis() function calculates kurtosis of data in its argument

#skewness() function calculates skewness of data in its argument




#**********practice codes**************

S=sample(1:10)
S
x=1:100
x1=sample(x,10)
x2=sample(50:100,10)
x1
x2
length(x1)
length(x2)
y=c(2,4,6,8,10)
y
y1=c("H","T")
sample(1:2,10,replace = TRUE)

#**********practice codes**************
