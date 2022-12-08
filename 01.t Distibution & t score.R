# Finding probability and percentiles for t-distribution using r
#find p-values or critical values for constructing confidence intervals for statistics that follow a t-sistribution

## t follow a t-sistribution,with mean=0,st dev=1 & 25 degree of freedom

help(pt)

or
?pt

#t-stat=2.3,df=25
#One sided pvalue
#p(t>2.3)

pt(q=2.3,df=25,lower.tail = F)

# two sided t value 
pt(q=2.3,df=25,lower.tail = F)+pt(q=-2.3,df=25,lower.tail = T)

or
pt(q=2.3,df=25,lower.tail = F)*2


# find t for 95% confidence
#value of t with 2.5% in each tail

qt(p=0.025,df=25,lower.tail = T)


###########

help(pf)
help(pexp)
