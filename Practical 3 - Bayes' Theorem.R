#Q1
#There are two identical urns containing 4 white, 3 red balls and, 3 white, 7 red balls respectively. 
#An un is choosen at random and a ball is drawn from it. Find the probability that the ball is white. 
#If the ball drawn is white, what is the probability that it is drawn from the first urn?

library(LaplacesDemon)
PrA=c(1/2,1/2)
PrBA=c(4/7,3/10)
R1=BayesTheorem(PrA,PrBA)

prob_white=(PrA[1]*PrBA[1])+(PrA[2]*PrBA[2])
prob_first_white=R1[1]
prob_second_white=R1[2]

print(paste("P(ball is white) = ",prob_white))
print(paste("P(I urn | white ball) = ",prob_first_white))
print(paste("P(II urn | white ball) = ",prob_second_white))


#Q2
#What's the probability of going to hell conditional on consorting given that a person consort. 
#6 people consorted out of 9 who went to hell. 5 people consorted out of 7 who went to heaven. 
#75% of people go to hell. 25% of people go to heaven. 
#A is the event when person goes to heaven #B is the event when person goes to hell

PrX=c(3/4,1/4)
PrYX=c(2/3,5/7)
R2=BayesTheorem(PrX,PrYX)
prob_hell_consort=R2[1]
prob_heaven_consort=R2[2]

print(paste("P(hell | person consorts) = ",prob_hell_consort))
print(paste("P(heaven | person consorts) = ",prob_heaven_consort))


#Q3
#Suppose doctors are asked to report the no. of cases of small pox & chicken pox and 
#the symptoms are observed using the result of the survey. 
#We find the probability that a patient has spots given that they have 
#small pox or chicken pox is 20% and 80% respectively. 
#Public health statistic inform us that the small pox in general population is 0.001 and chicken pox is 0.01. 
#What's the probability of the patient having the small pox given that they have a spot on their face. 
#What's the probability of the patient having chicken pox & a spot on their face.

PrS=c(0.001,0.01)
PrTS=c(0.2,0.8)
R3=BayesTheorem(PrS,PrTS)
Prob_small_spot=R3[1]
Prob_chicken_spot=R3[2]

print(paste("P(small pox | spots) = ",Prob_small_spot))
print(paste("P(chicken pox | spots) = ",Prob_chicken_spot))





