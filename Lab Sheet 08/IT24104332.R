#Setting the directory 
setwd("C:\\Users\\it24104332\\Desktop\\Lab 08 PS")

#Importing the data set 
data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

#Q1
#Commands "mean" & "var" will compute the mean and variance for data
popmn<-mean(Weight.kg.)
popmn

popvar<-var(Weight.kg.)
popvar

sd <- sqrt(popvar)
sd

#Q2
samples<-c()
n<-c

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)<- n 
samples

s.means <- apply(samples,2,mean)
s.means

s.vars<- apply(samples,2,var)
s.vars

#standard Deviation 
# standard deviations for each sample (column)
s.sds <- apply(samples, 2, sd)
s.sds




#Q3
samplemean<-mean(s.means)
samplemean

samplevar<-var(s.means)
samplevar

samplesd<-sqrt(samplevar)
samplesd

#True mean 
popmn<-mean(Weight.kg.)
popmn

#True Standard Deviation 
sd <- sqrt(popvar)
sd

#The results show that the true mean (2.468) is much larger than the spread of the data (SD=0.2561069), 
#meaning the values are tightly clustered around the mean.
