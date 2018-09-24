wweights = rnorm(1000,20,1.6)
mean(wweights)
sd(wweights)
sum(wweights>21.92)
1-pnorm(3,0,1)
1/(1-pnorm(3,0,1))
k=1/1000000
dof=10
dof=7
file="/home/campus21/rjpena/Desktop/MA3740/Lab3/watermelons.csv"
data=read.csv(file, header=T)
attach(data)
head(data)
summary(data)
sd(data)
data
str(data)
sd(data$seeds)
mean(data$seeds)
data=data$seeds
mean(data)
CI.sigma.unknown=function(data,confidence)
{
  xbar=mean(data)
  n=length(data)
  alphaover2=((100-confidence)/100)/2
  t=qt(1-alphaover2,n-1)
  lower=xbar-t*sd(data)/sqrt(n)
  upper=xbar+t*sd(data)/sqrt(n)
  cat(confidence,"% CI for mu", "\n")
  cat("(",lower,",",upper,")","\n")
}
CI.sigma.unknown(data,95)
qqnorm(data)
length(data)
