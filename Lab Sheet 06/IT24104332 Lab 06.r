getwd()

##Exercise
##Question 01
#Part 1
#Binomial Distribution 
#Here, random variable X has binomial distribution with n=50 and p=0.85

#Part 2
#p(x>=47) = p(x>46)
1- pbinom(46,50,0.85,lower.tail = TRUE)
#p(x>=47) = 1- p(x<47) = 1- p(x<=46)
pbinom(46,50,0.85,lower.tail = FALSE)

##Question 02
#Part 1
#Number of phone calls received on a given hour

#Part 2
#Poisson Distribution
#Here, random variable X has poisson distribution with lambda=12

#Part 3
#It asks to find P (X=15). 
dpois(15,12)
