sisters<-read.csv("/home/campus21/rjpena/Desktop/MA3740/Lab5/sisters.csv", header=T)
attach(sisters)
head(sisters)
diff = older - younger
diff
mean(diff)
sd(diff)
mean(older)
mean(younger)
sd(older)
sd(younger)
t.test(older,younger,alternative = "two.sided", mu = 0, paired=T, conf.level = .95)
t.test(diff,alternative = "two.sided", mu = 0, conf.level = .95)
qqnorm(diff)
