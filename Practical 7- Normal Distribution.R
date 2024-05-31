#Normal Distribution

#Q1. Suppose x is normally distributed with mean 17.96 and variance 375.67. 
#X represents the widget weight. What is the probability that a randomly 
#chosen widget weight weighs less than 19?

#To find F(19) = P(X<=19),
m=17.96
v=375.67
sd=sqrt(v)
pnorm(19,m,sd)  


#Q2. Assume that the test scores of the exam fit the normal distribution. 
#Furthuremore, the mean test score is 70 and the standard deviation is 15.4. 
#(a) What is the percentage of students scoring 84 marks or less than in exam? 
#(b) What is the percentage of students scoring 80 marks or more than in exam?
#(c) What is the percentage of students scoring more than 75 and 
#less than equal to 100 in exam?

M=70
SD=15.4

#(a) To find 100*P(X<=84)
pnorm(84,M,SD)*100

#(b) To find 100*P(X>=80)
(1-pnorm(80,M,SD,lower.tail = FALSE))*100

#(c) To find 100*P(75<X<=100)    
sum(dnorm(75:100,M,SD,log = FALSE))*100

F=pnorm(75:100,M,SD)
plot(F,xlab = "marks from 75 to 100",
     ylab = "probability distribution",
     main = "Normal Distribution")


#FUNCTIONS USED
#dnorm() gives the density function
#pnorm() gives the distribution function




