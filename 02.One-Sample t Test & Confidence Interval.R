# The one-sample t-test and confidence interval are parametric methods approprote for examing a single numeric variable..


setwd("F:/R/Statistics")
x=read.csv("LungCapData.csv")


help(t.test)

class(x$LungCap)

boxplot(x$LungCap)

#Ho=mu<8
# one sided 95% confidence interval for mu

t.test(x$LungCap,mu=8,alternative = "less",cof.lavel=0.95)

#Two sided

t.test(x$LungCap,mu=8,alt= "two.sided",cof.lavel=0.95)

Or
t.test(x$LungCap,mu=8,cof.lavel=0.95)


TEST=t.test(x$LungCap,mu=8,alt= "two.sided",cof.lavel=0.95)

TEST
attributes(TEST)

TEST$conf.int

TEST$parameter
