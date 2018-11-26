#Question 1
data<-read.csv('/home/campus21/rjpena/Desktop/MA3740/Project2/egg.csv',header=T)
cor(data)

#all predictors
model<-lm((data$egg~data$age+data$weight+data$water+data$feed+data$time))
#shows weight,water,feed as significant
#88.56 multiple r^2, 2.024rse
summary(model)

#-age,time
model2<-lm((data$egg~data$weight+data$water+data$feed))
#88.19 mr2, 1.993 rse
summary(model2)

#-age
model3<-lm((data$egg~data$weight+data$water+data$feed+data$time))
#88.47 mr2, 2.008rse
summary(model3)

#-time
model4<-lm((data$egg~data$age+data$weight+data$water+data$feed))
#88.29mr2, 2.023rse
summary(model4)

x1<-70
x2<-1800
x3<-0.80
x4<-110
x5<-15

y_hat<-(0.012321*x1+.023436*x2+14.630295*x3+0.139536*x4+0.171311*x5-14.006517)
#58.663614
y_hat


#Question 2
white = c(4, 5, 6, 7, 7, 9)
red = c(5, 5, 6, 7, 7, 8, 10)
