#Joint, Marginal, Conditional Probability and CDF

#Create a joint probability table and use it to compute marginal and 
#conditional probabilities

#P(X=0,Y=1) = 1/3
#P(X=1,Y=1) = 1/3
#P(X=-1,Y=1) = 1/3

#we have two random variables X and Y with respective sample spaces 
#X={-1,0,1} and Y={-1,0,1}


#JOINT PROBABILITY

#The joint probability table for these random variables is given by,

P=matrix(c(0,0,0,0,0,1/3,1/3,0,1/3),ncol = 3)
rownames(P)=c("X=-1","X=0","X=1")
colnames(P)=c("Y=-1","Y=0","Y=1")
P

#To display P(X=-1,Y=1), we will display element stored in the 
#1st row and 3rd column of p, i.e.,

print(paste("P(-1,1)= ",P[1,3]))


#MARGINAL PROBABILITY

#Marginal probability of X at x is given by
#P(X=x) = P(X=x,Y=-1) + P(X=x,Y=0) + P(X=x,Y=1)
Px=apply(P,1,sum)
Px

#Marginal probability of Y at y is given by
#P(Y=y) = P(X=-1,Y=y) + P(X=0,Y=y) + P(X=1,Y=y)
Py=apply(P,2,sum)
Py


#CONDITIONAL PROBABILITY

#Compute the conditional probability P(X=-1|Y=1) and display it.
P_xy=P[1,3]/Py[3]
print(paste("P(X=-1|Y=1)= ",P_xy))


#CUMMULATIVE DISTRIBUTION FUNCTION

#Find the CDF of X
CDF_x=cumsum(Px)
CDF_x

#Find the CDF of Y
CDF_y=cumsum(Py)
CDF_y

