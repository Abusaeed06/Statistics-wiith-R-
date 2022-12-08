setwd("F:/R/Statistics/Statistics in R/Data file")
x=read.csv("LungCapData.csv")
levels(x$Smoke)

TAB=table(x$Gender,x$Smoke)
TAB
barplot(TAB,beside = T,legend=T)

chisq.test(TAB,correct = T)

CHI=chisq.test(TAB,correct = T)
CHI
attributes(CHI)

CHI$p.value

#######
#fisher test

fisher.test(TAB,conf.int = T,conf.level = 0.99)
