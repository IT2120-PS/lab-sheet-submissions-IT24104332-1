getwd()

##Exercise
##Question 01
#Uniform Distribution
#Here, random variable X follows a uniform distribution with a = 0 and b = 40.
#P(10<x<25) = P(x<=25) - P(x<=10)
punif(25,min = 0, max = 40, lower.tail = TRUE) - punif(10,min = 0, max = 40,lower.tail = TRUE)


##Question 02
#X has an exponential distribution 
#P(X<=2)
pexp(2,rate = 0.33,lower.tail = TRUE)

##Question 03
#Part 01
#Normal Distribution 
#P(X>=130) = 1-P(X<130)
1 - pnorm(130, mean = 100, sd=15,lower.tail = TRUE)

#Part 02
#b=0.95
#P(x<b)
qnorm(0.95,mean = 100,sd = 15,lower.tail = TRUE)




