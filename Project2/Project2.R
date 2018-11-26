#Question 1
data<-read.csv('/home/campus21/rjpena/Desktop/MA3740/Project2/egg.csv',header=T)
cor(data)

#Part A
model<-lm((data$egg~data$age+data$weight+data$water+data$feed+data$time))
#shows weight,water,feed as significant

summary(model)#88.56 multiple r^2, 2.024rse


#Part B
#-age,time
model2<-lm((data$egg~data$weight+data$water+data$feed))
summary(model2)#88.19 mr2, 1.993 rse

#-age
model3<-lm((data$egg~data$weight+data$water+data$feed+data$time))
summary(model3)#88.47 mr2, 2.008rse

#-time
model4<-lm((data$egg~data$age+data$weight+data$water+data$feed))
summary(model4)#88.29mr2, 2.023rse


#PartC
x1<-70
x2<-1800
x3<-0.80
x4<-110
x5<-15
y_hat<-(0.012321*x1+.023436*x2+14.630295*x3+0.139536*x4+0.171311*x5-14.006517)
y_hat#58.663614


#Question 2
white = c(4, 5, 6, 7, 7, 9)
red = c(5, 5, 6, 7, 7, 8, 10)
