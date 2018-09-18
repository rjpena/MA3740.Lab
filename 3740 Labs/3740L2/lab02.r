chem101=read.csv("https://raw.githubusercontent.com/rjpena/MA3740.Lab/master/3740%20Labs/3740L2/chem101.csv", header=TRUE)
attach(chem101)
head(chem101)
tail(chem101)
percent=25*(hw/550)+35*(midterm/100)+40*(final/100)
chem101=cbind(chem101,percent)
grade=function(x)
{
  if(x>=90) {result="A"} else
  if(x>=80) {result="B"} else
  if(x>=70) {result="C"} else
  if(x>=60) {result="D"} else
  result= "F"
  return(result)
}
coursegrade=sapply(percent,grade)
chem101=cbind(chem101,coursegrade)
head(chem101)

yes_review<-sum(review=="yes")
no_review<-sum(review=="no")
#How many students are freshman who attended review and earned an A
freshYes=subset(yes_review,class=="fresh" & coursegrade=="A")
#not freshman, midterm>70, evening sections
eveningUppers=subset(chem101, class !="fresh" & midterm>70 & time=="evening")
#evening or final exam < 80
evFe=subset(chem101, time=="evening"| final<80)
