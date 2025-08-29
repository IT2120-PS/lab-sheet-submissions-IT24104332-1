getwd()
setwd("C:\\Users\\rayon\\OneDrive\\Desktop\\IT24104332 Lab 05 PS")

---01
#importing the data set  and store in a data frame called Delivery_Times
Delivery_Times<- read.table("Exercise - Lab 05.txt",header=TRUE,sep= ",")
fix(Delivery_Times)

---02
#drawing a histogram with right open intervals 
names(Delivery_Times)<-c("X1")
attach(Delivery_Times)
attach(Delivery_Times)
hist(X1,main="Histogram for Delivery Times")

histogram<- hist(X1,main="Histogram for Delivery Times",breaks = seq(20,70,length = 10),right = FALSE)
?hist

---03
#This Histogram is symmetric and uni model. 
#This shape is a bell-shaped(normal-like) curve. 
#There is no strong skewness.

---04
#Assign class limits 
breaks<- round(histogram$breaks)

#Assign class frequencies 
freq <- histogram$counts

#Assign midpoints 
mids <- histogram$mids

#using "cumsum" command to get cumulative frequencies
cum.freq <- cumsum(freq)

#creating a null variable called new
new<- c()

#Using "for" loop to store cumulative frequencies 
for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}

#Draw cumulative frequncey polygon in a new plot
plot(mids,cum.freq, type = 'o', main = "Cumalative Frequency Polygon for Delivery Times", xlab = "Delivery Times", ylab = "Cumalative Frequency")

