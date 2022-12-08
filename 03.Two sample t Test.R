# Condacting the independent 2-sample t-test and confidence interval 

#This are parametric method approprite for examining the difference in mens for 2 populations
# There are two ways of examining the relationship bet^n a numeric outcome variable(y)& a categorical explanatory variable(x,with 2 levels)



setwd("F:/R/Statistics")

x=read.csv("LungCapData.csv")
View(x)
names(x)
class(x$LungCap)

class(x$Smoke)

levels(x$Smoke)
summary(x)

levels(x$Smoke)

help("t.test")

boxplot(x$LungCap~x$Smoke)

#Ho: mean lung cap of smokers = of non smokers
# two-sided test
# assume non-equal variances

t.test(x$LungCap~x$Smoke,mu=0,alt="two.sided",cof=0.95,var.eq=F,paired=F)


t.test(x$LungCap[x$Smoke=="no"],x$LungCap[x$Smoke=="yes"])

t.test(x$LungCap~x$Smoke,mu=0,alt="two.sided",cof=0.95,var.eq=TRUE,paired=F)


var(x$LungCap[x$Smoke=="yes"])
var(x$LungCap[x$Smoke=="no"])

#Levene's test
install.packages("car")
library(car)
leveneTest(x$LungCap~x$Smoke)

