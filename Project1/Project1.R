chocolate <-read.csv("/home/campus21/rjpena/Desktop/MA3740/Project1/chip.csv", header=F)
attach(chocolate)
names(chocolate) <- c("money", "age","hear","gift")
head(chocolate)
str(chocolate)
summary(chocolate)

# Number 2
#freq table
hear_table <- table(hear)
hear_table
#pie chart
lbls <- paste(names(hear_table), "\n", hear_table, sep="")
pie(hear_table, labels = lbls, main="Pie Chart of Hear")
#bar chart
plot(hear, data=chocolate,main="Bar Chart of Hear")

# Number 3
plot(money~hear, data=chocolate)
aggregate(money~hear, data=chocolate, summary)

# Number 4 
ageGroup=function(x)
{
if (between(x,0,28))  {result="Group 1"} else
if (between(x,29,34))  {result="Group 2"} else  
if (between(x,35,41))  {result="Group 3"} else
if (between(x,42,100))  {result="Group 4"} else
result="Invalid Age"
return(result)
}