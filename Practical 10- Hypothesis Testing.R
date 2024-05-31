#Q1. To test mean of data
#sample t-test and confidence intervals are parametric method appropriate 
#for examining a single numeric variable

attach(iris) #attach the iris dataset
summary(iris)

#(i) Sepal Length of flower is chosen here for mean to be tested
sl=Sepal.Length 

#draw the histogram to predict the mean sepal length
hist(sl,xlab="sepal length",main = "Histogram of sepal length") 

# we will test the null hypothesis that mean is 6 ,i.e.,
# Ho:mu=6
# one-sided confidence interval for mu
t.test(sl, mu=6, alt="greater", conf=0.95)

#A smaller p-value means that there is stronger evidence in favor of 
#the alternative hypothesis.

#There is 95% chance that the mean will lie between 5.731427 to infinity 

#p=0.9891 > 0.05, i.e., null hyp is not rejected. 
#Also, we can see here that exact value of mean is 5.84333 which is less than 6. 
#Thus greater p-value signifies lower evidence to support alternate hypothesis.

#testing for alternate hypothesis being that mean is less than 6
t.test(sl, mu=6, alt="less", conf=0.95)

#p=0.01093 < 0.05 
#There is 95% chance that the mean will lie between -infinity to 5.95524
#i.e., null hypothesis is rejected.

#Here, we know that exact value of mean is less than 6 which supports 
#alternate hypothesis

#two-tailed is by default 
#confidence interval can be changed 
#store it in an object
TEST_1=t.test(sl, mu=6,alt="greater", conf=0.95)
TEST_2=t.test(sl, mu=6,alt="less", conf=0.95)


#(ii) Petal Width of flower is chosen here for mean to be tested
pw=Petal.Width 

#draw the histogram to predict the mean petal width
hist(pw,xlab="petal width",main = "Histogram of petal width") 

# we will test the null hypothesis that mean is 1 ,i.e.,
# Ho:mu=1
# one-sided confidence interval for mu
t.test(pw, mu=1, alt="less", conf=0.90)

#Here, p=0.9992 > 0.05 
#There is 90% chance that the mean will lie between -infinity to 1.279448
#Thus, null hypothesis is rejected.

#testing for alternate hypothesis being that mean is greater than 1
t.test(pw, mu=1, alt="greater", conf=0.90)

#p=0.00083211 < 0.05, i.e., null hypothesis is not rejected. 
#There is 95% chance that the mean will lie between 1.119219 and infinity 

#Also, we can see here that exact value of mean is 1.199 > 1
#Thus lower p-value provides stronger evidence in favor of 
#the alternative hypothesis.



#Q2. To examine the difference in means of two populations
#we will explore the relationship between mean lung capacity of smokers and 
#non-smokers

data1=read.table(file.choose(), header=T) #reads the text file in system
attach(data1)
summary(data1)

#Take two variables for the test, 1st is the LungCap which is numeric variable, 
#2nd is Smoke which is categorical variable, “yes” means the individual is a 
#smoker and “no” means he/she is non-smoker

#examine the plot before conducting the test
boxplot(LungCap ~ Smoke,data1)

#test the hypothesis that mean lung capacity of smokers = non smokers
#Ho= mean lungcap of smokers = mean lungcap of non smokers 
#assume non equal variances

t.test(LungCap~Smoke,data1, mu=0, alt="two.sided", conf=0.95,
       var.equal=FALSE,paired=FALSE)

#Since p=0.0003927 < 0.05, null hypothesis is rejected, 
#i.e., average lung capacity of smokers and non-smokers is not equal


#check variance of two groups
var(data1$LungCap[data1$Smoke=="yes"]) 
var(data1$LungCap[data1$Smoke=="no"])





