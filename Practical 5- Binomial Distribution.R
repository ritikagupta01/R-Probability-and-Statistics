#Binomial distribution

#Q1. The probability that a person can achieve a target is 3/4. The count
#of tries is 5, what is the probability that he will attain the target at
#least thrice?

#X is the discrete random Variable denoting successful tries
#X can have values: 0,1,2,3,4,5
#To find P(X>=3),

x=3:5
px=sum(dbinom(x,5,3/4))
print(paste("P(X>=3) = ",px))


#Q2. Find the probability of getting at least 5 heads on tossing an
#unbiased coin 6 times.

#Y is a discrete random variable denoting number of successes, i.e. heads
#Y can have values: 0,1,2,3,4,5,6
#To find P(Y>=5),

y=5:6
py=sum(dbinom(y,6,1/2))
print(paste("P(Y>=5) = ",py))

