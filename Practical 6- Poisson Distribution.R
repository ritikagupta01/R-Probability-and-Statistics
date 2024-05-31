#Poisson Distribution

#Q1. A car hire firm has two cars which it hires out day by day. The number 
#of demands of a car on each day is distributed as a poission distribution 
#with average number of cars demanded per day as 1.5. Calculate the proportion of 
#days on which neither car is used and the proportion of days on which some 
#demand is refused.

#Let X be a discrete random variable denoting number of cars demanded on a day
#Possible values of X: 0,1,2,...
#Given, average no. of cars demanded per day, u = 1.5
#To find P(X=0) and P(X>2)

u=1.5
x=0:2
p1=dpois(x,u)[1]
print(paste("P(neither car is used) = P(X=0) = ",p1))
p2=1-dpois(x,u)[1]-dpois(x,u)[2]-dpois(x,u)[3]
print(paste("P(some demand is refused) = P(X>2) = ",p2))


#Q2. If the probability of a bad reaction from medicine is 0.002, determine 
#the chance that out of 1000 persons more than 3 will suffer a bad reaction 
#from medicine.

#Let X be a random variable denoting number of people suffering a bad reaction
#X can have values: 0,1,2,3,...
#To find P(X>3),

n=1000
p=0.002
U=n*p
X=0:3
prob=1-(dpois(X,U)[1]+dpois(X,U)[2]+dpois(X,U)[3]+dpois(X,U)[4])
print(paste("P(X>3) = ",prob))


